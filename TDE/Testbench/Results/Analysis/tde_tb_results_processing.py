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
import svgutils.transform as sg
from svgutils.compose import *
from svgutils.transform import from_mpl
from svgutils.transform import fromfile
from svgutils.templates import VerticalLayout, ColumnLayout
import svg_stack as ss
from sklearn.metrics import mean_squared_error, r2_score

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

tde_output_spikes_tunning_curve_config_0_filename = source_files_absolute_path + "output_spikes_tunning_curve_config_0.txt"
tde_output_spikes_tunning_curve_config_1_filename = source_files_absolute_path + "output_spikes_tunning_curve_config_1.txt"
tde_output_spikes_tunning_curve_config_2_filename = source_files_absolute_path + "output_spikes_tunning_curve_config_2.txt"
tde_output_spikes_tunning_curve_config_3_filename = source_files_absolute_path + "output_spikes_tunning_curve_config_3.txt"


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

def plotFacilitationBlockOutput(input_spikes_faci_timestamps, input_spikes_faci_values, \
                                faci_timer_timestamps, faci_timer_values, \
                                faci_timer_weighted_timestamps, faci_timer_weighted_values, \
                                sgen_val2gen_timestamps, sgen_val2gen_values):

    # Create the figure and the subplots
    fig = plt.figure(figsize=(6.4, 3.8))
    grid = plt.GridSpec(5, 1, left=0.125, bottom=0.120, right=0.940, top=0.880, hspace=0.2)

    # Change the figure title
    fig.suptitle('Gain generator block example')

    # Plotting the facilitatory spikes
    ax1 = fig.add_subplot(grid[0, :])
    ax1.plot(input_spikes_faci_timestamps, np.zeros_like(input_spikes_faci_values), 'r|', markersize=10, label='Facilitatory')

    y_labels = ['faci.']
    y_pos = np.arange(len(y_labels))
    ax1.set_yticks(y_pos)
    ax1.set_yticklabels(y_labels)
    plt.setp(ax1.get_xticklabels(), visible=False)
    
    # Plotting the facilitatory timer value
    ax2 = fig.add_subplot(grid[1:3,:], sharex=ax1) #212
    ax2.plot(faci_timer_timestamps, faci_timer_values, 'r:', label="timer_0")
    ax2.plot(faci_timer_weighted_timestamps, faci_timer_weighted_values, 'r--', label="shift_1")

    ax2.set_ylabel('out (uint)')
    plt.setp(ax2.get_xticklabels(), visible=False)
    plt.legend(loc='upper right')

    # Plotting the sgen d_in value
    ax3 = fig.add_subplot(grid[3:,:], sharex=ax1) #212
    ax3.plot(sgen_val2gen_timestamps, sgen_val2gen_values, 'r', label="add_0")

    ax3.set_ylabel('out (uint)')
    plt.setp(ax3.get_xticklabels(), visible=True)

    # Some options
    plt.xlabel(r'time ($\mu$s)')
    plt.legend(loc='center right')
    plt.show()

    # Saving out the figure
    fig.savefig('gain_block_results.pdf')
