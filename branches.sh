# Git Branch by Date
# Source: http://stackoverflow.com/questions/5188320/how-can-i-get-a-list-of-git-branches-ordered-by-most-recent-commit/17405287#17405287

reset_color=`tput sgr0`
subject_color=`tput setaf 4 ; tput bold`
author_color=`tput setaf 6`

target=refs/heads
branch_color=`git config --get-color color.branch.local white`

if [ "$1" = -r ]
then
  target=refs/remotes/origin
  branch_color=`git config --get-color color.branch.remote red`
fi

git for-each-ref --sort=committerdate $target --format="${branch_color}%(refname:short)${reset_color} ${subject_color}%(subject)${reset_color} ${author_color}- %(authorname) (%(committerdate:relative))${reset_color}"

