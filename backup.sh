#!/bin/bash
read -p "Enter Source path" backup_source
read -p "Enter Destination path" backup_destination

mkdir -p "$backup_destination/$(date)"
cp -r "$backup_source" "$backup_destination/$(date)"

echo "Backup completed on $(date)"
