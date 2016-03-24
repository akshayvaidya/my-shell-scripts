#!/bin/sh
GIT_INSTALLED_CHECK="$(which -a git)"
if [[ -nz "$GIT_INSTALLED_CHECK" ]]
  then
  echo "Beginning fork sync"
  git reset --hard
  git checkout master
  git fetch upstream
  git rebase upstream/master
  git push origin master
  echo "Fork sync complete"
else
  echo "git not installed"
fi
