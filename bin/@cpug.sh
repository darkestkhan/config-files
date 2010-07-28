#!/usr/bin/env bash
modprobe acpi_cpufreq 
cd /sys/devices/system/cpu/cpu0/cpufreq
echo '2167000' > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo '2167000' > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
