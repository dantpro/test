#!/bin/sh

# git push ironman repo to github

date=`date +%y%m%d-%H%M%S`

echo "Run git add...\n"

git add .

echo "Run git push on ${date}...\n"


for i in `git status | grep deleted | awk '{print $2}'`; do git rm $i; done

# git add -u .
#
#git commit -m 'commited on '${date}

git commit -m "$dated $(curl -s http://whatthecommit.com/index.txt)"
git push -u origin master

