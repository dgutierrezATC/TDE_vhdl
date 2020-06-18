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

	for index in range(len(reference_list)):
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

behavioral_simulation_results_filename = 'results_behavioral_simulation2.txt'
postsynthe_simulation_results_filename = 'results_postsyn_simulation.txt'
postimplem_simulation_results_filename = 'results_postimplem_simulation.txt'

ts_behavioral_simulation = read_simulation_results_file(behavioral_simulation_results_filename,',')
ts_postsynthe_simulation = read_simulation_results_file(postsynthe_simulation_results_filename,',')
ts_postimplem_simulation = read_simulation_results_file(postimplem_simulation_results_filename,',')

l1, = plt.plot(ts_behavioral_simulation, 'b')
l2, = plt.plot(ts_postsynthe_simulation, 'r')
l3, = plt.plot(ts_postimplem_simulation, 'g')
plt.legend(['Behav', 'Post-synt', 'Post-impl'])
plt.show()

ts_differences_behav_postsyn = diff_between_two_numeric_lists(ts_behavioral_simulation, ts_postsynthe_simulation)
ts_differences_behav_postimpl = diff_between_two_numeric_lists(ts_behavioral_simulation, ts_postimplem_simulation)

l1, = plt.plot(ts_differences_behav_postsyn, 'b')
l2, = plt.plot(ts_differences_behav_postimpl, 'r')
plt.legend(['Post-synt', 'Post-impl'])
plt.show()


aedat_results_filename = 'test_tde_delta_t_10ms.csv'

aedat_ts = read_aedats_results_file(aedat_results_filename, ';')

plt.plot(aedat_ts, 'r')
plt.show()

oscilloscope_results_filename = 'TEK0011.csv'

osci_ts, osci_val = read_oscilloscope_results_file(oscilloscope_results_filename, ',')

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
plt.show()

plt.plot(osci_val_peaks_ts, 'r')
plt.show()

# Creates a list containing 5 lists, each of 8 items, all set to 0
w, h = 8, 5;
isi_values = [[0 for x in range(w)] for y in range(h)] 

isi_values[0] = calcula_inter_spike_interval(ts_behavioral_simulation)
isi_values[1] = calcula_inter_spike_interval(ts_postsynthe_simulation)
isi_values[2] = calcula_inter_spike_interval(ts_postimplem_simulation)
isi_values[3] = calcula_inter_spike_interval(aedat_ts)
isi_values[4] = calcula_inter_spike_interval(osci_val_peaks_ts)

l1, = plt.plot(isi_values[0], '.-b')
l2, = plt.plot(isi_values[1], 'o-r')
l3, = plt.plot(isi_values[2], '*-g')
l4, = plt.plot(isi_values[3], 'v-y')
l5, = plt.plot(isi_values[4], '+-k')
plt.legend(['Behav', 'Synt', 'Impl', 'Aedat', 'Oscill'])
plt.show()

"""
for index in range(len(ts)-1):
	time_dif = ts[index + 1] - ts[index]
	if(time_dif <= time_dif_th):
		event_counter = event_counter + 1
	else:
		event_counter_list.append(event_counter)
		event_counter = 0
		
print("Peaks detected: " + str(len(event_counter_list)))
print("Max value: " + str(numpy.max(event_counter_list)))
print("Min value: " + str(numpy.min(event_counter_list)))
print("Mean value: " + str(numpy.mean(event_counter_list)))
"""