#!/bin/bash

# should download latest version instead
sudo curl https://binaries.cockroachdb.com/cockroach-v22.1.1.linux-amd64.tgz | tar -xz && sudo cp -i cockroach-v22.1.1.linux-amd64/cockroach /usr/local/sbin/
sudo mkdir -p /usr/local/lib/cockroach
sudo cp -i cockroach-v22.1.1.linux-amd64/lib/libgeos.so /usr/local/lib/cockroach/
sudo cp -i cockroach-v22.1.1.linux-amd64/lib/libgeos_c.so /usr/local/lib/cockroach/
