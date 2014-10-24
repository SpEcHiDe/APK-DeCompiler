clear
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

echo INPUT FILE : ${1} > remove.tmp

clear
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
cp ${1} bin/remove.zip >>remove.tmp
echo OUTPUT DIRECTORY ${1:0,-4} CREATED >>remove.tmp
mkdir ${1:0,-4}
clear
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
unzip "bin/remove.zip" -d"${1:0,-4}/" >>remove.tmp
rm "bin/remove.zip"

clear
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
cp "${1:~0,-4}/classes.dex" "bin/2.1/classes.dex" >>remove.tmp
cd "bin/2.1"
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
bash dex2jar.sh classes.dex
rm "classes.dex"
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
cp "bin/2.1/classes_dex2jar.jar" "bin/1.2/classes.jar" >>remove.tmp
rm "bin/2.1/classes_dex2jar.jar"

cd ${1:0,-4}/
mkdir src
rm AndroidManifest.xml
cd ../bin/1.2
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
./jd-gui classes.jar
rm "classes.jar"
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
unzip classes.src.zip -d"${1:0,-4}/src/" >>remove.tmp
rm classes.src.zip

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
cp ${varone} bin/3.1/${varone} >>remove.tmp
cd bin/3.1/
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
bash apktool.sh if framework-res.apk
bash apktool.sh d %varone%
cls
rm ${varone}
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
cp -r "./bin/3.1/${varone:0,-4}/" "./" >>remove.tmp
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
rmdir "bin/3.1/${1:0,-4}" >>remove.tmp
cp "${1}" "${1:0,-4}/" >>remove.tmp
rm "${1}"
# rmdir %USERPROFILE%/apktool /S /Q
# rm remove.tmp

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
nautilus "./${1:0,-4}/"
exit
