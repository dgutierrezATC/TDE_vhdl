import csv
import math
import numpy
import matplotlib.pyplot as plt

def read_simulation_results_file(file_name, data_delimiter):
	ts_list = []
	with open(file_name) as csv_file:
		csv_reader = csv.reader(csv_file, delimiter=data_delimiter)
		line_count = 0
		for row in csv_reader:
			ts_raw = row[1]
			ts_raw = ts_raw.replace(' ps', '')
			conversion_to_us_factor = 1000000.0
			ts_ps = float(ts_raw)
			ts_us = ts_ps / conversion_to_us_factor
			ts_list.append(ts_us)
			line_count = line_count + 1
	return ts_list

def read_aedats_results_file(file_name, data_delimiter):
	ts_list = []
	with open(file_name) as csv_file:
		csv_reader = csv.reader(csv_file, delimiter=data_delimiter)
		line_count = 0
		for row in csv_reader:
			if line_count > 0:
				ts_raw = row[0]
				ts_us = float(ts_raw)
				#if(ts_us > 0.0):
				ts_list.append(ts_us)
			line_count = line_count + 1
	return ts_list

def read_oscilloscope_results_file(file_name, data_delimiter):
	ts_list = []
	val_list = []
	with open(file_name) as csv_file:
		csv_reader = csv.reader(csv_file, delimiter=data_delimiter)
		line_count = 0
		for row in csv_reader:
			if line_count < 2:
				line_count = line_count + 1
			else:
				ts_raw = row[0]
				ts_sec = float(ts_raw)
				ts_us = ts_sec * 1000000.0
				ts_list.append(ts_us)
				val_raw = row[1]
				val_volt = float(val_raw)
				val_list.append(val_volt)
				line_count = line_count + 1
	return (ts_list, val_list)

def diff_between_two_numeric_lists(reference_list, second_list):
	differences = []

	len_reference = len(reference_list)
	len_second = len(second_list)

	min_len = min(len_reference, len_second)

	for index in range(min_len):
		diff = reference_list[index] - second_list[index]
		differences.append(diff)
	return differences
	
def calcula_inter_spike_interval(timestamps):
	num_ts = len(timestamps)
	ts_0 = 0.0
	ts_1 = 0.0
	isi_values = []
	for index in range(num_ts - 1):
		ts_1 = timestamps[index+1]
		ts_0 = timestamps[index]
		isi_val = ts_1 - ts_0
		isi_values.append(isi_val)
	return isi_values

test_folder_path = 'test_0000\\'

behavioral_simulation_results_filename = 'behavioral.txt'
postsynthe_simulation_results_filename = 'postsynth.txt'
postimplem_simulation_results_filename = 'postimpl.txt'

ts_behavioral_simulation = read_simulation_results_file(test_folder_path + behavioral_simulation_results_filename,',')
ts_postsynthe_simulation = read_simulation_results_file(test_folder_path + postsynthe_simulation_results_filename,',')
ts_postimplem_simulation = read_simulation_results_file(test_folder_path + postimplem_simulation_results_filename,',')

l1, = plt.plot(ts_behavioral_simulation, '*-b')
l2, = plt.plot(ts_postsynthe_simulation, 'o-r')
l3, = plt.plot(ts_postimplem_simulation, '+-g')
plt.legend(['Behav', 'Post-synt', 'Post-impl'])
plt.title('Output spikes timestamps from simulation')
plt.show()

ts_differences_behav_postsyn = diff_between_two_numeric_lists(ts_behavioral_simulation, ts_postsynthe_simulation)
ts_differences_behav_postimpl = diff_between_two_numeric_lists(ts_behavioral_simulation, ts_postimplem_simulation)

l1, = plt.plot(ts_differences_behav_postsyn, '*-b')
l2, = plt.plot(ts_differences_behav_postimpl, '+-r')
plt.legend(['Post-synt', 'Post-impl'])
plt.title('Output spikes timestamps difference to Behavioral')
plt.show()


aedat_results_filename = 'aedat.csv'

aedat_ts = read_aedats_results_file(test_folder_path + aedat_results_filename, ';')

plt.plot(aedat_ts, '.-r')
plt.title('Output spikes timestamps from AEDAT')
plt.show()

ts_differences_behav_aedat = diff_between_two_numeric_lists(ts_behavioral_simulation, aedat_ts)

oscilloscope_results_filename = 'oscilloscope.csv'

osci_ts, osci_val = read_oscilloscope_results_file(test_folder_path + oscilloscope_results_filename, ',')

osci_val_peaks = []
osci_val_peaks_ts = []
osci_val_peak_th = 2.0

last_val = 0.0
curr_val = 0.0
for index in range(len(osci_val)):
	curr_val = osci_val[index]
	val_dif = curr_val - last_val
	if((val_dif < 0.0) and (last_val >= osci_val_peak_th)):
		osci_val_peaks.append(osci_val[index-1])
		osci_val_peaks_ts.append(osci_ts[index-1])
	last_val = curr_val

plt.plot(osci_ts, osci_val, '.-r', osci_val_peaks_ts, osci_val_peaks, '*g')
plt.legend(['Raw data', 'Peaks: ' + str(len(osci_val_peaks))])
plt.title('Data collected from the oscilloscope')
plt.show()

