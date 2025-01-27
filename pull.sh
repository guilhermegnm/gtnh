# Referencing paths from file
. ./paths.sh

TS=$(date +%s) # get current timestamp

PATH_TO_BACKUP_TS="$PATH_TO_BACKUP/tmp"
mkdir "$PATH_TO_BACKUP_TS"

rm -vr backup_tmp; mkdir -v "backup_tmp"

#Save a copy of local files, before overwriting with new files
cp -r "$PATH_TO_MC/saves" "backup_tmp"
cp -r "$PATH_TO_MC/journeymap" "backup_tmp"
cp -r "$PATH_TO_MC/visualprospecting" "backup_tmp"
cp -r "$PATH_TO_MC/TCNodeTracker" "backup_tmp"
cp -r "$PATH_TO_MC/schematics" "backup_tmp"
cp -r "$PATH_TO_MC/screenshots" "backup_tmp"
cp -r "$PATH_TO_MC/resourcepacks" "backup_tmp"
cp "$PATH_TO_MC/localconfig.cfg" "backup_tmp"
cp "$PATH_TO_MC/options.txt" "backup_tmp"
cp "$PATH_TO_MC/BotaniaVars.dat" "backup_tmp"

# Zip it and send it to cloud
zip -vr "$TS.zip" "backup_tmp"
cp -v "$TS.zip" "$PATH_TO_BACKUP_TS"

rm -v "$TS.zip"; rm -vr backup_tmp

# Get the latest backup version
LATEST_BACKUP=$(ls "$PATH_TO_BACKUP/push" | tail -n1)
PATH_TO_LATEST_BACKUP="$PATH_TO_BACKUP/push/$LATEST_BACKUP"
echo $PATH_TO_LATEST_BACKUP

# Unzip archive to .minecraft
unzip -o "$PATH_TO_LATEST_BACKUP" -d "$PATH_TO_MC/"; echo "unzip"

# Move backup contents from archive to .minecraft
yes | cp -rf "$PATH_TO_MC/backup/"* "$PATH_TO_MC/";
rm -r "$PATH_TO_MC/backup/"


read rn1
