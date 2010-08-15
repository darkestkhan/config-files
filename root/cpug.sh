#!/bin/bash
# this script works only for 2 cpus (or 2-cores, I'm not sure which one)
MAX=2167000 # defines maximum possible frequency for given cpu (in this case my)
MIN=1000000 # defines minimum possible frequency for given cpu (in this case my)
modprobe acpi_cpufreq
echo $MAX > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo $MAX > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq