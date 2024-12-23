PATH_TO_MC="/Users/guilhermemonteiro/Library/Application Support/PrismLauncher/instances/GT New Horizons 2.7.0/.minecraft"

PATH_TO_BACKUP="/Users/guilhermemonteiro/Library/CloudStorage/GoogleDrive-guilherme.gn.monteiro@gmail.com/O meu disco/backups/gtnh-backups"

TS=$(date +%s) # get current timestamp

PATH_TO_BACKUP_TS="$PATH_TO_BACKUP/push"
mkdir "$PATH_TO_BACKUP_TS"

rmdir -vr backup; mkdir -v "backup"

cp -r "$PATH_TO_MC/saves" "backup"
cp -r "$PATH_TO_MC/journeymap" "backup"
cp -r "$PATH_TO_MC/visualprospecting" "backup"
cp -r "$PATH_TO_MC/TCNodeTracker" "backup"
cp -r "$PATH_TO_MC/schematics" "backup"
cp -r "$PATH_TO_MC/screenshots" "backup"
cp -r "$PATH_TO_MC/resourcepacks" "backup"
cp "$PATH_TO_MC/localconfig.cfg" "backup"
cp "$PATH_TO_MC/options.txt" "backup"
cp "$PATH_TO_MC/BotaniaVars.dat" "backup"

zip -vr "$TS.zip" "backup"

cp -v "$TS.zip" "$PATH_TO_BACKUP_TS"

rm -v "$TS.zip"; rmdir -vr backup