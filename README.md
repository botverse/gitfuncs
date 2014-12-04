gitfuncs
========

Some command shorteners for Git

Install like this:

```bash
cd ~ && git clone git@github.com:botverse/gitfuncs.git .gitfuncs
echo "source .gitfuncs/gitutils.sh" >> .bash_profile
```

### gc

```bash
$ gc This is my comment 
=> git commit -a -m "This is my comment"
```

### gp

```bash
$ gp
=> git push origin [CURRENT_BRANCH]
```

### ga 

```bash
$ ga
=> git add . 
```

### gac

```bash
$ gac This is my comment
=> ga && gc This is my comment
```

### gb

```bash
$ gb branch-name
# if branch exist
=> git checkout branch-name
# if branch doesnt exist will ask for confirm
=> git checkout -b branch-name
```
