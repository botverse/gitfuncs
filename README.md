gitfuncs
========

Some command shorteners for Git

Install like this:

cd ~ && git clone https://gist.github.com/botverse/2d1458200db1b84d5620 .gitfonz
echo "source .gitfonz/gitutils.sh" >> .bash_profile

## $ gc This is my comment 

=> git commit -a -m "This is my comment"

## $ gp

=> git push origin [CURRENT_BRANCH]

## $ ga

=> git add . 

## $ gac This is my comment

=> ga && gc This is my comment

## $ gb branch-name

if branch exist
=> git checkout branch-name
if branch doesnt exist will ask for confirm
=> git checkout -b branch-name
