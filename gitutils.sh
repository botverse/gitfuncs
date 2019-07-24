# Utility functions for git
# 
# Install like this:
# cd ~ && git clone https://gist.github.com/botverse/2d1458200db1b84d5620 .gitfonz
# echo "source .gitfonz/gitutils.sh" >> .bash_profile

# $ gc This is my comment 
# => git commit -a -m "This is my comment"

function gc() {
  #from http://stackoverflow.com/a/21453306/252675
  #assuming flag is first arg and optional
  flag=$1
  [[ $1 = ${1#-} ]] && unset $flag || shift

  concat=$(printf '%s ' ${@})
  git commit -a -m "${concat% }" # to remove the trailing space
}

# $ gp
# => git push origin [CURRENT_BRANCH]

function gp() {
  git push origin `git rev-parse --abbrev-ref HEAD`
}

# $ ga
# => git add . 

function ga() {
  git add .
}

# $ gac This is my comment
# => ga && gc This is my comment

function gac() {
  ga
  gc "$@"
}

# $ gb branch-name
# if branch exist
# => git checkout branch-name
# if branch doesnt exist will ask for confirm
# => git checkout -b branch-name

function gb () {
  branch_name=$1

  git show-ref --verify --quiet refs/heads/${branch_name}
  if [ $? == 0 ]
  then
    git checkout ${branch_name}
    return;
  fi

  read -p "Branch $branch_name does't exist, do you want to create it? " -n 1 -r
  echo    # blank line
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    git checkout -b ${branch_name}
  fi
}

function gs () {
  git branch --sort=-committerdate
}
