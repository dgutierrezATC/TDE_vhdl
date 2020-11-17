import csv
import math
import numpy
import os

project_path = os.getcwd()
#print(project_path)
test_folder_path = "test_0001\\"
test_filename = "mili.csv"

ts = []

"""with open(test_folder_path+test_filename) as csv_file:
	csv_reader = csv.reader(csv_file, delimiter=',')
	line_count = 0
	for row in csv_reader:
		ts_raw = row[1]
		ts_raw = ts_raw.replace(' ps', '')
		ts_ps = float(ts_raw)
		ts_us = ts_ps / 1000000.0
		ts.append(ts_us)
		#print(float(row[0]))
		line_count += 1
print("Processed lines: " + str(line_count))"""

with open(test_folder_path+test_filename) as csv_file:
	csv_reader = csv.reader(csv_file, delimiter=';')
	line_count = 0
	for row in csv_reader:
		if(line_count > 0):
			ts_raw = row[0]
			ts_us = float(ts_raw)
			if(ts_us == 0.0 and line_count > 5):
				print("zero")
			else:
				ts.append(ts_us)
		#print(float(row[0]))
		line_count += 1
print("Processed lines: " + str(line_count))

event_counter = 0
event_counter_list = []
time_dif_th = 200000.0

for index in range(len(ts)-1):
	time_dif = ts[index + 1] - ts[index]
	if(time_dif <= time_dif_th):
		event_counter = event_counter + 1
	else:
		event_counter = event_counter + 1
		event_counter_list.append(event_counter)
		event_counter = 0

print("Num peaks detected: " + str(len(event_counter_list)))		
print("Peaks detected: ")
print(event_counter_list)
print("Max value: " + str(numpy.max(event_counter_list)))
print("Min value: " + str(numpy.min(event_counter_list)))
print("Mean value: " + str(numpy.mean(event_counter_list)))