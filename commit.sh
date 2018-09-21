#!/bin/sh

# git push ironman repo to github

date=`date +%y%m%d-%H%M%S`

echo "Run git add...\n"

git add .

echo "Run git commit on ${date}...\n"


for i in `git status | grep deleted | awk '{print $2}'`; do git rm $i; done

# git add -u .
#

#git commit -m 'commited on '${date}
git commit -m "$date $(curl -s http://whatthecommit.com/index.txt)"

echo "Run git pudh...\n"
git push -u origin master

