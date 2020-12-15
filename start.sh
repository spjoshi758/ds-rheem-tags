GIT_BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`

echo "Branch name is $GIT_BRANCH"

if ["$GIT_BRANCH" = "master"]
then
    ver set --build ""
    ver up
    ver tag
    git add .
    git commit -m "version release"
    git push origin --tags


echo "Tag Updated Successfully"
