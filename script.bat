@echo off
title :: APK DeCompiler ::

:main
cls
echo #####################################################
echo #                                                   #
echo #                 APK DeCompiler v 6.79             #
echo #                                                   #
echo #                      by SpEcHiDe                  #
echo #                                                   #
echo #           Credits : https://sPeChIdE.github.io/   #
echo #                                                   #
echo #               Hit THANKS if I helped you          #
echo #                                                   #
echo #####################################################

:inputfile
set /p varone="Name of APK file : "
echo INPUT FILE : %varone% > remove.tmp

:rarx
cls
echo #####################################################
echo #                                                   #
echo #                 APK DeCompiler v 6.79             #
echo #                                                   #
echo #                      by SpEcHiDe                  #
echo #                                                   #
echo #           Credits : https://sPeChIdE.github.io/   #
echo #                                                   #
echo #                 Press F to continue . . .         #
echo #                                                   #
echo #####################################################
xcopy %varone% .\bin\remove.zip >>remove.tmp
echo OUTPUT DIRECTORY %varone:~0,-4% CREATED >>remove.tmp
mkdir %varone:~0,-4%
cls
echo #####################################################
echo #                                                   #
echo #                 APK DeCompiler v 6.79             #
echo #                                                   #
echo #                      by SpEcHiDe                  #
echo #                                                   #
echo #           Credits : https://sPeChIdE.github.io/   #
echo #                                                   #
echo #                eXtracting RESource files          #
echo #                                                   #
echo #####################################################
echo running DEX extraction >>remove.tmp
.\bin\7z.exe x ".\bin\remove.zip" -o".\%varone:~0,-4%\" >>remove.tmp
del ".\bin\remove.zip"

:dexjar
cls
echo #####################################################
echo #                                                   #
echo #                 APK DeCompiler v 6.79             #
echo #                                                   #
echo #                      by SpEcHiDe                  #
echo #                                                   #
echo #           Credits : https://sPeChIdE.github.io/   #
echo #                                                   #
echo #                 Press F to continue . . .         #
echo #                                                   #
echo #####################################################
xcopy ".\%varone:~0,-4%\classes.dex" ".\bin\2.1\classes.dex" >>remove.tmp
cd ".\bin\2.1"
cls
echo #####################################################
echo #                                                   #
echo #                 APK DeCompiler v 6.79             #
echo #                                                   #
echo #                      by SpEcHiDe                  #
echo #                                                   #
echo #           Credits : https://sPeChIdE.github.io/   #
echo #                                                   #
echo #              RUNNING dex to class CONVERTER       #
echo #                                                   #
echo #####################################################
start /wait dex2jar classes.dex
del ".\classes.dex"
cd ..
cd ..
cls
echo #####################################################
echo #                                                   #
echo #                 APK DeCompiler v 6.79             #
echo #                                                   #
echo #                      by SpEcHiDe                  #
echo #                                                   #
echo #           Credits : https://sPeChIdE.github.io/   #
echo #                                                   #
echo #                 Press F to continue . . .         #
echo #                                                   #
echo #####################################################
xcopy ".\bin\2.1\classes_dex2jar.jar" ".\bin\1.2\classes.jar" >>remove.tmp
del ".\bin\2.1\classes_dex2jar.jar"

:codesrc
cd .\%varone:~0,-4%\
mkdir src
del AndroidManifest.xml
cd ..\bin\1.2
cls
echo ##########################################################
echo #                                                        #
echo # A window will open up                                  #
echo #                                                        #
echo # Press Ctrl , Alt , S simultaneously                    #
echo #                                                        #
echo # Save the file to where you have saved this script file #
echo #                                                        #
echo # After saving, close the Java Decompiler window         #
echo #                                                        #
echo ##########################################################
pause
jd-gui.exe classes.jar
del ".\classes.jar"
cd ..
cd ..
cls
echo #####################################################
echo #                                                   #
echo #                 APK DeCompiler v 6.79             #
echo #                                                   #
echo #                      by SpEcHiDe                  #
echo #                                                   #
echo #           Credits : https://sPeChIdE.github.io/   #
echo #                                                   #
echo #                 eXtracting SouRCe files           #
echo #                                                   #
echo #####################################################
.\bin\7z.exe x classes.src.zip -o".\%varone:~0,-4%\src\" >>remove.tmp
del .\classes.src.zip

:xmlsrc
cls
echo #####################################################
echo #                                                   #
echo #                 APK DeCompiler v 6.79             #
echo #                                                   #
echo #                      by SpEcHiDe                  #
echo #                                                   #
echo #           Credits : https://sPeChIdE.github.io/   #
echo #                                                   #
echo #                 Press F to continue . . .         #
echo #                                                   #
echo #####################################################
xcopy %varone% .\bin\3.1\%varone% >>remove.tmp
cd .\bin\3.1\
cls
echo #####################################################
echo #                                                   #
echo #                 APK DeCompiler v 6.79             #
echo #                                                   #
echo #                      by SpEcHiDe                  #
echo #                                                   #
echo #           Credits : https://sPeChIdE.github.io/   #
echo #                                                   #
echo #       creating AndroidManifest resources          #
echo #                                                   #
echo #####################################################
start /wait apktool if framework-res.apk
start /wait apktool d %varone%
cls
del %varone%
cd ..
cd ..
cls
echo #####################################################
echo #                                                   #
echo #                 APK DeCompiler v 6.79             #
echo #                                                   #
echo #                      by SpEcHiDe                  #
echo #                                                   #
echo #           Credits : https://sPeChIdE.github.io/   #
echo #                                                   #
echo #                 Press A to continue . . .         #
echo #                                                   #
echo #####################################################
xcopy ".\bin\3.1\%varone:~0,-4%\*.*" ".\%varone:~0,-4%\" /S /E /I >>remove.tmp
cls
echo #####################################################
echo #                                                   #
echo #                 APK DeCompiler v 6.79             #
echo #                                                   #
echo #                      by SpEcHiDe                  #
echo #                                                   #
echo #           Credits : https://sPeChIdE.github.io/   #
echo #                                                   #
echo #                 Cleaning up . . .                 #
echo #                                                   #
echo #####################################################
rmdir ".\bin\3.1\%varone:~0,-4%" /S /Q
xcopy ".\%varone%" ".\%varone:~0,-4%\" >>remove.tmp
del ".\%varone%"
rmdir %USERPROFILE%\apktool /S /Q
del remove.tmp

:end
cls
echo #################################################
echo #                                               #
echo #             APK DeCompiler v 6.79             #
echo #                                               #
echo #                  by SpEcHiDe                  #
echo #                                               #
echo #       Credits : https://sPeChIdE.github.io/   #
echo #                                               #
echo #         Source code extraction completed      #
echo #                                               #
echo #################################################
pause
explorer.exe ".\%varone:~0,-4%\"
exit