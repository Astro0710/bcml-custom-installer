Invoke-WebRequest 'https://raw.githubusercontent.com/Astro0710/bcml-custom-installer/main/python_path.cmd' -OutFile C:/Windows/Temp/python_path.cmd
Invoke-WebRequest 'https://www.myinstants.com/media/sounds/zeldas-melee.mp3' -OutFile C:/Windows/Temp/zelda-melee.mp3
Invoke-WebRequest 'https://raw.githubusercontent.com/Astro0710/bcml-custom-installer/main/startup.vbs' -OutFile C:/Windows/Temp/startup.vbs
& C:/Windows/Temp/startup.vbs
Invoke-WebRequest 'https://www.myinstants.com/media/sounds/zelda_-botw-item-get-sound-effect_360p-online-audio-converter.mp3' -OutFile C:/Windows/Temp/zelda-item.mp3
Invoke-WebRequest 'https://raw.githubusercontent.com/Astro0710/bcml-custom-installer/main/finish.vbs' -OutFile C:/Windows/Temp/finish.vbs
Invoke-WebRequest 'https://raw.githubusercontent.com/Astro0710/bcml-custom-installer/main/move_lnk.cmd' -OutFile C:/Windows/Temp/move_lnk.cmd
Invoke-WebRequest 'https://github.com/Astro0710/bcml-custom-installer/raw/main/BCML.lnk' -OutFile C:/Windows/Temp/BCML.lnk
Invoke-WebRequest 'https://www.python.org/ftp/python/3.8.0/python-3.8.0-amd64.exe' -OutFile C:/Windows/Temp/python-38.exe
& C:/Windows/Temp/python-38.exe /quiet
Start-Sleep -Seconds 60
cd ~
& C:/Windows/Temp/python_path.cmd
.\/AppData/Local/Programs/Python/Python38/scripts/pip.exe install --upgrade pip
.\/AppData/Local/Programs/Python/Python38/scripts/pip.exe install --force-reinstall bcml
.\/AppData\Local\Programs\Python\Python38\pythonw.exe -m bcml
& C:/Windows/Temp/finish.vbs
& C:/Windows/Temp/move_lnk.cmd
Start-Sleep -Seconds 5
Remove-Item -Path C:/Windows/Temp/python_path.cmd
Remove-Item -Path C:/Windows/Temp/zelda-melee.mp3
Remove-Item -Path C:/Windows/Temp/startup.vbs
Remove-Item -Path C:/Windows/Temp/zelda-item.mp3
Remove-Item -Path C:/Windows/Temp/finish.vbs
Remove-Item -Path C:/Windows/Temp/move_lnk.cmd
Remove-Item -Path C:/Windows/Temp/python-38.exe
exit
