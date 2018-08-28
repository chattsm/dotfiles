#! /usr/bin/env bash

if [ ! -d /Volumes/mchatterton ]; then
  open "smb://fil0000a.internal.local/Users/mchatterton"
  sleep 5
fi

if [ ! -d /Volumes/mchatterton ]; then
  echo "failed to mount /Volumes/mchatterton"
  exit 1
fi

REMOTE_NAME="/Volumes/mchatterton"
BACKUP_PATHS=(
  ".atom"
  ".bash_history"
  ".config"
  ".docker"
  ".kube"
  ".lesshst"
  ".mysql_history"
  ".pry_history"
  ".psql_history"
  ".ssh"
  ".tldrc"
  ".vim"
  ".viminfo"
  ".zcompdump"
  ".zcompdump.zwc"
  ".zhistory"
  "Desktop"
  "Documents"
  "dotfiles"
  "Downloads"
  "Pictures"
  "Projects"
)

for backup_path in "${BACKUP_PATHS[@]}"; do
  rclone sync -vvv "$HOME/${backup_path}" "${REMOTE_NAME}/${backup_path}"
done