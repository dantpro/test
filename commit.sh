#!/bin/sh

date=`date +%y%m%d-%H%M%S`

printf "Run git-add...\n"
git add .

printf "Run git-commit on ${date}:\n"
for i in `git status | grep deleted | awk '{print $2}'`; do git rm $i; done

git commit -m 'commited on '${date}
#git commit -m "$date $(curl -s http://whatthecommit.com/index.txt)"

printf "\nRun git-push:\n"
git push -u origin master

printf "\nThe end...\n"


