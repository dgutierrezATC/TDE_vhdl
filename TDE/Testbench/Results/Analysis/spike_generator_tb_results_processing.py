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
# Date created: 13/04/2020
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


input_data_filename = source_files_absolute_path + "spikes_generator_unsigned_bw_i_data_in_data_var.txt"

output_spikes_bw_data_var_filename = source_files_absolute_path + "spikes_generator_unsigned_bw_o_spike_out_data_var.txt"
output_spikes_modulues_data_var_filename = source_files_absolute_path + "spikes_generator_unsigned_modulus_o_spike_out_data_var.txt"

output_spikes_bw_freq_var_filename = source_files_absolute_path + "spikes_generator_unsigned_bw_o_spike_out_freq_var.txt"
output_spikes_modulues_freq_var_filename = source_files_absolute_path + "spikes_generator_unsigned_modulus_o_spike_out_freq_var.txt"


#
# Main arrays!
#

original_file_names = []
preproc_file_names = []

#
# Append the file names to be opened
# NOTE: order is important!
#

original_file_names.append(input_data_filename) # 0

original_file_names.append(output_spikes_bw_data_var_filename) # 1
original_file_names.append(output_spikes_modulues_data_var_filename) # 2


original_file_names.append(output_spikes_bw_freq_var_filename) # 3
original_file_names.append(output_spikes_modulues_freq_var_filename) # 4

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
ps_to_us_factor = 1000000000.0

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

##Create the figure		
# fig, (ax1, ax2, ax3, ax4, ax5) = plt.subplots(5, 1, sharex=True)

##Change the figure title
# fig.suptitle('Exhaustive Unsigned Synthetic Spikes Generator example')
##Plotting the facilitatory and trigger spikes
# ax1.plot(all_timestamps[0], all_values[0], 'k.-')
##Plotting the facilitatory timer value
# ax2.plot(all_timestamps[1], np.ones(len(all_values[1])), 'c|', markersize=10)

# ax3.plot(all_timestamps[2], np.zeros_like(all_values[2]), 'm|', markersize=10)
##Plotting the trigger timer value
# ax4.plot(all_timestamps[3], np.ones(len(all_values[3])), 'c|', markersize=10)

# ax5.plot(all_timestamps[4], np.zeros_like(all_values[4]), 'm|', markersize=10)


# plt.setp(ax2.get_yticklabels(), visible=False)
# plt.setp(ax3.get_yticklabels(), visible=False)
# plt.setp(ax4.get_yticklabels(), visible=False)
# plt.setp(ax5.get_yticklabels(), visible=False)

# Create the figure		
fig, (ax1, ax2) = plt.subplots(2, 1, sharex=True)

# Change the figure title
#fig.suptitle('Exhaustive Unsigned Synthetic Spikes Generator example')
# Plotting the facilitatory and trigger spikes
ax1.plot(all_timestamps[0], all_values[0], 'y.-')
# Plotting the facilitatory timer value
ax1.plot(all_timestamps[1], np.zeros_like(all_values[1]), 'c|', markersize=10)
ax1.set_ylabel('d_in value')
#
ax2.plot(all_timestamps[0], all_values[0], 'm.-')
# Plotting the trigger timer value
ax2.plot(all_timestamps[3], np.zeros_like(all_values[3]), 'c|', markersize=10)
ax2.set_ylabel('clk_div value')

ax2.set_xlabel('time (ms)')

# Show the figure
plt.show()