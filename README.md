# SSLHelper
Batch scripts to handle SSL operations using Openssl. These set of scripts uses the embedded OpenSSL 1.1.1 (Sep 2018) binaries
located in the bin folder. These batch scripts are written for the Windows console.

# Scripts
The following batch scripts are available.

## GetCert.bat
Saves a given hostname's SSL certificate in x.509 (PEM) Base64 encoded format.

usage: getcert.bat hostname

Where hostname is the website's hostname.

## Cer2Pem.bat
Converts an x.509 SSL certificate from PEM to CER (binary) format

usage: Cer2Pem.bat certfile

Where certfile is the filename of the PEM certificate file without its extension.
