__author__ = "Daniel Gutierrez-Galan"
__copyright__ = "Copyright 2020, TDE Project"
__credits__ = ["University of Seville", "Bielefeld University"]
__license__ = "GPL"
__version__ = "1.0.0"
__maintainer__ = "Daniel Gutierrez-Galan"
__email__ = "dgutierrez@atc.us.es"
__status__ = "Development"

#---------------------------------------
# File name: tde_results_processing.py
# Author: Daniel Gutierrez-Galan
# Date created: 27/01/2020
# Date last modified: 04/02/2020
# Python Version: 2.7
#---------------------------------------

#
# Imports
#
import sys
import csv
import matplotlib.pyplot as plt
import math
import enum
import numpy as np
import random

#
# Setting paths and filenames
#

# NOTE: check this path before running this script 
source_files_absolute_path = "D:\\Universidad\\Repositorios\\GitHub\\Doctorado\\TDE_vhdl\\TDE\\Testbench\\Results\\Files\\"

#source_files_absolute_path = "..\\Files\\"

facilitatory_input_spikes_filename = source_files_absolute_path + "input_faci_spikes.txt"

facilitatory_timer_filename = source_files_absolute_path + "faci_timer.txt"
facilitatory_timer_weighted_filename = source_files_absolute_path + "faci_timer_weighted.txt"

trigger_input_spikes_filename = source_files_absolute_path + "input_trig_spikes.txt"

trigger_timer_filename = source_files_absolute_path + "trigg_timer.txt"
trigger_timer_weighted_filename = source_files_absolute_path + "trigg_timer_weighted.txt"

spikes_gen_val2gen_filename = source_files_absolute_path + "sgen_val.txt"
spikes_gen_clkdiv_filename = source_files_absolute_path + "sgen_clkdiv.txt"

tde_output_spikes_filename = source_files_absolute_path + "output_spikes.txt"

tde_output_spikes_delta_t_filename = source_files_absolute_path + "output_spikes_delta_t.txt"

tde_output_spikes_delta_t_case_0_filename = source_files_absolute_path + "output_spikes_delta_t_case_0.txt"
tde_output_spikes_delta_t_case_1_filename = source_files_absolute_path + "output_spikes_delta_t_case_1.txt"
tde_output_spikes_delta_t_case_2_filename = source_files_absolute_path + "output_spikes_delta_t_case_2.txt"
tde_output_spikes_delta_t_case_3_filename = source_files_absolute_path + "output_spikes_delta_t_case_3.txt"
tde_output_spikes_delta_t_case_4_filename = source_files_absolute_path + "output_spikes_delta_t_case_4.txt"
tde_output_spikes_delta_t_case_5_filename = source_files_absolute_path + "output_spikes_delta_t_case_5.txt"
tde_output_spikes_delta_t_case_6_filename = source_files_absolute_path + "output_spikes_delta_t_case_6.txt"

#
# Main arrays!
#

original_file_names = []
preproc_file_names = []

#
# Append the file names to be opened
# NOTE: order is important!
#

original_file_names.append(facilitatory_input_spikes_filename) # 0

original_file_names.append(facilitatory_timer_filename) # 1
original_file_names.append(facilitatory_timer_weighted_filename) # 2

original_file_names.append(trigger_input_spikes_filename) # 3

original_file_names.append(trigger_timer_filename) # 4
original_file_names.append(trigger_timer_weighted_filename) # 5

original_file_names.append(spikes_gen_val2gen_filename) # 6
original_file_names.append(spikes_gen_clkdiv_filename) # 7

original_file_names.append(tde_output_spikes_filename) # 8

original_file_names.append(tde_output_spikes_delta_t_filename) # 9

original_file_names.append(tde_output_spikes_delta_t_case_0_filename) # 10
original_file_names.append(tde_output_spikes_delta_t_case_1_filename) # 11
original_file_names.append(tde_output_spikes_delta_t_case_2_filename) # 12
original_file_names.append(tde_output_spikes_delta_t_case_3_filename) # 13
original_file_names.append(tde_output_spikes_delta_t_case_4_filename) # 14
original_file_names.append(tde_output_spikes_delta_t_case_5_filename) # 15
original_file_names.append(tde_output_spikes_delta_t_case_6_filename) # 16


