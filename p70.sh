#!/bin/bash

mkdir $HOME/rep && cd $_
touch file1 file2 file3
cd $HOME
tar czf rep.tar.gz rep

scp <file> <username>@<host_ip_address>:<path>
ssh <username>@<host_ip_address>
tar xvf <path>/<file>