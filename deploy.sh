#!/bin/bash

echo "\e[0;32mDeploying updates to Github...\e[0m"
git add .
msg = 'rebuilding site ' + `date`
git commit -m msg
git push origin master
git subtree push --prefix=public public master
