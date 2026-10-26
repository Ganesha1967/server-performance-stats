#!/bin/bash

total_cpu_usage ()
{
    echo ""
    echo "-------------Total CPU usage--------------"
    echo ""
    top -b -n 2 -d 1 | grep '^%Cpu' | tail -1 | awk '{ printf "%.1f%%\n", 100 - $8 }'
    echo ""
}

# Total memory usage (Free vs Used including percentage)
total_memory_usage() 
{
    echo ""
    echo "------------Total memory usage------------"
    echo ""
    free -m | grep Mem | awk '{ printf( "used: %.2f\nfree: %.2f\npercentage: %.2f%%\n", $3, $4, $3/$2 * 100) }'
    echo ""
}

# Total disk usage (Free vs Used including percentage)
total_disk_usage  ()
{
    echo ""
    echo "-------------Total disk usage-------------"
    echo ""
    df -h --output=source,target,size,used,avail,pcent
    echo ""
}

# Top 5 processes by CPU usage
top_cpu_usage ()
{
    echo ""
    echo "---------------Top CPU usage---------------"
    echo ""
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
    echo ""
}

# Top 5 processes by memory usage
top_memory_usage ()
{
    echo ""
    echo "--------------Top memory usage-------------"
    echo ""
    ps -eo pid,comm,%mem --sort=-%mem | head -n 6
    echo ""
}

os_version ()
{
    echo ""
    echo "----------------OS version-----------------"
    echo ""
    cat /etc/os-release
    echo ""
}

show_uptime ()
{
    echo ""
    echo "----------------Show uptime-------------"
    echo ""
    uptime -p
    echo ""
}

load_average ()
{
    echo ""
    echo "--------------Load average--------------"
    echo ""
    cat /proc/loadavg 
    echo ""
}

logged_in_users ()
{
    echo ""
    echo "-------------Logged in users------------"
    echo ""
    who
    echo ""
}

main ()
{
    echo "==================================================="
    echo "      Start of monitoring your server stats"
    echo "==================================================="

    total_cpu_usage
    total_memory_usage
    total_disk_usage
    top_cpu_usage
    top_memory_usage
    os_version
    show_uptime
    load_average
    logged_in_users
    
    echo "==================================================="
    echo "      Finish of monitoring your server stats"
    echo "==================================================="
}
main
