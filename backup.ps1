
# Note the / slash is explicit. If the gs bucket path is \ it will copy every time and not handle crc rsync checks
$folders = @'
c:/users/joshu/Documents
c:/users/joshu/Desktop
c:/users/joshu/Pictures
c:/users/joshu/Music
'@ -split '\r\n'

foreach ($folder in $folders) {
    gsutil -m rsync -r -c -x '^desktop.ini' $($folder) "gs://jswain-backup-pro8/$folder"
    
}


#gsutil -m rsync -r -c -x '^desktop.ini' "c:/users/joshu/Desktop" "gs://jswain-backup-pro8/Desktop"