#
# Enum declaration for establishing the positions
#
class TDE_results_datafiles_order(enum.Enum):
    input_faci_spikes = 0
    faci_timer = 1
    faci_timer_weighted = 2
    input_trig_spikes = 3
    trigg_timer = 4
    trigg_timer_weighted = 5
    sgen_val = 6
    sgen_clkdiv = 7
    output_spikes = 8
    output_spikes_delta_t = 9
    output_spikes_delta_t_case_0 = 10
    output_spikes_delta_t_case_1 = 11
    output_spikes_delta_t_case_2 = 12
    output_spikes_delta_t_case_3 = 13
    output_spikes_delta_t_case_4 = 14
    output_spikes_delta_t_case_5 = 15
    output_spikes_delta_t_case_6 = 16


#
# Files reading to be preprocessed
#

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

    # Close files
    input_file_handler.close()
    output_file_handler.close()

#
# Files reading to plot the data
#

# Set the time scale transformation
ps_to_us_factor = 1000000.0

# Once all the files have been preprocessed, open all the csv files
all_values = []
all_timestamps = []

# For each file
for file_index in range(number_of_files):
    timestamps = []
    values = []
    # Read the csv file
    with open(preproc_file_names[file_index]) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=';')
        # For each row
        for row in csv_reader:
            # Save the spikes counter
            values.append(float(row[0]))    
            # The timestamps are always important
            timestamps.append(float(row[1])/ps_to_us_factor)

        all_values.append(values)
        all_timestamps.append(timestamps)

#
# Plotting the main results
#
def plotTDEresults(input_spikes_faci_timestamps, input_spikes_faci_values, \
                    input_spikes_trig_timestamps, input_spikes_trig_values, \
                    faci_timer_timestamps, faci_timer_values, \
                    trig_timer_timestamps, trig_timer_values, \
                    sgen_clkdiv_timestamps, sgen_clkdiv_values, \
                    output_spikes_timestamps, output_spikes_values):

    # Create the figure and the subplots
    fig, (ax1, ax2, ax3, ax4, ax5) = plt.subplots(5,1, sharex=True)

    # Change the figure title
    fig.suptitle('TDE results')

    # Plotting the facilitatory and trigger spikes
    ax1.plot(input_spikes_faci_timestamps, np.zeros_like(input_spikes_faci_values), 'ro', input_spikes_trig_timestamps, np.zeros_like(input_spikes_trig_values), 'bo')
    # Plotting the facilitatory timer value
    ax2.plot(faci_timer_timestamps, faci_timer_values, 'r')
    # Plotting the trigger timer value
    ax3.plot(trig_timer_timestamps, trig_timer_values, 'b')
    # Plotting the spikes generator clock frequency divider
    ax4.plot(sgen_clkdiv_timestamps, sgen_clkdiv_values)
    # Plotting the output spikes
    ax5.plot(output_spikes_timestamps, np.zeros_like(output_spikes_values), '|')

    # Show the figure
    plt.show()

    # Saving out the figure
    fig.savefig('tde_results.png')

