#!/bin/bash

# sudo apt install p7zip-full

dossierSource="/tmp"
mdp="test"

if [ $dossierSource == "" ];
then
	dossierSource='/home/'$(whoami)
fi

cd $dossierSource

if [[ -f backup_linux_$(date +%Y_%m_%d).7z ]];
then
	rm backup_linux_$(date +%Y_%m_%d).7z
fi

7z a -p$mdp -mhe backup_linux_$(date +%Y_%m_%d).7z

md5sum backup_linux_$(date +%Y_%m_%d).7z > MD5_backup_linux_$(date +%Y_%m_%d).7z.txt

