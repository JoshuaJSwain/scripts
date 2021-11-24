$folders = @'
c:\users\joshu\desktop
C:\Users\joshu\Documents
c:\users\joshu\pictures
'@ -split '\n'


foreach ($folder in $folders) {
    gsutil -m rsync -r $($folder) 'gs://jswain-backup-pro8'
    
}
