##[Ps1 To Exe]
##
##Kd3HDZOFADWE8uO1
##Nc3NCtDXTlaDjofG5iZk2VzhUWYiUuSLqZKm0ICA0+XvuinleYgbTkZ2mzrANFKpUf0cacUMoNkeW05yE94C4I7DEvOsCLILkeh+bOCdmrAqGFbk55Lg0iWQzJDMUAVhWTw=
##Kd3HFJGZHWLWoLaVvnQnhQ==
##LM/RF4eFHHGZ7/K1
##K8rLFtDXTiS5
##OsHQCZGeTiiZ4NI=
##OcrLFtDXTiW5
##LM/BD5WYTiiZ49I=
##McvWDJ+OTiiZ49I=
##OMvOC56PFnzN8u+VslQ=
##M9jHFoeYB2Hc8u+VslQ=
##PdrWFpmIG2HcofKIo2QX
##OMfRFJyLFzWE8uK1
##KsfMAp/KUzWI0g==
##OsfOAYaPHGbQvbyVvnQmqxugEiZ6Dg==
##LNzNAIWJGmPcoKHc7Do3uAu/DDhlPovK2Q==
##LNzNAIWJGnvYv7eVvnRVxmbCD1suetCL2Q==
##M9zLA5mED3nfu77Q7TV64AuzAkoIQ+nWirOz0ZHc
##NcDWAYKED3nfu77Q7TV64AuzAmooY8mksLi00ICw8+/+2w==
##OMvRB4KDHmHQvbyVvnRE7Eb+TnFrb9CPtvauypKo/ubg+wf6ZLZ0
##P8HPFJGEFzWE8pvR6FQ=
##KNzDAJWHD2fS8u+Vxztk4EX6Ig==
##P8HSHYKDCX3N8u+VzTsX
##LNzLEpGeC3fMu77Ro2k3y0SO
##L97HB5mLAnfMu77Ro2k3y0SO
##P8HPCZWEGmaZ7/Lw7T54/AqO
##L8/UAdDXTlaDjofG5iZk2VzhUWYiUuGeqr2zy5GA/enhtxrYXI4bQFpkgijwCE6vF/cKUJU=
##Kc/BRM3KXxU=
##
##
##fd6a9f26a06ea3bc99616d4851b372ba
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