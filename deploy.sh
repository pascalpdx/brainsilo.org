#!/bin/bash

echo -e "\033[0;32mDeploying updates to Github...\033[0m"
hugo --source=./
git add .
git commit -m "rebuilding site `date`"
git push origin master
git subtree push --prefix=public public master
