@echo off
REM Retrieves website SSL certificate using Openssl
if [%1] == [] goto :usage
bin\openssl s_client -connect %1:%2<NUL>cert.tmp
bin\sed -ne "/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p" cert.tmp > %1.pem
goto :complete
:usage
echo usage: getcert hostname port
echo.
echo Where hostname is the hostname of the server containing the SSL certificate
echo Where port is the port to connect to
goto :end
:complete
if exist cert.tmp del cert.tmp
if exist %1.pem (
  echo Successfully generated in %1.pem.
) else (
  echo Failed to generate certificate.
)
goto :end
:end