def plotTDEresults2(input_spikes_faci_timestamps, input_spikes_faci_values, \
                    input_spikes_trig_timestamps, input_spikes_trig_values, \
                    faci_timer_timestamps, faci_timer_values, \
                    trig_timer_timestamps, trig_timer_values, \
                    sgen_val2gen_timestamps, sgen_val2gen_values, \
                    sgen_clkdiv_timestamps, sgen_clkdiv_values, \
                    output_spikes_timestamps, output_spikes_values):

    # Create the figure and the subplots
    fig = plt.figure()

    # Change the figure title
    fig.suptitle('TDE results')
    
    # Plotting the facilitatory and trigger spikes
    ax1 = fig.add_subplot(611)
    ax1.plot(input_spikes_faci_timestamps, np.zeros_like(input_spikes_faci_values), 'r|', markersize=10, label='Facilitatory')
    ax1.plot(input_spikes_trig_timestamps, np.zeros_like(input_spikes_trig_values), 'b|', markersize=10, label='Trigger')
    ax1.legend(bbox_to_anchor=(0., 1.02, 1., .102), loc='lower left', ncol=2, mode="expand", frameon=False, borderaxespad=0.)
    ax1.set_ylabel('Input')
    plt.setp(ax1.get_xticklabels(), visible=False)
    #plt.setp(ax1.get_yticklabels(), visible=False)
    # Plotting the facilitatory timer value
    ax2 = fig.add_subplot(612, sharex=ax1)
    ax2.plot(faci_timer_timestamps, faci_timer_values, 'r')
    ax2.set_ylabel('Faci.')
    plt.setp(ax2.get_xticklabels(), visible=False)
    # Plotting the trigger timer value
    ax3 = fig.add_subplot(613, sharex=ax1, sharey=ax2)
    ax3.plot(trig_timer_timestamps, trig_timer_values, 'b')
    ax3.set_ylabel('Trig.')
    plt.setp(ax3.get_xticklabels(), visible=False)
    # Plotting the spikes generator value to generate
    ax4 = fig.add_subplot(614, sharex=ax1)
    ax4.plot(sgen_val2gen_timestamps, sgen_val2gen_values, 'k')
    ax4.set_ylabel('Val2s')
    plt.setp(ax4.get_xticklabels(), visible=False)
    # Plotting the spikes generator clock frequency divider
    ax5 = fig.add_subplot(615, sharex=ax1)
    ax5.plot(sgen_clkdiv_timestamps, sgen_clkdiv_values, 'k')
    ax5.set_ylabel('clkdiv')
    plt.setp(ax5.get_xticklabels(), visible=False)
    # Plotting the output spikes
    ax6 = fig.add_subplot(616, sharex=ax1)
    ax6.plot(output_spikes_timestamps, np.zeros_like(output_spikes_values), '|', markersize=10)
    ax6.set_ylabel('Output')
    #no_output_spikes = len(output_spikes_values)
    #output_spikes_colors = [np.random.rand(3,) for i in range(no_output_spikes)]
    #ax6.scatter(output_spikes_timestamps, np.zeros_like(output_spikes_values), marker='|', s=100, c=output_spikes_colors)
    plt.setp(ax6.get_yticklabels(), visible=False)
    # Show the figure
    plt.xlabel(r'Time ($\mu$s)')
    plt.show()

    # Saving out the figure
    fig.savefig('tde_results.png')

plotTDEresults2(all_timestamps[int(TDE_results_datafiles_order.input_faci_spikes.value)], all_values[int(TDE_results_datafiles_order.input_faci_spikes.value)], \
                all_timestamps[int(TDE_results_datafiles_order.input_trig_spikes.value)], all_values[int(TDE_results_datafiles_order.input_trig_spikes.value)], \
                all_timestamps[int(TDE_results_datafiles_order.faci_timer.value)], all_values[int(TDE_results_datafiles_order.faci_timer.value)], \
                all_timestamps[int(TDE_results_datafiles_order.trigg_timer.value)], all_values[int(TDE_results_datafiles_order.trigg_timer.value)], \
                all_timestamps[int(TDE_results_datafiles_order.sgen_val.value)], all_values[int(TDE_results_datafiles_order.sgen_val.value)], \
                all_timestamps[int(TDE_results_datafiles_order.sgen_clkdiv.value)], all_values[int(TDE_results_datafiles_order.sgen_clkdiv.value)], \
                all_timestamps[int(TDE_results_datafiles_order.output_spikes.value)], all_values[int(TDE_results_datafiles_order.output_spikes.value)])

#
# Plotting the output spikes over the time
#
def plotNumOutSpikesOverTime(output_spikes_timestamps, output_spikes_values):
    
    # Create the figure
    fig, ax = plt.subplots()

    # Plot the results
    ax.plot(output_spikes_timestamps, output_spikes_values, 'b*-')
    ax.set(xlabel=r'Time ($\mu$s)', ylabel='No. spikes', title='Number of output spikes over time')
    ax.grid()

    plt.show()

    fig.savefig('tde_out_spikes_over_time.png')

plotNumOutSpikesOverTime(all_timestamps[int(TDE_results_datafiles_order.output_spikes.value)], all_values[int(TDE_results_datafiles_order.output_spikes.value)])

#
# Plotting the inter-spike interval
#

def computeInterSpikeInterval(output_spikes_timestamps):
    # ISI values for each spike pair
    ISI_values = []

    # First, we need to know how many timestamps have to be processed
    num_timestamps = len(output_spikes_timestamps)

    for ts_index in range(1, num_timestamps - 1):
        # We take the first timestamp
        timestamp_t0 = output_spikes_timestamps[ts_index-1]
        # And the second timestamp
        timestamp_t1 = output_spikes_timestamps[ts_index]

        # The inter-spike interval is computed as the subtraction
        # between the second timestamp and the first one
        isi_val = timestamp_t1 - timestamp_t0
        
        # We save the obtained result
        ISI_values.append(isi_val)

    return ISI_values

