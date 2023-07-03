#!/bin/sh

git filter-branch --env-filter '
OLD_EMAIL="adrianhajdin00@gmail.com"
CORRECT_NAME="eddiemetrium"
CORRECT_EMAIL="eddiemitch262@gmail.com"
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="eddiemetrium"
    export GIT_AUTHOR_EMAIL="eddiemitch262@gmail.com"
fi
' --tag-name-filter cat -- --branches --tags