"""
plotFacilitationBlockOutput(all_timestamps[int(TDE_results_datafiles_order.input_faci_spikes.value)], all_values[int(TDE_results_datafiles_order.input_faci_spikes.value)], \
                all_timestamps[int(TDE_results_datafiles_order.faci_timer.value)], all_values[int(TDE_results_datafiles_order.faci_timer.value)], \
                all_timestamps[int(TDE_results_datafiles_order.faci_timer_weighted.value)], all_values[int(TDE_results_datafiles_order.faci_timer_weighted.value)], \
                all_timestamps[int(TDE_results_datafiles_order.sgen_val.value)], all_values[int(TDE_results_datafiles_order.sgen_val.value)])
"""
def plotTriggerBlockOutput(input_spikes_trig_timestamps, input_spikes_trig_values, \
                            trig_timer_timestamps, trig_timer_values, \
                            trigg_timer_weighted_timestamps, trigg_timer_weighted_values, \
                            sgen_clkdiv_timestamps, sgen_clkdiv_values):
    # Create the figure and the subplots
    fig = plt.figure(figsize=(6.4, 3.8))
    grid = plt.GridSpec(5, 1, left=0.125, bottom=0.120, right=0.940, top=0.880, hspace=0.2)

    # Change the figure title
    fig.suptitle('EPSC generator block example')

    # Plotting the trigger spikes
    ax1 = fig.add_subplot(grid[0, :]) #121
    ax1.plot(input_spikes_trig_timestamps, np.zeros_like(input_spikes_trig_values), 'b|', markersize=10, label='Facilitatory')

    y_labels = ['trig.']
    y_pos = np.arange(len(y_labels))
    ax1.set_yticks(y_pos)
    ax1.set_yticklabels(y_labels)
    plt.setp(ax1.get_xticklabels(), visible=False)

    # Plotting the trigger timer value
    ax2 = fig.add_subplot(grid[1:3,:], sharex=ax1) #212
    ax2.plot(trig_timer_timestamps, trig_timer_values, 'b:', label="timer_1")
    ax2.plot(trigg_timer_weighted_timestamps, trigg_timer_weighted_values, 'b--', label="shift_2")

    ax2.set_ylabel('out (uint)')
    plt.setp(ax2.get_xticklabels(), visible=False)
    plt.legend(loc='upper right')

    # Plotting the sgen clk_div value
    ax3 = fig.add_subplot(grid[3:, :]) #121
    ax3.plot(sgen_clkdiv_timestamps, sgen_clkdiv_values, 'b', label="sub_0")

    ax3.set_ylabel('out (uint)')
    plt.setp(ax3.get_xticklabels(), visible=True)

    plt.xlabel(r'time ($\mu$s)')
    plt.legend(loc='center right')
    plt.show()

    # Saving out the figure
    fig.savefig('epsc_block_results.pdf')
