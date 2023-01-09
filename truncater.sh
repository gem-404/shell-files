#!/bin/sh

cut_sha="$1"
branch="$2"

git filter-branch \
  --parent-filter "sed -e 's/-p $cut_sha[0-9a-f]*//'" \
  --prune-empty \
  -- $branch

git for-each-ref --format='%(refname)' refs/original | \
  while read ref
  do
    git update-ref -d "$ref"
  done

git reflog expire --expire=0 --all
git repack -ad
git prune
