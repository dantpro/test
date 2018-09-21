#!/bin/sh

# git push ironman repo to github

date=`date +%y%m%d-%H%M%S`

echo run git add
git add .

echo run git push on ${date}


for i in `git status | grep deleted | awk '{print $2}'`; do git rm $i; done

# git add -u .
#
git commit -m 'commited on '${date}

#git commit -m "$dated $(curl -s http://whatthecommit.com/index.txt)"
git push -u origin master