"""
plotTriggerBlockOutput(all_timestamps[int(TDE_results_datafiles_order.input_trig_spikes.value)], all_values[int(TDE_results_datafiles_order.input_trig_spikes.value)], \
                all_timestamps[int(TDE_results_datafiles_order.trigg_timer.value)], all_values[int(TDE_results_datafiles_order.trigg_timer.value)], \
                all_timestamps[int(TDE_results_datafiles_order.trigg_timer_weighted.value)], all_values[int(TDE_results_datafiles_order.trigg_timer_weighted.value)], \
                all_timestamps[int(TDE_results_datafiles_order.sgen_clkdiv.value)], all_values[int(TDE_results_datafiles_order.sgen_clkdiv.value)])
"""
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
    fig.suptitle('TDE module\'s operation example')
    
    # Plotting the facilitatory and trigger spikes
    ax1 = fig.add_subplot(611)
    #ax1.plot(input_spikes_faci_timestamps, np.full((1, len(input_spikes_faci_values)), 1.0), 'r|', markersize=10, label='Facilitatory')
    ax1.plot(input_spikes_faci_timestamps, np.ones(len(input_spikes_faci_values)), 'r|', markersize=10, label='Facilitatory')
    ax1.plot(input_spikes_trig_timestamps, np.zeros_like(input_spikes_trig_values), 'b|', markersize=10, label='Trigger')
    #ax1.legend(bbox_to_anchor=(0., 1.02, 1., .102), loc='lower left', ncol=2, mode="expand", frameon=False, borderaxespad=0.)
    ax1.set_ylabel('Input', labelpad = 17)
    ax1.set_ylim([-1, 2])
    y_labels = ['trig.', 'faci.']
    y_pos = np.arange(len(y_labels))
    ax1.set_yticks(y_pos)
    ax1.set_yticklabels(y_labels)
    plt.setp(ax1.get_xticklabels(), visible=False)
    #plt.setp(ax1.get_yticklabels(), visible=False)
    # Plotting the facilitatory timer value
    ax2 = fig.add_subplot(612, sharex=ax1)
    ax2.plot(faci_timer_timestamps, faci_timer_values, 'r')
    ax2.set_ylabel('gain', labelpad = 17)
    plt.setp(ax2.get_xticklabels(), visible=False)
    # Plotting the trigger timer value
    ax3 = fig.add_subplot(613, sharex=ax1, sharey=ax2)
    ax3.plot(trig_timer_timestamps, trig_timer_values, 'b')
    ax3.set_ylabel('epsc', labelpad = 17)
    plt.setp(ax3.get_xticklabels(), visible=False)
    # Plotting the spikes generator value to generate
    ax4 = fig.add_subplot(614, sharex=ax1)
    ax4.plot(sgen_val2gen_timestamps, sgen_val2gen_values, 'y', label='d_in')
    ax4.set_ylabel('d_in', labelpad = 5)
    plt.setp(ax4.get_xticklabels(), visible=False)
    # Plotting the spikes generator clock frequency divider
    ax5 = fig.add_subplot(615, sharex=ax1)
    ax5.plot(sgen_clkdiv_timestamps, sgen_clkdiv_values, 'm', label='clk_div')
    ax5.set_ylabel('clk_div', labelpad = 10)
    plt.setp(ax5.get_xticklabels(), visible=False)
    # Plotting the output spikes
    ax6 = fig.add_subplot(616, sharex=ax1)
    ax6.plot(output_spikes_timestamps, np.zeros_like(output_spikes_values), 'g|', markersize=10, label='Spike')
    ax6.set_ylabel('Output', labelpad = 10)
    y_label = ['spike']
    y_pos = np.arange(len(y_label))
    ax6.set_yticks(y_pos)
    ax6.set_yticklabels(y_label)
    #no_output_spikes = len(output_spikes_values)
    #output_spikes_colors = [np.random.rand(3,) for i in range(no_output_spikes)]
    #ax6.scatter(output_spikes_timestamps, np.zeros_like(output_spikes_values), marker='|', s=100, c=output_spikes_colors)
    #plt.setp(ax6.get_yticklabels(), visible=False)
    # Show the figure
    plt.xlabel(r'Time ($\mu$s)')
    plt.subplots_adjust(top=0.930, bottom=0.090, left=0.150, right=0.935, hspace=0.200, wspace=0.200)
    plt.show()

    # Saving out the figure
    fig.savefig('tde_results.png')
    fig.savefig('Fig_TDE_module_operation_example.pdf')

"""plotTDEresults2(all_timestamps[int(TDE_results_datafiles_order.input_faci_spikes.value)], all_values[int(TDE_results_datafiles_order.input_faci_spikes.value)], \
                all_timestamps[int(TDE_results_datafiles_order.input_trig_spikes.value)], all_values[int(TDE_results_datafiles_order.input_trig_spikes.value)], \
                all_timestamps[int(TDE_results_datafiles_order.faci_timer.value)], all_values[int(TDE_results_datafiles_order.faci_timer.value)], \
                all_timestamps[int(TDE_results_datafiles_order.trigg_timer.value)], all_values[int(TDE_results_datafiles_order.trigg_timer.value)], \
                all_timestamps[int(TDE_results_datafiles_order.sgen_val.value)], all_values[int(TDE_results_datafiles_order.sgen_val.value)], \
                all_timestamps[int(TDE_results_datafiles_order.sgen_clkdiv.value)], all_values[int(TDE_results_datafiles_order.sgen_clkdiv.value)], \
                all_timestamps[int(TDE_results_datafiles_order.output_spikes.value)], all_values[int(TDE_results_datafiles_order.output_spikes.value)])"""