plt.plot(osci_val_peaks_ts, '*-r')
plt.title('Output spikes detected from oscilloscope data')
plt.show()

ts_differences_behav_oscilloscope = diff_between_two_numeric_lists(ts_behavioral_simulation, osci_ts)

# Creates a list containing 5 lists, each of 8 items, all set to 0
w, h = 8, 5
isi_values = [[0 for x in range(w)] for y in range(h)] 

isi_values[0] = calcula_inter_spike_interval(ts_behavioral_simulation)
isi_values[1] = calcula_inter_spike_interval(ts_postsynthe_simulation)
isi_values[2] = calcula_inter_spike_interval(ts_postimplem_simulation)
isi_values[3] = calcula_inter_spike_interval(aedat_ts)
isi_values[4] = calcula_inter_spike_interval(osci_val_peaks_ts)

# Let's calculate the Pearson correlation value
correlation_behav_postsyn = numpy.corrcoef(ts_behavioral_simulation, ts_postsynthe_simulation)
print("Correl. behav-postyn: " + str(correlation_behav_postsyn))
correlation_behav_postsyn = correlation_behav_postsyn[0][1]

correlation_behav_postimpl = numpy.corrcoef(ts_behavioral_simulation,ts_postimplem_simulation)
print("Correl. behav-postimpl: " + str(correlation_behav_postimpl))
correlation_behav_postimpl = correlation_behav_postimpl[0][1]

correlation_behav_aedat = numpy.corrcoef(ts_behavioral_simulation,aedat_ts)
print("Correl. behav-aedat: " + str(correlation_behav_aedat))
correlation_behav_aedat = correlation_behav_aedat[0][1]

correlation_behav_oscilloscope = numpy.corrcoef(ts_behavioral_simulation[0:len(osci_val_peaks_ts)],osci_val_peaks_ts)
print("Correl. behav-oscillo: " + str(correlation_behav_oscilloscope))
correlation_behav_oscilloscope = correlation_behav_oscilloscope[0][1]

# Plot!
"""l1, = plt.plot(isi_values[0], '.-b')
l2, = plt.plot(isi_values[1], 'o-r')
l3, = plt.plot(isi_values[2], '*-g')
l4, = plt.plot(isi_values[3], 'v-y')
l5, = plt.plot(isi_values[4], '+-k')
#plt.legend(['Behavioral: reference', 'Post-synthesis: r = '+ '%.6f' %correlation_behav_postsyn, 'Post-implementation: r = '+ '%.6f' %correlation_behav_postimpl, 'AER events: r = '+ '%.6f' %correlation_behav_aedat, 'Oscilloscope: r = '+ '%.6f' %correlation_behav_oscilloscope], title='Measurement source')
lg1 = plt.legend(['Behavioral', 'Post-synthesis', 'Post-implementation', 'AER events', 'Oscilloscope'], title='Measurement source')
lg2 = plt.legend(['kk', 'Post-synthesis', 'Post-implementation', 'AER events', 'Oscilloscope'], title='Measurement source')
plt.title('Interspike Interval measurements for FPGA implementation')
####################
plt.text(0.0, 150.0, "Mat\nTTp\n123", size=18,
         va="baseline", ha="right", multialignment="left",
         bbox=dict(fc="none"))
plt.text(-0.1, 8, 'boxed italics text in data coords', style='italic',
        bbox={'facecolor': 'red', 'alpha': 0.5, 'pad': 10})
####################
plt.xlabel('Output spike pair n')
plt.ylabel(r'Interspike interval ($\mu$s)')
plt.savefig("isi_comparison.png")
plt.show()"""

fig = plt.figure()
ax = fig.add_subplot(111)
l1, = ax.plot(isi_values[0], '.-b')
l2, = ax.plot(isi_values[1], 'o-r')
l3, = ax.plot(isi_values[2], '*-g')
l4, = ax.plot(isi_values[3], 'v-y')
l5, = ax.plot(isi_values[4], '+-k')
#plt.legend(['Behavioral: reference', 'Post-synthesis: r = '+ '%.6f' %correlation_behav_postsyn, 'Post-implementation: r = '+ '%.6f' %correlation_behav_postimpl, 'AER events: r = '+ '%.6f' %correlation_behav_aedat, 'Oscilloscope: r = '+ '%.6f' %correlation_behav_oscilloscope], title='Measurement source')
lg1 = ax.legend(['Behavioral', 'Post-synthesis', 'Post-implem.', 'AER events', 'Oscilloscope'], title='Measurement source', fancybox=True, shadow=True)
lg2 = ax.legend(['reference', 'r = 1.0', 'r = 1.0', 'r = 0.99', 'r = 0.99'], title='Pearson correlation', frameon=False, loc='center left', bbox_to_anchor=(0.0,0.45))
plt.title('Interspike Interval measurements for FPGA implementation')
plt.xlabel('Output spike pair n')
plt.ylabel(r'Interspike interval ($\mu$s)')
ax.add_artist(lg1)
lg1._legend_box.align = "left"
lg2._legend_box.align = "left"
plt.savefig("Fig_TDE_FPGA_implementation_measures.pdf")
plt.show()