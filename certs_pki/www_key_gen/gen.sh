#!/bin/bash

cfssl gencert -initca ca-csr.json | cfssljson -bare ca
cfssl gencert -initca -ca-key ca-key.pem ca-csr.json | cfssljson -bare ca
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=www www-csr.json | cfssljson -bare www
