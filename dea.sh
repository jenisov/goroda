#!/bin/sh

usage()  
 {  
 echo "Usage: $0 task message"  
 exit 1  
 }

if [ $# -ne 2 ]; then usage; fi

git config user.email "jenisov@gmail.com"
git config user.name "Evgeny Denisov"
git config credential.helper manager

read -s -p "token: " ghtoken
echo 

git remote set-url origin https://jenisov:${ghtoken}@github.com/jenisov/goroda

#git add $1.ipynb
git add -A
git commit -m "$2"

#git push -u origin main:$1-pr
git push -u origin main
