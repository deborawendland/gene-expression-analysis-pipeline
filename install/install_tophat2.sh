#!/usr/bin/env bash

wget https://ccb.jhu.edu/software/tophat/downloads/tophat-2.1.1.Linux_x86_64.tar.gz
tar -xzf tophat-2.1.1.Linux_x86_64.tar.gz
mv tophat-2.1.1.Linux_x86_64 ./install/installations/tophat2
rm tophat-2.1.1.Linux_x86_64.tar.gz