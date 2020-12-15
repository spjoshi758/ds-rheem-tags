#!/bin/sh
GIT_BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`

if [ $GIT_BRANCH = "master" ]
then
    ver set --build ""
    ver up
    ver tag --patch
    git add .
    git commit -m "version release"
    git push origin --tags
else
    echo "$GIT_BRANCH is not master branch"
fi

echo "----------Tag Updated Successfully"