def plotInterSpikeInterval(output_spikes_timestamps):
    # ISI values for each spike pair
    ISI_values = computeInterSpikeInterval(output_spikes_timestamps)

    # Create the figure
    fig, ax = plt.subplots()

    # Plot the results
    ax.plot(ISI_values, 'b*-')
    ax.set(xlabel='Spike pairs', ylabel=r'Time ($\mu$s)', title='Inter-Spike Interval')
    ax.grid()

    plt.show()

    fig.savefig('tde_isi.png')

#plotInterSpikeInterval(all_timestamps[int(TDE_results_datafiles_order.output_spikes.value)])

def plotInterSpikeIntervalForCase(output_spikes_timestamps, output_spikes_values):
    # We need a matrix 

    # Creates a list containing 5 lists (h), each of 8 items (w), all set to 0
    w, h = 100, 20
    timestamps_per_delta_t_value = [[0 for x in range(w)] for y in range(h)]
    list_index = 0
    item_index = 0
    max_item_index = 0

    # We need to know the number of elements of the array values
    num_values = len(output_spikes_values)

    # For each value
    for val_index in range(num_values):
        val = output_spikes_values[val_index]
        ts = output_spikes_timestamps[val_index]

        if val == -1:
            item_index = 0
        elif val == -2:
            list_index = list_index + 1
        else:
            timestamps_per_delta_t_value[list_index][item_index] = ts
            item_index = item_index + 1

            if item_index > max_item_index:
                max_item_index = item_index

    global_ISI_values = []

    for ts_array_index in range(list_index):
        temp_ts_delta_t = timestamps_per_delta_t_value[ts_array_index]
        temp_ts_delta_t_no_zeros = filter(lambda a: a != 0, temp_ts_delta_t)

        if not temp_ts_delta_t_no_zeros:
            print("Empty")
        else:
            temp_ISI_values = computeInterSpikeInterval(temp_ts_delta_t_no_zeros)
            global_ISI_values.append(temp_ISI_values)
        
    num_global_ISI_values = len(global_ISI_values)

    # Plotting the results in the same plot
    fig, ax = plt.subplots()

    pltmarkers = []
    pltmarkers.append('.-')
    pltmarkers.append('o-')
    pltmarkers.append('v-')
    pltmarkers.append('s-')
    pltmarkers.append('*-')
    pltmarkers.append('X-')
    pltmarkers.append('3-')
    pltmarkers.append('8-')
    pltmarkers.append('>-')
    pltmarkers.append('d-')
    pltmarkers.append('.-')
    pltmarkers.append('.-')
    pltmarkers.append('.-')
    pltmarkers.append('.-')
    pltmarkers.append('.-')
    pltmarkers.append('.-')
    pltmarkers.append('.-')
    pltmarkers.append('.-')
    pltmarkers.append('.-')
    pltmarkers.append('.-')
    pltmarkers.append('.-')
    pltmarkers.append('.-')

    for global_isi_index in range(num_global_ISI_values):

        ax.plot(global_ISI_values[global_isi_index], pltmarkers[global_isi_index], label=r'$\Delta$t: ' + str(global_isi_index*50) + r'($\mu$s)')

    ax.set(xlabel='Spike pairs', ylabel=r'Time ($\mu$s)', title=r'Inter-Spike Interval over $\Delta$t')
    ax.grid()

    plt.legend(loc='upper left')
    

    plt.show()

    fig.savefig('tde_isi_over_delta_t.png')

plotInterSpikeIntervalForCase(all_timestamps[int(TDE_results_datafiles_order.output_spikes_delta_t_case_6.value)], all_values[int(TDE_results_datafiles_order.output_spikes_delta_t_case_6.value)])

#
# Plotting the number of spikes per microsecond
#
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
    ax.set(xlabel=r'Time ($\mu$s)', ylabel='No. spikes', title='Number of spikes per microsecond')
    ax.grid()

    plt.show()

    fig.savefig('tde_num_spikes_per_us.png')

plotNumOutputSpikesPerMicrosecond(all_timestamps[int(TDE_results_datafiles_order.output_spikes.value)])

