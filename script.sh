#!/bin/sh
BRANCH_TAGS=$(git ls-remote --sort=-version:refname --tags origin | sed -r "s/.*\///g")
echo "$BRANCH_TAGS"
REGEX="[0-9].[0-9].[0-9]"
for tag in ${BRANCH_TAGS[@]}
do
    if [[ $tag =~ $REGEX ]]
    then
        echo "The Git repo contains the Semantic Tag and it is $tag"
        break
    fi
done