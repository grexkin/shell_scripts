#!/bin/bash

if ! which cfssl; then
    wget https://pkg.cfssl.org/R1.2/cfssl_linux-amd64 -O /usr/local/bin/cfssl
fi
if ! which cfssljson; then
    wget https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64 -O /usr/local/bin/cfssljson
fi
if ! which cfssl-certinfo; then
    wget https://pkg.cfssl.org/R1.2/cfssl-certinfo_linux-amd64 -O /usr/local/bin/cfssl-certinfo
fi
chmod +x /usr/local/bin/cfssl*
