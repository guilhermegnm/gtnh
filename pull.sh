PATH_TO_MC="/Users/guilhermemonteiro/Library/Application Support/PrismLauncher/instances/GT New Horizons 2.7.0/.minecraft"

PATH_TO_BACKUP="/Users/guilhermemonteiro/Library/CloudStorage/GoogleDrive-guilherme.gn.monteiro@gmail.com/O meu disco/backups/gtnh-backups"

TS=$(date +%s) # get current timestamp

PATH_TO_BACKUP_TS="$PATH_TO_BACKUP/tmp/$TS"
# mkdir "$PATH_TO_BACKUP_TS"

# # Recreate local dir, for DEV
# rm -r "gtnh"; mkdir "gtnh"
# PATH_TO_BACKUP_TS="gtnh"

#Save a copy from local files, before overwriting with new files
cp -r "$PATH_TO_MC/saves" "$PATH_TO_BACKUP_TS"
cp -r "$PATH_TO_MC/journeymap" "$PATH_TO_BACKUP_TS"
cp -r "$PATH_TO_MC/visualprospecting" "$PATH_TO_BACKUP_TS"
cp -r "$PATH_TO_MC/TCNodeTracker" "$PATH_TO_BACKUP_TS"
cp -r "$PATH_TO_MC/schematics" "$PATH_TO_BACKUP_TS"
cp -r "$PATH_TO_MC/screenshots" "$PATH_TO_BACKUP_TS"
cp -r "$PATH_TO_MC/resourcepacks" "$PATH_TO_BACKUP_TS"
cp "$PATH_TO_MC/localconfig.cfg" "$PATH_TO_BACKUP_TS"
cp "$PATH_TO_MC/options.txt" "$PATH_TO_BACKUP_TS"
cp "$PATH_TO_MC/BotaniaVars.dat" "$PATH_TO_BACKUP_TS"

# Get the latest backup version
LATEST_BACKUP=$(ls "$PATH_TO_BACKUP/push" | tail -n1)
PATH_TO_LATEST_BACKUP="$PATH_TO_BACKUP/push/$LATEST_BACKUP"

# Pull the most recent version from backup
echo $PATH_TO_LATEST_BACKUP
# yes | cp -rf "$PATH_TO_LATEST_BACKUP/saves" "gtnh-01"
# yes | cp -rf "$PATH_TO_LATEST_BACKUP/journeymap" "gtnh-01"
# rsync -a --delete "$PATH_TO_LATEST_BACKUP/saves/" "gtnh-01/"
yes | cp -r -f -v "$PATH_TO_LATEST_BACKUP/saves" "gtnh-01/saves"