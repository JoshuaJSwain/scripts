
# Note the / slash is explicit. If the gs bucket path is \ it will copy every time and not handle crc rsync checks
$folders = @'
c:/users/joshu/documents
c:/users/joshu/desktop
c:/users/joshu/pictures
c:/users/joshu/"my drive"
'@ -split '\n'

$folders.count
# music backed up locally to usb disk
#c:/users/joshu/Music

foreach ($folder in $folders) {
    gsutil -m rsync -d -r -c -x '^desktop.ini' $($folder) "gs://jswain-backup-pro8/$($folder)"
    
}


#gsutil -m rsync -r -c -x '^desktop.ini' "c:/users/joshu/Desktop" "gs://jswain-backup-pro8/Desktop"

# Get bucket used size
#   gsutil du -ch -s gs://jswain-backup-pro8