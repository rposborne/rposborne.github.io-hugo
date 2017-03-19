#!/bin/bash

red=$'\e[1;31m'
grn=$'\e[1;32m'
end=$'\e[0m'
echo -e "${grn}Deploying updates to GitHub...${end}"

# Build the project.
hugo # if using a theme, replace by `hugo -t <yourtheme>`

git diff --no-ext-diff --quiet --exit-code >/dev/null 2>&1; ec=$?;

if test "$ec" = 1; then
    echo -e "${red}Uncommitted changes. please commit to deploy${end}"
    exit 1;
fi

# Go To Public folder
cd public
# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back
cd ..