#
# Plotting the variation of the no of spikes over delta_t values
#
def plotNumOutputSpikesPerDeltaT(output_spikes_timestamps, output_spikes_values):
    delta_t_values = []
    num_spikes_per_delta_t = []

    num_elemns = len(output_spikes_values)
    max_val = 0

    for val_index in range(num_elemns):
        val = output_spikes_values[val_index]

        if val == -1:
            delta_t_values.append(output_spikes_timestamps[val_index])
            max_val = 0
        elif val == -2:
            num_spikes_per_delta_t.append(max_val)
        else:
            if val > max_val:
                max_val = val
        
    fig, ax = plt.subplots()

    ax.plot(delta_t_values, num_spikes_per_delta_t, 'b*-')
    ax.set(xlabel=r'Time ($\mu$s)', ylabel='No. spikes', title=r'Number of spikes over $\Delta$t')
    ax.grid()

    plt.show()

    fig.savefig('tde_num_spikes_over_delta_t.png')

#plotNumOutputSpikesPerDeltaT(all_timestamps[int(TDE_results_datafiles_order.output_spikes_delta_t.value)], all_values[int(TDE_results_datafiles_order.output_spikes_delta_t.value)])

#
# Plotting different TDE configurations and results from delta_t variation
#
def plotNumOutputSpikesPerDeltaTForMultipleTDE(files_start_index, files_end_index):
    # We need to arrays to store the results of each configuration from each file
    global_delta_t_values = []
    global_num_spikes_per_delta_t = []

    # For each file
    for result_file_index in range(files_start_index, files_end_index + 1):
        # We take the data from a specific file
        case_output_spikes_values = all_values[result_file_index]
        case_output_spikes_timestamps = all_timestamps[result_file_index]

        # Temporal results
        delta_t_values = []
        num_spikes_per_delta_t = []

        # We need to know the lenght of this array
        num_elemns = len(case_output_spikes_values)
        max_val = 0

        # For each value
        for val_index in range(num_elemns):
            val = case_output_spikes_values[val_index]

            # If the val is equal to -1, then a new case is going to start
            if val == -1:
                delta_t_values.append(case_output_spikes_timestamps[val_index])
                max_val = 0
            # If the val is equal to -2, then the current case has finished
            elif val == -2:
                num_spikes_per_delta_t.append(max_val)
            # If others, then is the spike counter value. We need to obtain the maximum value
            else:
                if val > max_val:
                    max_val = val

        # Finally, we store the current delta_t value of this case
        global_delta_t_values.append(delta_t_values)
        # And its maximum number of spikes
        global_num_spikes_per_delta_t.append(num_spikes_per_delta_t)

    # Plotting the results in the same plot
    fig, ax = plt.subplots()

    ax.plot(global_delta_t_values[0], global_num_spikes_per_delta_t[0], 'b*-', label=r'Detect. time: 100$\mu$s')
    ax.plot(global_delta_t_values[1], global_num_spikes_per_delta_t[1], 'g*-', label=r'Detect. time: 200$\mu$s')
    ax.plot(global_delta_t_values[2], global_num_spikes_per_delta_t[2], 'r*-', label=r'Detect. time: 300$\mu$s')
    ax.plot(global_delta_t_values[3], global_num_spikes_per_delta_t[3], 'c*-', label=r'Detect. time: 400$\mu$s')
    ax.plot(global_delta_t_values[4], global_num_spikes_per_delta_t[4], 'm*-', label=r'Detect. time: 500$\mu$s')
    ax.plot(global_delta_t_values[5], global_num_spikes_per_delta_t[5], 'y*-', label=r'Detect. time: 600$\mu$s')
    ax.plot(global_delta_t_values[6], global_num_spikes_per_delta_t[6], 'k*-', label=r'Detect. time: 700$\mu$s')

    ax.set(xlabel=r'$\Delta$t ($\mu$s)', ylabel='No. spikes', title=r'Number of spikes over $\Delta$t')
    ax.grid()

    plt.legend()

    plt.show()

    fig.savefig('tde_num_spikes_over_delta_t_global.png')

plotNumOutputSpikesPerDeltaTForMultipleTDE(int(TDE_results_datafiles_order.output_spikes_delta_t_case_0.value), int(TDE_results_datafiles_order.output_spikes_delta_t_case_6.value))