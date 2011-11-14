#!/usr/bin/env python
# coding=UTF-8

import math, subprocess

p = subprocess.Popen(["acpi"], stdout=subprocess.PIPE)
output = p.communicate()[0]

o = output.split(",")

remaining = o[2].split(" ")[1]

charge = float(o[1].strip(" %")) / 100
charge_threshold = int(math.ceil(10 * charge))

# Output

total_slots, slots = 10, []
filled = int(math.ceil(charge_threshold * (total_slots / 10.0))) * u'▸'
empty = (total_slots - len(filled)) * u'▹'

import sys

color_green = '%{[32m%}'
color_yellow = '%{[1;33m%}'
color_red = '%{[31m%}'
color_reset = '%{[00m%}'
color_out = (
        color_green if len(filled) > 5
        else color_red
)

out = color_yellow + empty.encode('utf-8') + color_out + filled.encode('utf-8') + color_reset + " " + remaining.encode('utf-8') + color_reset
#out = color_out + out + color_reset
sys.stdout.write(out)
