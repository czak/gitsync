#!/bin/sh
git clone --bare --depth 1 $REPO_URL /gitsync/repo.git
alias gitsync="git --git-dir=/gitsync/repo.git --work-tree=/gitsync/worktree"
gitsync add .
gitsync commit -m "`date`"
gitsync push origin master
