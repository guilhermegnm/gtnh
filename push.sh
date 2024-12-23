PATH_TO_MC="/Users/guilhermemonteiro/Library/Application Support/PrismLauncher/instances/GT New Horizons 2.7.0/.minecraft"

PATH_TO_BACKUP="/Users/guilhermemonteiro/Library/CloudStorage/GoogleDrive-guilherme.gn.monteiro@gmail.com/O meu disco/backups/gtnh-backups"

TS=$(date +%s) # get current timestamp

PATH_TO_BACKUP_TS="$PATH_TO_BACKUP/push/$TS"
mkdir "$PATH_TO_BACKUP_TS"

# # Recreate local dir, for DEV
# rm -r "gtnh"; mkdir "gtnh"
# PATH_TO_BACKUP_TS="gtnh"

cp -vr "$PATH_TO_MC/saves" "$PATH_TO_BACKUP_TS"
cp -vr "$PATH_TO_MC/journeymap" "$PATH_TO_BACKUP_TS"
cp -vr "$PATH_TO_MC/visualprospecting" "$PATH_TO_BACKUP_TS"
cp -vr "$PATH_TO_MC/TCNodeTracker" "$PATH_TO_BACKUP_TS"
cp -vr "$PATH_TO_MC/schematics" "$PATH_TO_BACKUP_TS"
cp -vr "$PATH_TO_MC/screenshots" "$PATH_TO_BACKUP_TS"
cp -vr "$PATH_TO_MC/resourcepacks" "$PATH_TO_BACKUP_TS"
cp -v "$PATH_TO_MC/localconfig.cfg" "$PATH_TO_BACKUP_TS"
cp -v "$PATH_TO_MC/options.txt" "$PATH_TO_BACKUP_TS"
cp -v "$PATH_TO_MC/BotaniaVars.dat" "$PATH_TO_BACKUP_TS"

var=$(ls "$PATH_TO_BACKUP" | tail -n1)
echo $var