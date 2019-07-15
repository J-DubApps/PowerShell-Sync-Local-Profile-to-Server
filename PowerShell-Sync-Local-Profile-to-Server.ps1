# This PowerShell script uses robocopy to sync a user's local Desktop, Documents, Downloads and Pictures folder to a network location.

# Remote location path
$RemoteProfile = "\\servername\$env:username\LocalBackup\$env:computername"

# Start log
Start-Transcript -Path "$RemoteProfile\backup-local-user-profile.log"

# Copy Desktop
ROBOCOPY "$env:userprofile\Desktop" "$RemoteProfile\Desktop" /MIR /NFL /NDL /R:0 /W:0 /E

# Copy Documents
ROBOCOPY "$env:userprofile\Documents" "$RemoteProfile\Documents" /MIR /NFL /NDL /R:0 /W:0 /E

# Copy Downloads
ROBOCOPY "$env:userprofile\Downloads" "$RemoteProfile\Downloads" /MIR /NFL /NDL /R:0 /W:0 /E

# Copy Pictures
ROBOCOPY "$env:userprofile\Pictures" "$RemoteProfile\Pictures" /MIR /NFL /NDL /R:0 /W:0 /E

# End log
Stop-Transcript

exit
