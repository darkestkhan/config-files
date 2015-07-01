#!/usr/bin/env dash
# this script works only for 2 cpus (or 2-cores, I'm not sure which one)
MAX=2167000 # defines maximum possible frequency for given cpu (in this case my)
HALF=1667000 # defines the speed to be in ~3/4 of max speed
ABOVE_MIN=1333000 # defines the speed to be ~1/2 of max speed
MIN=1000000 # defines minimum possible frequency for given cpu (in this case my)
ONDEMAND= # just a placeholder
# modprobe acpi_cpufreq
#set_scaling () {
#}

get_cpu_number () {
  return cpufreq-info | grep 'analyzing CPU' | wc -l
}

set_freq ()
{
  echo $1 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
  echo $1 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
  echo $1 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
  echo $1 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
}

if [ $1 = 'max' ]; then
  set_freq ${MAX}
fi

if [ $1 = 'min' ]; then
  set_freq ${MIN}
fi

if [ $1 = 'half' ]; then
  set_freq ${HALF}
fi

if [ $1 = 'ondemand' ]; then
  echo ${MIN} > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
  echo ${MAX} > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
  echo ${MIN} > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
  echo ${MAX} > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
fi

if [ $1 = 'above_min' ]; then
  set_freq ${ABOVE_MIN}
fi
