#!/bin/bash

# Script Name: cleanup.sh
# Description: A script to clean up temporary files and caches.
# Usage: ./cleanup.sh

# Logging function
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*"
}

# Error handling function
error_exit() {
    log "ERROR: $1"
    exit 1
}

# Clean temporary files
cleanup_temp_files() {
    log "INFO: Cleaning up temporary files..."
    rm -rf /tmp/*
    log "INFO: Temporary files cleaned."
}

# Clear package cache (for apt-based systems)
clear_apt_cache() {
    log "INFO: Clearing APT cache..."
    apt-get clean
    log "INFO: APT cache cleared."
}

# Remove old log files
cleanup_old_logs() {
    log "INFO: Removing old log files..."
    find /var/log -type f -name "*.log" -mtime +30 -exec rm -f {} \;
    log "INFO: Old log files removed."
}

# Main function
main() {
    log "INFO: Starting system cleanup..."
    cleanup_temp_files
    clear_apt_cache
    cleanup_old_logs
    log "INFO: System cleanup completed successfully."
}

# Run the script
main "$@"
