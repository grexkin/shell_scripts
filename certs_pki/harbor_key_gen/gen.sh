#!/bin/bash

cfssl gencert -initca ca-csr.json | cfssljson -bare ca
cfssl gencert -initca -ca-key ca-key.pem ca-csr.json | cfssljson -bare ca
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=hub hub-csr.json | cfssljson -bare hub
