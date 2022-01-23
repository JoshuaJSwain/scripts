$folders = @'
c:\users\joshu\Documents
c:\users\joshu\Desktop
c:\users\joshu\Pictures
c:\users\joshu\Music
'@ -split '\r\n'

foreach ($folder in $folders) {
    gsutil -m rsync -r -x '^desktop.ini' $($folder) "gs://jswain-backup-pro8/$folder"
    
}
