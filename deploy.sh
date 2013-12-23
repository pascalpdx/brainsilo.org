#!/bin/bash

echo -e "\033[0;32mDeploying updates to Github...\033[0m"
hugo server --source=./
git add .
msg="rebuilding site `date`"
git commit -m "$msg"
git push origin master
git subtree push --prefix=public public master
