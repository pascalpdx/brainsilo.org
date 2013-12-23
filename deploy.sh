#!/bin/bash

echo "\e[0;32mDeploying updates to Github...\e[0m"
git add .
git commit -m 'rebuilding site ' + `date`
git push origin master
git subtree push --prefix=public public master
