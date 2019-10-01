@echo off
REM Converts x.509 SSL certificate from PEM to CER format
if [%1] == [] goto :usage
if exist %1.pem (
   bin\openssl x509 -inform pem -in %1.pem -outform der -out %1.cer 
) else (
   echo %1.pem not found
)
goto :complete
:complete
if exist %1.cer (
   echo x509 certificate available in %1.cer
) else (
   echo Conversion failed
)
goto :end
:usage
echo cer2pem pemfilename (without extension)
goto :end
:end
