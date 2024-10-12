# BashScript_SystemCleanUp
Bash script for system cleanup. This script is designed to clean up temporary files, clear package caches, and remove old log files on your system. It helps free up disk space and keep your system organized.

## Features

- Deletes all files in the `/tmp` directory.
- Clears the APT package cache (for Debian-based systems).
- Removes old log files from `/var/log` that are older than 30 days.

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/username/repo.git

2. Navigate to the project directory:

bash
Copy code
cd repo

Make the script executable:

bash
Copy code
chmod +x cleanup.sh
Run the script (requires superuser privileges):

bash
Copy code
sudo ./cleanup.sh
Customization
Modify the script to add or remove cleanup tasks as needed.
Adjust the retention period for old log files by changing the -mtime value in the cleanup_old_logs function.