def plotTDEresults2_compact(input_spikes_faci_timestamps, input_spikes_faci_values, \
                    input_spikes_trig_timestamps, input_spikes_trig_values, \
                    faci_timer_timestamps, faci_timer_values, \
                    trig_timer_timestamps, trig_timer_values, \
                    output_spikes_timestamps, output_spikes_values):

    # Create the figure and the subplots
    fig = plt.figure(figsize=(4.6, 2.03))
    grid = plt.GridSpec(4, 1, left=0.150, bottom=0.110, right=0.95, top=0.910, hspace=0.1)

    # Change the figure title
    fig.suptitle(r'(F) Single facilitatory, single trigger low $\Delta$t')

    # Plotting the trigger spikes
    ax1 = fig.add_subplot(grid[0, :]) #121
    ax1.plot(input_spikes_faci_timestamps, np.zeros_like(input_spikes_faci_values), 'r|', markersize=15, label='Facilitatory')
    ax1.plot(input_spikes_trig_timestamps, np.zeros_like(input_spikes_trig_values), 'b|', markersize=15, label='Facilitatory')

    y_labels = ['input']
    y_pos = np.arange(len(y_labels))
    ax1.set_yticks(y_pos)
    ax1.set_yticklabels(y_labels)
    ax1.spines["top"].set_visible(False)
    ax1.spines["right"].set_visible(False)
    plt.setp(ax1.get_xticklabels(), visible=False)

    # Plotting the trigger timer value
    ax2 = fig.add_subplot(grid[1:3,:], sharex=ax1) #212
    ax2.plot(faci_timer_timestamps, faci_timer_values, 'r-')
    ax2.plot(trig_timer_timestamps, trig_timer_values, 'b:')

    ax2.set_ylabel('timers')
    ax2.set_ylim(-5, 105)
    ax2.spines["top"].set_visible(False)
    ax2.spines["right"].set_visible(False)
    plt.setp(ax2.get_xticklabels(), visible=False)


    # Plotting the sgen clk_div value
    ax3 = fig.add_subplot(grid[3, :], sharex=ax1) #121
    ax3.plot(output_spikes_timestamps, np.zeros_like(output_spikes_values), 'g|', markersize=15, label='Spike')
    y_label = ['output']
    y_pos = np.arange(len(y_label))
    ax3.set_yticks(y_pos)
    ax3.set_yticklabels(y_label)
    ax3.spines["top"].set_visible(False)
    ax3.spines["right"].set_visible(False)

    plt.setp(ax3.get_xticklabels(), visible=True)

    #plt.xlabel(r'time ($\mu$s)')
    plt.show()

    # Saving out the figure
    fig.savefig('Fig_TDE_case_F.pdf')
    fig.savefig("Fig_TDE_case_F.svg")
    

"""plotTDEresults2_compact(all_timestamps[int(TDE_results_datafiles_order.input_faci_spikes.value)], all_values[int(TDE_results_datafiles_order.input_faci_spikes.value)], \
                all_timestamps[int(TDE_results_datafiles_order.input_trig_spikes.value)], all_values[int(TDE_results_datafiles_order.input_trig_spikes.value)], \
                all_timestamps[int(TDE_results_datafiles_order.faci_timer.value)], all_values[int(TDE_results_datafiles_order.faci_timer.value)], \
                all_timestamps[int(TDE_results_datafiles_order.trigg_timer.value)], all_values[int(TDE_results_datafiles_order.trigg_timer.value)], \
                all_timestamps[int(TDE_results_datafiles_order.output_spikes.value)], all_values[int(TDE_results_datafiles_order.output_spikes.value)])"""

