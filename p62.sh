#!/bin/bash

#cd $HOME
#mkdir tmp_directory && echo "$?"

cd $HOME
mkdir tmp_directory && echo "$?" 1>creation.txt

cal 1>>creation.txt 2>/dev/null