#!/bin/zsh

# See this blog article on how to create Obsidian automatic encrypted backups, on Obsidian application quit, or any other event:
# https://lopespm.com/notes/2024/09/11/obsidian-backup.html
#
obsidian_notes_folder="<your_obsidian_folder>" ; # For example, /Users/yourusername/Library/Application Support/obsidian
obsidian_notes_tar_archive="${obsidian_notes_folder}/obsidian_backup.tar.gz" ;
backup_folder="<folder_where_the_final_encrypted_backup_will_be_placed>"; # For example, /Users/yourusername/Library/CloudStorage/GoogleDrive/MyDrive/backup_folder

echo "Starting to compress obsidian notes..." ;

# Create a .tar archive that contains all the contents inside the obsidian folder
tar -czf ${obsidian_notes_tar_archive} ${obsidian_notes_folder}/obsidian_backup

# Compress the .tar archive into an encrypted .7z with password "PasswordOfYourChoosing"
# In this example, 7za installed from the nix package manager is used (https://nixos.org/), but you can use 7za from any other reputable source
/Users/yourusername/.nix-profile/bin/7za a -tzip -mem=AES256 -mx=0 -mmt=12 -pPasswordOfYourChoosing ${obsidian_notes_folder}/obsidian_backup.7z ${obsidian_notes_tar_archive} ;

# Move the .7z file into the the backup folder (e.g. your Google Drive / Dropbox / OneDrive folder)
mv ${obsidian_notes_folder}/obsidian_backup.7z ${backup_folder}/obsidian_backup.7z ;

echo "Finished compressing and moving to backup folder"