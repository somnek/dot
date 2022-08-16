#!/bin/bash

PACKAGE=$1
sudo apt-get purge --auto-remove "$PACKAGE" && \
sudo apt autoremove

