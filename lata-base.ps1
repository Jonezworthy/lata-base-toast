param (
   [string]$notificationMessage
  
)


if (! (Get-Module -ListAvailable -Name BurntToast)) {
    Write-Host 'BurntToast is not installed, going to attempt to install it first';
    Install-Module -Name BurntToast
} 

$notificationIcon = "$PSScriptRoot\icon.jpg";

$notificationTitle = 'Stick that on the lata-base';

if ($notificationMessage.Length -lt 2){
    $notificationMessage = 'Default Reminder';
} 

Import-Module BurntToast

New-BurntToastNotification -Text $notificationTitle, $notificationMessage -AppLogo $notificationIcon -Sound 'Alarm2' -SnoozeAndDismiss    