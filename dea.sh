#!/bin/sh

usage()  
 {  
 echo "Usage: $0 task message"  
 exit 1  
 }

if [ $# -ne 2 ]; then usage; fi

git config user.email "jenisov@gmail.com"
git config user.name "Evgeny Denisov"
git add $1.ipynb
git commit -m "$2"
git push -u origin main:$1-pr
