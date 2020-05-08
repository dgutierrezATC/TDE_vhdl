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
import matplotlib as mpl
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

#
# Setting paths and filenames
#

# NOTE: check this path before running this script 
source_files_absolute_path = "D:\\Universidad\\Repositorios\\GitHub\\Doctorado\\TDE_vhdl\\TDE\\Testbench\\Results\\Analysis\\Cases\\"

cases_folder_name = "Case_"
cases_list = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L']
cases_title = []
cases_title.append(r'(A) Single facilitatory spike')
cases_title.append(r'(B) Single trigger spike')
cases_title.append(r'(C) Single trigger spike before single facilitatory spike')
cases_title.append(r'(D) Single facilitatory single trigger $\Delta$t=0')
cases_title.append(r'(E) Single facilitatory single trigger short $\Delta$t')
cases_title.append(r'(F) Single facilitatory single trigger medium $\Delta$t')
cases_title.append(r'(G) Single facilitatory single trigger long $\Delta$t')
cases_title.append(r'(H) Single facilitatory single trigger very long $\Delta$t')
cases_title.append(r'(I) Single facilitatory multiple trigger')
cases_title.append(r'(J) Multiple facilitatory single trigger')
cases_title.append(r'(K) Multiple facilitatory multiple trigger')
cases_title.append(r'(L) Saturation')
number_of_cases = len(cases_list)

file_names = []
file_names.append('input_faci_spikes_preprocessed')
file_names.append('input_trig_spikes_preprocessed')
file_names.append('faci_timer_preprocessed')
file_names.append('trigg_timer_preprocessed')
file_names.append('output_spikes_preprocessed')

file_extension = '.csv'
number_of_files = len(file_names)

# Set the time scale transformation
ps_to_us_factor = 1000000.0



# For each case
for case_index in range(number_of_cases):

    all_values = []
    all_timestamps = []

    # Set the case folder name
    case_folder = cases_folder_name + cases_list[case_index] + '\\'
    print("Going into folder" + case_folder)

    for file_index in range(number_of_files):
        timestamps = []
        values = []
        # Read the csv file
        file_name = source_files_absolute_path + case_folder + file_names[file_index] + file_extension
        with open(file_name) as csv_file:
            csv_reader = csv.reader(csv_file, delimiter=';')
            # For each row
            for row in csv_reader:
                # Save the spikes counter
                values.append(float(row[0]))    
                # The timestamps are always important
                timestamps.append(float(row[1])/ps_to_us_factor)

            all_values.append(values)
            all_timestamps.append(timestamps)

    # Create the figure and the subplots
    fig = plt.figure(figsize=(4.6, 2.03))
    grid = plt.GridSpec(4, 1, left=0.150, bottom=0.110, right=0.95, top=0.750, hspace=0.4)

    # Change the figure title
    fig.suptitle(cases_title[case_index], y=0.87, va='top')

    # Plotting the trigger spikes
    ax1 = fig.add_subplot(grid[0, :]) #121
    ax1.plot(all_timestamps[0], np.zeros_like(all_values[0]), 'r|', markersize=15, label='Facilitatory')
    ax1.plot(all_timestamps[1], np.zeros_like(all_values[1]), 'b|', markersize=15, label='Trigger')

    y_labels = ['input']
    y_pos = np.arange(len(y_labels))
    ax1.set_yticks(y_pos)
    ax1.set_yticklabels(y_labels)
    ax1.spines["top"].set_visible(False)
    ax1.spines["right"].set_visible(False)
    plt.setp(ax1.get_xticklabels(), visible=False)

    # Plotting the trigger timer value
    ax2 = fig.add_subplot(grid[1:3,:], sharex=ax1) #212
    ax2.plot(all_timestamps[2], all_values[2], 'r:', linewidth=2)
    ax2.plot(all_timestamps[3], all_values[3], 'b:', linewidth=2)

    ax2.set_ylabel('timers')
    y_sup = 0
    if case_index < 9:
        y_sup = 105
    elif case_index < 11:
        y_sup = 205
    else:
        y_sup = 305
    ax2.set_ylim(-5, y_sup)
    ax2.spines["top"].set_visible(False)
    ax2.spines["right"].set_visible(False)
    plt.setp(ax2.get_xticklabels(), visible=False)


    # Plotting the sgen clk_div value
    ax3 = fig.add_subplot(grid[3, :], sharex=ax1) #121
    ax3.plot(all_timestamps[4], np.zeros_like(all_values[4]), 'g|', markersize=15, label='Spike')
    y_label = ['output']
    y_pos = np.arange(len(y_label))
    ax3.set_yticks(y_pos)
    ax3.set_yticklabels(y_label)
    ax3.spines["top"].set_visible(False)
    ax3.spines["right"].set_visible(False)


    plt.setp(ax3.get_xticklabels(), visible=True)
    ticklabelpad = mpl.rcParams['xtick.major.pad']
    ax3.annotate(r'($\mu$s)', xy=(1,-0.1), xytext=(-5, -ticklabelpad), ha='left', va='top',
            xycoords='axes fraction', textcoords='offset points')

    #plt.xlabel(r'time ($\mu$s)')
    #plt.show()

    # Saving out the figure
    
    fig.savefig('Fig_TDE_case_' + cases_list[case_index] + '.pdf')
    fig.savefig('Fig_TDE_case_' + cases_list[case_index] + '.svg')
    


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

doc.setLayout(layout2)
doc.save('row_1.svg')

doc = ss.Document()

layout3 = ss.HBoxLayout()

layout3.addSVG('Fig_TDE_case_I.svg',alignment=ss.AlignTop|ss.AlignHCenter)
layout3.addSVG('Fig_TDE_case_J.svg',alignment=ss.AlignTop|ss.AlignHCenter)
layout3.addSVG('Fig_TDE_case_K.svg',alignment=ss.AlignTop|ss.AlignHCenter)
layout3.addSVG('Fig_TDE_case_L.svg',alignment=ss.AlignTop|ss.AlignHCenter)

doc.setLayout(layout3)
doc.save('row_2.svg')

doc = ss.Document()

layout4 = ss.VBoxLayout()

layout4.addSVG('row_0.svg',alignment=ss.AlignTop|ss.AlignHCenter)
layout4.addSVG('row_1.svg',alignment=ss.AlignTop|ss.AlignHCenter)
layout4.addSVG('row_2.svg',alignment=ss.AlignTop|ss.AlignHCenter)

doc.setLayout(layout4)

doc.save('final_tde_v2.svg')


