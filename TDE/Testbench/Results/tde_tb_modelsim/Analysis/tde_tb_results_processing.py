#
# Daniel Gutierrez-Galan
#

import csv
import matplotlib.pyplot as plt
import math
import enum

"""
class TDE_results_datafiles_order(enum.Enum):
    input_faci_spikes = 0
    input_trig_spikes = 1
    faci_timer = 2
    faci_timer_weighted = 3
    trigg_timer = 4
    trigg_timer_weighted = 5
    sgen_val = 6
    sgen_clkdiv = 7
    output_spikes = 8
"""

original_file_names = []
preproc_file_names = []

# Set the file names to be opened
# NOTE: order is important!

original_file_names.append("input_faci_spikes.txt") # 0
original_file_names.append("input_trig_spikes.txt") # 1

original_file_names.append("faci_timer.txt") # 2
original_file_names.append("faci_timer_weighted.txt") # 3

original_file_names.append("trigg_timer.txt") # 4
original_file_names.append("trigg_timer_weighted.txt") # 5

#original_file_names.append("sgen_val.txt") 
original_file_names.append("sgen_clkdiv.txt") # 6

original_file_names.append("output_spikes.txt") # 7



# For each file
number_of_files = len(original_file_names)
for file_index in range(number_of_files):

    # Open the source file
    input_file_handler = open(original_file_names[file_index], "r")
    # Open the output file
    new_file_name = original_file_names[file_index].replace('.txt', '_preprocessed.csv')
    preproc_file_names.append(new_file_name)
    output_file_handler = open(new_file_name, "w")

    # Read all the lines
    for file_line in input_file_handler:

        # Split the content
        line_fields = file_line.split(";")
        # And remove the word "ps" from the timestamp
        line_fields[1] = line_fields[1].replace(' ps', '')

        # Then, save each line as a integer pair
        output_file_handler.write(line_fields[0] + ";" + line_fields[1])

    input_file_handler.close()
    output_file_handler.close()

# Set the time scale transformation
ps_to_us_factor = 1000000.0

# Once all the files have been preprocessed, open all the csv files
all_values = []
all_timestamps = []

for file_index in range(number_of_files):
    timestamps = []
    values = []
    with open(preproc_file_names[file_index]) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=';')
        for row in csv_reader:
            if(preproc_file_names[file_index].find("spikes") != -1):
                values.append(1.0)
            else:
                values.append(float(row[0]))

            timestamps.append(float(row[1])/ps_to_us_factor)

        all_values.append(values)
        all_timestamps.append(timestamps)

def plotTDEresults(input_spikes_faci_timestamps, input_spikes_faci_values, \
                    input_spikes_trig_timestamps, input_spikes_trig_values, \
                    faci_timer_timestamps, faci_timer_values, \
                    trig_timer_timestamps, trig_timer_values, \
                    sgen_clkdiv_timestamps, sgen_clkdiv_values, \
                    output_spikes_timestamps, output_spikes_values):

    fig, (ax1, ax2, ax3, ax4, ax5) = plt.subplots(5,1, sharex=True)

    fig.suptitle('TDE results')

    # Plotting the facilitatory and trigger spikes
    ax1.plot(input_spikes_faci_timestamps, input_spikes_faci_values, 'ro', input_spikes_trig_timestamps, input_spikes_trig_values, 'bo')
    # Plotting the facilitatory timer value
    ax2.plot(faci_timer_timestamps, faci_timer_values, 'r')
    # Plotting the trigger timer value
    ax3.plot(trig_timer_timestamps, trig_timer_values, 'b')
    # Plotting the spikes generator clock frequency divider
    ax4.plot(sgen_clkdiv_timestamps, sgen_clkdiv_values)
    # Plotting the output spikes
    ax5.plot(output_spikes_timestamps, output_spikes_values, '|')

    plt.show()

    fig.savefig('tde_results.png')

plotTDEresults(all_timestamps[0], all_values[0], \
                all_timestamps[1], all_values[1], \
                all_timestamps[2], all_values[2], \
                all_timestamps[4], all_values[4], \
                all_timestamps[6], all_values[6], \
                all_timestamps[7], all_values[7])

def plotInterSpikeInterval(output_spikes_timestamps):
    # ISI values for each spike pair
    ISI_values = []
    # Index of each spike pear
    ISI_indexs = []

    num_timestamps = len(output_spikes_timestamps)
    for ts_index in range(1, num_timestamps - 1):
        timestamp_t0 = output_spikes_timestamps[ts_index-1]
        timestamp_t1 = output_spikes_timestamps[ts_index]

        isi_val = timestamp_t1 - timestamp_t0
        
        ISI_values.append(isi_val)
        ISI_indexs.append(1.0)

    fig, ax = plt.subplots()

    #ax.plot(ISI_indexs, ISI_values)
    ax.plot(ISI_values, 'b*-')
    ax.set(xlabel='spike pairs', ylabel='time (us)', title='Inter-Spike Interval')
    ax.grid()

    plt.show()

    fig.savefig('tde_isi.png')

plotInterSpikeInterval(all_timestamps[7])

def  plotNumOutputSpikesPerMicrosecond(output_spikes_timestamps):
    # Spikes counter for each microsecond
    num_spikes_foreach_us = []

    # Get the ceil of the maximum timestamp
    # This will set the number of time windows
    max_timestamp = max(output_spikes_timestamps)
    max_timestamp_ceil = math.ceil(max_timestamp)

    # Set all the counters to 0
    for us_index in range(int(max_timestamp_ceil)):
        num_spikes_foreach_us.append(0)

    # Check all the timestamps values and accumulate
    # the timestamps for each microsecond
    num_timestamps = len(output_spikes_timestamps)
    for ts_index in range(num_timestamps):
        ts_value = output_spikes_timestamps[ts_index]
        ts_value_floor = math.floor(ts_value)
        num_spikes_foreach_us[int(ts_value_floor)] += 1

    fig, ax = plt.subplots()

    #ax.plot(ISI_indexs, ISI_values)
    ax.plot(num_spikes_foreach_us, 'b*-')
    ax.set(xlabel='time (us)', ylabel='# spikes', title='Number of spikes per microsecond')
    ax.grid()

    plt.show()

    fig.savefig('tde_num_spikes_per_us.png')

plotNumOutputSpikesPerMicrosecond(all_timestamps[7])