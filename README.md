# Server Performance Stats

A Bash script to monitor basic Linux server performance statistics from the command line.

## Overview

This project is an implementation of the [Server Performance Stats](https://roadmap.sh/projects/server-stats) challenge from roadmap.sh.

The goal is to collect and display essential system information to help understand server resource usage and performance.

## Features

The script reports the following statistics:

- Total CPU usage
- Memory usage (used, free, and percentage)
- Disk usage (used, free, and percentage)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage
- OS version
- System uptime
- Load average
- Logged-in users

Additional statistics may be added in the future.

## Requirements

- A Linux system
- Bash
- Standard Linux command-line utilities

## Usage

Clone the repository:

```bash
git clone https://github.com/Ganesha1967/server-performance-stats.git
cd server-performance-stats
```

Make the script executable:

```bash
chmod +x server-stats.sh
```

Run the script:

```bash
./server-stats.sh
```

## License

This project is open source. See the [LICENSE](LICENSE) file for details, if included.
