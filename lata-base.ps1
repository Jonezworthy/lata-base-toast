param (
   [string]$notificationMessage
  
)

$notificationIcon = "$env:s\me.jpg";

$notificationTitle = 'Stick that on the lata-base';

if ($notificationMessage.Length -lt 2){
    $notificationMessage = 'Default Reminder';
} 

Import-Module BurntToast

New-BurntToastNotification -Text $notificationTitle, $notificationMessage -AppLogo $notificationIcon -Sound 'Alarm2' -SnoozeAndDismiss