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

#
# Setting paths and filenames
#

# NOTE: check this path before running this script 
#source_files_absolute_path = "D:\\Universidad\\Repositorios\\GitHub\\Doctorado\\TDE_vhdl\\TDE\\Testbench\\Results\\Files\\"

source_files_absolute_path = "..\\Files\\"

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
                    sgen_clkdiv_timestamps, sgen_clkdiv_values, \
                    output_spikes_timestamps, output_spikes_values):

    # Create the figure and the subplots
    fig = plt.figure()

    # Change the figure title
    fig.suptitle('TDE results')
    
    # Plotting the facilitatory and trigger spikes
    ax1 = fig.add_subplot(511)
    ax1.plot(input_spikes_faci_timestamps, np.zeros_like(input_spikes_faci_values), 'r|', input_spikes_trig_timestamps, np.zeros_like(input_spikes_trig_values), 'b|')
    plt.setp(ax1.get_xticklabels(), visible=False)
    # Plotting the facilitatory timer value
    ax2 = fig.add_subplot(512, sharex=ax1)
    ax2.plot(faci_timer_timestamps, faci_timer_values, 'r')
    plt.setp(ax2.get_xticklabels(), visible=False)
    # Plotting the trigger timer value
    ax3 = fig.add_subplot(513, sharex=ax1, sharey=ax2)
    ax3.plot(trig_timer_timestamps, trig_timer_values, 'b')
    plt.setp(ax3.get_xticklabels(), visible=False)
    # Plotting the spikes generator clock frequency divider
    ax4 = fig.add_subplot(514, sharex=ax1)
    ax4.plot(sgen_clkdiv_timestamps, sgen_clkdiv_values)
    plt.setp(ax4.get_xticklabels(), visible=False)
    # Plotting the output spikes
    ax5 = fig.add_subplot(515, sharex=ax1)
    ax5.plot(output_spikes_timestamps, np.zeros_like(output_spikes_values), '|')

    # Show the figure
    plt.xlabel(r'Time ($\mu$s)')
    plt.show()

    # Saving out the figure
    fig.savefig('tde_results.png')

plotTDEresults2(all_timestamps[int(TDE_results_datafiles_order.input_faci_spikes.value)], all_values[int(TDE_results_datafiles_order.input_faci_spikes.value)], \
                all_timestamps[int(TDE_results_datafiles_order.input_trig_spikes.value)], all_values[int(TDE_results_datafiles_order.input_trig_spikes.value)], \
                all_timestamps[int(TDE_results_datafiles_order.faci_timer.value)], all_values[int(TDE_results_datafiles_order.faci_timer.value)], \
                all_timestamps[int(TDE_results_datafiles_order.trigg_timer.value)], all_values[int(TDE_results_datafiles_order.trigg_timer.value)], \
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
def plotInterSpikeInterval(output_spikes_timestamps):
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

    # Create the figure
    fig, ax = plt.subplots()

    # Plot the results
    ax.plot(ISI_values, 'b*-')
    ax.set(xlabel='Spike pairs', ylabel=r'Time ($\mu$s)', title='Inter-Spike Interval')
    ax.grid()

    plt.show()

    fig.savefig('tde_isi.png')

plotInterSpikeInterval(all_timestamps[int(TDE_results_datafiles_order.output_spikes.value)])

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

plotNumOutputSpikesPerDeltaT(all_timestamps[int(TDE_results_datafiles_order.output_spikes_delta_t.value)], all_values[int(TDE_results_datafiles_order.output_spikes_delta_t.value)])