# Latabase with toast 
Latabase with toast notifications


# How to run
All you need to do is run the .ps1 script with a single string argument that you wish to have as the reminder
~~~
powershell.exe -windowstyle hidden PATHTOSCRIPT\lata-base.ps1 'Notification'
~~~
We recommend creating an environment variable to make this quicker

# Set up
Store this in an environment variable (e.g 'r'):
~~~
powershell.exe -windowstyle hidden PATHTOSCRIPT\lata-base.ps1 
~~~

Then in the run window type in:
~~~
%r% 'hello'
~~~