def combinePlotsTDECases():

    doc = ss.Document()

    layout1 = ss.HBoxLayout()
    layout1.addSVG('Fig_TDE_case_A.svg',alignment=ss.AlignTop|ss.AlignHCenter)
    layout1.addSVG('Fig_TDE_case_B.svg',alignment=ss.AlignTop|ss.AlignHCenter)
    layout1.addSVG('Fig_TDE_case_C.svg',alignment=ss.AlignTop|ss.AlignHCenter)
    layout1.addSVG('Fig_TDE_case_D.svg',alignment=ss.AlignTop|ss.AlignHCenter)

    doc.setLayout(layout1)
    doc.save('row_0.svg')

    doc = ss.Document()

    layout2 = ss.HBoxLayout()

    layout2.addSVG('Fig_TDE_case_E.svg',alignment=ss.AlignBottom|ss.AlignHCenter)
    layout2.addSVG('Fig_TDE_case_F.svg',alignment=ss.AlignTop|ss.AlignHCenter)
    layout2.addSVG('Fig_TDE_case_G.svg',alignment=ss.AlignTop|ss.AlignHCenter)
    layout2.addSVG('Fig_TDE_case_H.svg',alignment=ss.AlignTop|ss.AlignHCenter)
    #layout1.addLayout(layout2)
    doc.setLayout(layout2)
    doc.save('row_1.svg')

    doc = ss.Document()

    layout3 = ss.HBoxLayout()

    layout3.addSVG('Fig_TDE_case_I.svg',alignment=ss.AlignTop|ss.AlignHCenter)
    layout3.addSVG('Fig_TDE_case_J.svg',alignment=ss.AlignTop|ss.AlignHCenter)
    layout3.addSVG('Fig_TDE_case_K.svg',alignment=ss.AlignTop|ss.AlignHCenter)
    layout3.addSVG('Fig_TDE_case_L.svg',alignment=ss.AlignTop|ss.AlignHCenter)
    #layout1.addLayout(layout3)
    doc.setLayout(layout3)
    doc.save('row_2.svg')

    doc = ss.Document()

    layout4 = ss.VBoxLayout()

    layout4.addSVG('row_0.svg',alignment=ss.AlignTop|ss.AlignHCenter)
    layout4.addSVG('row_1.svg',alignment=ss.AlignTop|ss.AlignHCenter)
    layout4.addSVG('row_2.svg',alignment=ss.AlignTop|ss.AlignHCenter)

    doc.setLayout(layout4)

    doc.save('final_tde.svg')


"""combinePlotsTDECases()"""

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

#plotNumOutSpikesOverTime(all_timestamps[int(TDE_results_datafiles_order.output_spikes.value)], all_values[int(TDE_results_datafiles_order.output_spikes.value)])

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
            """temp_ISI_values_ms = [val / 1000.0 for val in temp_ISI_values]
            global_ISI_values.append(temp_ISI_values_ms)"""
        
    num_global_ISI_values = len(global_ISI_values)

    # Plotting the results in the same plot
    #fig, ax = plt.subplots(figsize=(8.0, 6.0))
    fig, ax = plt.subplots()

    # Create the figure and the subplots
    #fig = plt.figure(figsize=(6.4, 3.8))
    #grid = plt.GridSpec(5, 1, left=0.125, bottom=0.120, right=0.940, top=0.880, hspace=0.2)

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

        ax.plot(global_ISI_values[global_isi_index], pltmarkers[global_isi_index], label=r'Stim. $\Delta$t: ' + str(global_isi_index*50) + r' ($\mu$s)')

    ax.set(xlabel='Output spike pair n', ylabel=r'Interspike Interval ($\mu$s)', title=r'Interspike Interval distribution within a burst') #over $\Delta$t ($\mu$s)')
    ax.grid()

    """for global_isi_index in range(num_global_ISI_values):
        ax.plot(global_ISI_values[global_isi_index], pltmarkers[global_isi_index], label=r'Stim. $\Delta$t: ' + str(global_isi_index*5) + r' ms')

    ax.set(xlabel='Output spike pair n', ylabel=r'Interspike Interval (ms)', title=r'Interspike Interval distribution within a burst') #over $\Delta$t ($\mu$s)')
    ax.grid()"""


    plt.xlim(0, 30)#125)
    """plt.legend(loc='lower right')"""
    plt.legend(loc='center right', title='Time-to-travel')
    #plt.legend(bbox_to_anchor=(1.05, 1), borderaxespad=0.)
    
    plt.tight_layout()
    plt.show()

    fig.savefig('tde_isi_over_delta_t.png')
    fig.savefig('tde_isi_over_delta_t.pdf')
    fig.savefig('tde_isi_over_delta_t.svg')

##########plotInterSpikeIntervalForCase(all_timestamps[int(TDE_results_datafiles_order.output_spikes_delta_t_case_6.value)], all_values[int(TDE_results_datafiles_order.output_spikes_delta_t_case_6.value)])

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
    ax.set(xlabel=r'Time ($\mu$s)', ylabel='Number of spikes', title='Number of spikes per microsecond')
    ax.grid()

    plt.show()

    fig.savefig('tde_num_spikes_per_us.png')

