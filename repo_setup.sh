#!/bin/bash
cp ./pre-push ~/katello/.git/hooks
cp ./pre-push ~/foreman/.git/hooks
cp ./ktest ~/foreman
cp ./ktest-live ~/foreman 
echo "ktest*" >> ~/foreman/.git/info/exclude

cd ~/katello
git remote add origin git@github.com:lfu/katello.git
git remote add master https://github.com/katello/katello.git
#git fetch --all

cd ~/foreman
git remote add origin git@github.com:lfu/foreman.git
git remote add master https://github.com/foreman/foreman.git
echo "DONE"
