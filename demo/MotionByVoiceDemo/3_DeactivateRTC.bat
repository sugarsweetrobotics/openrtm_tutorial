REM ''' Usage of this file
REM %1 usb drive to be used
REM '''

set usbdrive=%1
%usbdrive%
cd openrtm_tutorial\demo\MotionByVoiceDemo
echo Moved to DIR=%cd%

for /f "usebackq" %%h in (`hostname`) do set HOSTNAME=%%h

rem call ..\Apps\rtshell\rtdeact 127.0.0.1/%HOSTNAME%.host_cxt/KinectRTC0.rtc
rem call ..\Apps\rtshell\rtdeact 127.0.0.1/%HOSTNAME%.host_cxt/CvMonitor0.rtc
rem call ..\Apps\rtshell\rtdeact 127.0.0.1/%HOSTNAME%.host_cxt/Skelton2JointAngle0.rtc
rem call ..\Apps\rtshell\rtdeact 127.0.0.1/%HOSTNAME%.host_cxt/SimpleGesture0.rtc
call ..\Apps\rtshell\rtdeact 127.0.0.1/%HOSTNAME%.host_cxt/SEAT0.rtc
call ..\Apps\rtshell\rtdeact 127.0.0.1/%HOSTNAME%.host_cxt/Cnoid_RobotMotion0.rtc

rem These processes are added by trial to mimic "0 SpeechDemo"
call ..\Apps\rtshell\rtdeact 127.0.0.1/%HOSTNAME%.host_cxt/JuliusRTC0.rtc
call ..\Apps\rtshell\rtdeact 127.0.0.1/%HOSTNAME%.host_cxt/PortAudioInput0.rtc

call ..\Apps\rtshell\rtdeact 127.0.0.1/%HOSTNAME%.host_cxt/PortAudioOutput0.rtc