#plotNumOutputSpikesPerMicrosecond(all_timestamps[int(TDE_results_datafiles_order.output_spikes.value)])

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
    ax.set(xlabel=r'Time ($\mu$s)', ylabel='Number of spikes', title=r'Number of spikes over $\Delta$t')
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
                #delta_t_values.append((case_output_spikes_timestamps[val_index]) / 1000.0)
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
    fig, ax = plt.subplots(figsize=(6.4, 3.8))

    ax.plot(global_delta_t_values[0], global_num_spikes_per_delta_t[0], 'b*-', label=r'Detect. time: 100 $\mu$s')
    ax.plot(global_delta_t_values[1], global_num_spikes_per_delta_t[1], 'g*-', label=r'Detect. time: 200 $\mu$s')
    ax.plot(global_delta_t_values[2], global_num_spikes_per_delta_t[2], 'r*-', label=r'Detect. time: 300 $\mu$s')
    ax.plot(global_delta_t_values[3], global_num_spikes_per_delta_t[3], 'c*-', label=r'Detect. time: 400 $\mu$s')
    ax.plot(global_delta_t_values[4], global_num_spikes_per_delta_t[4], 'm*-', label=r'Detect. time: 500 $\mu$s')
    ax.plot(global_delta_t_values[5], global_num_spikes_per_delta_t[5], 'y*-', label=r'Detect. time: 600 $\mu$s')
    ax.plot(global_delta_t_values[6], global_num_spikes_per_delta_t[6], 'k*-', label=r'Detect. time: 700 $\mu$s')

    """ax.plot(global_delta_t_values[0], global_num_spikes_per_delta_t[0], 'b*-', label=r'Detect. time: 10 ms')
    ax.plot(global_delta_t_values[1], global_num_spikes_per_delta_t[1], 'g*-', label=r'Detect. time: 20 ms')
    ax.plot(global_delta_t_values[2], global_num_spikes_per_delta_t[2], 'r*-', label=r'Detect. time: 30 ms')
    ax.plot(global_delta_t_values[3], global_num_spikes_per_delta_t[3], 'c*-', label=r'Detect. time: 40 ms')
    ax.plot(global_delta_t_values[4], global_num_spikes_per_delta_t[4], 'm*-', label=r'Detect. time: 50 ms')
    ax.plot(global_delta_t_values[5], global_num_spikes_per_delta_t[5], 'y*-', label=r'Detect. time: 60 ms')
    ax.plot(global_delta_t_values[6], global_num_spikes_per_delta_t[6], 'k*-', label=r'Detect. time: 70 ms')"""

    ax.set(xlabel=r'$\Delta$t ($\mu$s)', ylabel='Number of spikes', title=r'Number of output spikes over $\Delta$t variation')
    ax.grid()

    plt.legend()
    plt.tight_layout()
    #plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left', borderaxespad=0.)

    plt.show()

    fig.savefig('tde_num_spikes_over_delta_t_global.png')
    fig.savefig('tde_num_spikes_over_delta_t_global.pdf')
    fig.savefig('tde_num_spikes_over_delta_t_global.svg')

#plotNumOutputSpikesPerDeltaTForMultipleTDE(int(TDE_results_datafiles_order.output_spikes_delta_t_case_0.value), int(TDE_results_datafiles_order.output_spikes_delta_t_case_6.value))

#
# Plotting the tuning curves
#

def plotTuningCurvesOfTDEPopulation(files_start_index, files_end_index):
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
                delta_t_values.append(case_output_spikes_timestamps[val_index]) #microseconds
                #delta_t_values.append((case_output_spikes_timestamps[val_index]) / 1000.0) # milliseconds
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
    fig, ax = plt.subplots(figsize=(6.4, 3.8))

    ax.plot(global_delta_t_values[0], global_num_spikes_per_delta_t[0], 'bo-', markersize=5, label=r'TDE 0')
    ax.plot(global_delta_t_values[1], global_num_spikes_per_delta_t[1], 'gs-', markersize=5, label=r'TDE 1')
    ax.plot(global_delta_t_values[2], global_num_spikes_per_delta_t[2], 'rv-', markersize=5, label=r'TDE 2')
    ax.plot(global_delta_t_values[3], global_num_spikes_per_delta_t[3], 'cd-', markersize=5, label=r'TDE 3')

    """ax.plot(global_delta_t_values[0], global_num_spikes_per_delta_t[0], 'b*-', label=r'Detect. time: 10 ms')
    ax.plot(global_delta_t_values[1], global_num_spikes_per_delta_t[1], 'g*-', label=r'Detect. time: 20 ms')
    ax.plot(global_delta_t_values[2], global_num_spikes_per_delta_t[2], 'r*-', label=r'Detect. time: 30 ms')
    ax.plot(global_delta_t_values[3], global_num_spikes_per_delta_t[3], 'c*-', label=r'Detect. time: 40 ms')"""

    ax.set(xlabel=r'$\Delta$t ($\mu$s)', ylabel='Number of spikes', title=r'Example of different tuning curves of TDEs') # microseconds
    #ax.set(xlabel=r'$\Delta$t (ms)', ylabel='Number of spikes', title=r'Example of different tuning curves of TDEs') # milliseconds
    ax.grid()

    plt.legend()
    plt.tight_layout()
    #plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left', borderaxespad=0.)

    plt.show()

    fig.savefig('tde_tuning_curves_us.png')
    fig.savefig('tde_tuning_curves_us.pdf')
    fig.savefig('tde_tuning_curves_us.svg')

    # Let's generate the population tuning curve: this approach is wrong, because
    # it takes the max value instead of the sum of the max values
    population_tuning_curve = []
    for index in range(len(global_num_spikes_per_delta_t[0])):
        """values = []
        values.append(global_num_spikes_per_delta_t[0][index])
        values.append(global_num_spikes_per_delta_t[1][index])
        values.append(global_num_spikes_per_delta_t[2][index])
        values.append(global_num_spikes_per_delta_t[3][index])
        population_tuning_curve.append(np.max(values))"""
        values = 0
        values += global_num_spikes_per_delta_t[0][index]
        values += global_num_spikes_per_delta_t[1][index]
        values += global_num_spikes_per_delta_t[2][index]
        values += global_num_spikes_per_delta_t[3][index]
        population_tuning_curve.append(values)

    z_1 = np.polyfit(global_delta_t_values[0], population_tuning_curve, 2)
    print("z")
    print(z_1)
    print("Numero z")
    print(len(z_1))
    p_1 = np.poly1d(z_1)
    print("p")
    print(p_1)
    print("numero p")
    print(len(p_1))
    print("r2")
    print(r2_score(population_tuning_curve, p_1(global_delta_t_values[0])))
    print("rmse")
    print(np.sqrt(mean_squared_error(population_tuning_curve, p_1(global_delta_t_values[0]))))

    xp_1 = np.linspace(0, 750, len(global_delta_t_values[0]))

    """z_3 = np.polyfit(global_delta_t_values[0], population_tuning_curve, 3)
    print(z_3)
    print("Numero z")
    print(len(z_3))
    p_3 = np.poly1d(z_3)
    print(p_3)
    print("numero p")
    print(len(p_3))
    print(r2_score(population_tuning_curve, p_3(global_delta_t_values[0])))

    xp_3 = np.linspace(0, 750, len(global_delta_t_values[0]))"""

    ################################
    x_data = global_delta_t_values[0]
    print("\n\n x data")
    print(x_data)

    y_data = population_tuning_curve
    print("y data")
    print(y_data)

    #x_data = np.trim_zeros(x_data)
    x_data[0] = 0.1
    x_data = x_data[0:(len(x_data)-4)]
    print("\n\n x data")
    print(x_data)
    print("len x data")
    print(len(x_data))

    print("\n\n log x data")
    log_x_data = np.log(x_data)
    print(log_x_data)
    print("len log x data")
    print(len(log_x_data))
    
    print("\n\n y data")
    y_data = np.trim_zeros(y_data)
    print(y_data)
    print("len y data")
    log_y_data = np.log(y_data)
    print(len(y_data))

    print("\n\n log y data")
    print(log_y_data)
    print("len log y data")
    print(len(log_y_data))

    log_y_data = np.delete(log_y_data, len(log_y_data)-1)

    print("\n\n log y data")
    print(log_y_data)



    curve_fit = np.polyfit(x_data, log_y_data, 1)

    print("curve fit")
    print(curve_fit)

    #y = np.exp(curve_fit[0]) * np.exp(curve_fit[1]*x_data)
    #y = [np.exp(4.07822922) * np.exp(-0.006263*x_data[val]) for val in range(len(x_data))] # microseconds wrong
    y = [np.exp(5.07915175) * np.exp(-0.00779659*x_data[val]) for val in range(len(x_data))] # microseconds good
    #y = [np.exp(5.52467424) * np.exp(-0.06746445*x_data[val]) for val in range(len(x_data))] # milliseconds for wrong population tuning curve
    #y = [np.exp(6.54144743) * np.exp(-0.0831564*x_data[val]) for val in range(len(x_data))] # milliseconds for good population tuning curve
    fig, ax = plt.subplots(figsize=(6.4, 3.8))
    y_data = np.delete(y_data, len(y_data)-1)
    ax.plot(x_data, y_data, "o")

    ax.plot(x_data, y, ".-")

    plt.show()

    ################################

    fig, ax = plt.subplots(figsize=(6.4, 4.8))
    ax.plot(global_delta_t_values[0], global_num_spikes_per_delta_t[0], 'bo-', markersize=5, label=r'TDE 0 tuning curve', alpha=0.90)
    ax.plot(global_delta_t_values[1], global_num_spikes_per_delta_t[1], 'gs-', markersize=5, label=r'TDE 1 tuning curve', alpha=0.90)
    ax.plot(global_delta_t_values[2], global_num_spikes_per_delta_t[2], 'rv-', markersize=5, label=r'TDE 2 tuning curve', alpha=0.90)
    ax.plot(global_delta_t_values[3], global_num_spikes_per_delta_t[3], 'cd-', markersize=5, label=r'TDE 3 tuning curve', alpha=0.90)
    ax.plot(global_delta_t_values[0], population_tuning_curve, 'm*-', markersize=5, label=r'Population tuning curve', alpha=0.50)
    #ax.plot(xp_1, p_1(xp_1), 'y--', markersize=5, linewidth=2.0, label=r'$0.0001918x^2-0.2087x+55.08$')
    ax.plot(x_data, y, 'y--', markersize=5, linewidth=2.5, color='y', label=r'$f (\Delta t)=e^{5.07915175}*e^{-0.00779659\Delta t}$,'+"\n"+r'$R^2=0.87, RMSE=14.61$') # microseconds
    #ax.plot(x_data, y, 'y--', markersize=5, linewidth=2.5, color='y', label=r'$f (\Delta t)=e^{6.54144743}*e^{-0.0831564\Delta t}$,'+"\n"+r'$R^2=0.93, RMSE=42.24$', alpha=0.50) # milliseconds
    #ax.plot(xp_3, p_3(xp_3), 'k--', markersize=5, linewidth=2.0, label=r'$-5.383e-07x^3+0.0007974x^2-0.3874x+65.33$')
    ax.set(xlabel=r'$\Delta$t ($\mu$s)', ylabel='Number of spikes', title=r'Population tuning curve and exponential fit') # microseconds
    #ax.set(xlabel=r'$\Delta$t (ms)', ylabel='Number of spikes', title=r'Population tuning curve and exponential fit') # milliseconds
    ax.grid()

    plt.legend()
    plt.tight_layout()
    #plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left', borderaxespad=0.)

    plt.show()
    fig.savefig('tde_population_tuning_curve_us.png')
    fig.savefig('tde_population_tuning_curve_us.pdf')
    fig.savefig('tde_population_tuning_curve_us.svg')
    

plotTuningCurvesOfTDEPopulation(int(TDE_results_datafiles_order.output_spikes_delta_t_case_0.value), int(TDE_results_datafiles_order.output_spikes_delta_t_case_6.value))