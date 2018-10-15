Git Commands
============

_A list of my commonly used Git commands_

*If you are interested in my Git aliases, have a look at my `.bash_profile`, found here: https://github.com/joshnh/bash_profile/blob/master/.bash_profile*

## Getting & Creating Projects

| Command | Description |
| ------- | ----------- |
| `git init` | Initialize a local Git repository |
| `git clone ssh://git@github.com/[username]/[repository-name].git` | Create a local copy of a remote repository |
| `git remote show origin`| Show URL of remote |

### Basic Snapshotting

| Command | Description |
| ------- | ----------- |
| `git status` | Check status |
| `git add [file-name.txt]` | Add a file to the staging area |
| `git add -A` | Add all new and changed files to the staging area |
| `git commit -m "[commit message]"` | Commit changes |
| `git rm -r [file-name.txt]` | Remove a file (or folder) |
| `git reset filename.txt` | remove files staged for a git commit |
| `git add —patch <filename>`|add interactive part of file|
| `git commit —amend`| undo|

#### Interactive patch

`git add —patch <filename>`
| Command | Description |
| ------- | ----------- |
|y | stage this hunk for the next commit
|n | do not stage this hunk for the next commit
|q | quit;
|a | stage this hunk and all later hunks in the file
|d | do not stage this hunk and all later hunks in the file
|g | select a hunk to go to
|/ | search for a hunk matching the given regex
|j| leave this hunk undecided, see next undecided hunk
|J | leave this hunk undecided, see net hunk
|k | leave this hunk undecided, see previous undecided hunk
|K | leave this hunk undecided, see previous hunk 
|s | split the current hunk into smaller hunks
|e | manually edit the current hunk
|? | print help

### Branching & Merging

| Command | Description |
| ------- | ----------- |
| `git branch` | List branches (the asterisk denotes the current branch) |
| `git branch -a` | List all branches (local and remote) |
| `git branch [branch name]` | Create a new branch |
| `git branch -d [branch name]` | Delete a branch |
| `git push origin --delete [branchName]` | Delete a remote branch |
| `git checkout -b [branch name]` | Create a new branch and switch to it |
| `git checkout -b [branch name] origin/[branch name]` | Clone a remote branch and switch to it |
| `git checkout [branch name]` | Switch to a branch |
| `git checkout -` | Switch to the branch last checked out |
| `git checkout -- [file-name.txt]` | Discard changes to a file |
| `git merge [branch name]` | Merge a branch into the active branch |
| `git merge [source branch] [target branch]` | Merge a branch into a target branch |
|`git checkout [r-branch]; git rebase master`|rebase branch|
|`git rebase -i HEAD~4`|edit last 4 commits|
|`git remote [show|rm|rename] branchName`|working with remote|
| `git stash` | Stash changes in a dirty working directory |
| `git stash clear` | Remove all stashed entries |

### Sharing & Updating Projects

| Command | Description |
| ------- | ----------- |
| `git push origin [branch name]` | Push a branch to your remote repository |
| `git push -u origin [branch name]` | Push changes to remote repository (and remember the branch) |
| `git push` | Push changes to remote repository (remembered branch) |
| `git push origin --delete [branch name]` | Delete a remote branch |
| `git pull` | Update local repository to the newest commit |
| `git pull origin [branch name]` | Pull changes from remote repository |
| `git remote add origin ssh://git@github.com/[username]/[repository-name].git` | Add a remote repository |
| `git remote set-url origin ssh://git@github.com/[username]/[repository-name].git` | Set a repository's origin branch to SSH |

### Inspection & Comparison

| Command | Description |
| ------- | ----------- |
|`git branch -v`| show last commit|
|`git branch —merged master`|get all branches already merged into master|
| `git show commit_hash` | show changes of in specific commit |
| `git log commit_hash -n 1 -p` | show changes of in specific commit |
| `git log` | View changes |
| `git log --summary` | View changes (detailed) |
| `git diff [source branch] [target branch}` | Preview changes before merging |
|`git log -15 --graph`| Show graph history |
|`git log -15 --pretty`| pretty output|
|`git log -15 --stat`|	with stat of commit|
|`git log —-oneline -—decorate -—graph —-all`| all commits pretty|
|`git log --pretty=format:"%h - %an, %ar : %s"`| commit history|
|`git log --pretty=format:"%h %s" HEAD~2..HEAD`|show log of last 3 commits|
|`git log --since=2.week`|show log for last two weeks|
|`git log -g --grep="str_to_find"`|filter by commit subject|

#### git log command options
|Option|Description of Output|
| ---- | --------------------|
|%H| Commit hash|
| %h| Abbreviated commit hash|
|%T| Tree hash|
|%t| Abbreviated tree hash|
|%P| Parent hashes|
|%p| Abbreviated parent hashes|
|%an| Author name|
|%ae| Author e-mail|
|%ad| Author date (format respects the --date=option)|
|%ar| Author date, relative|
|%cn| Committer name|
|%ce| Committer email|
|%cd| Committer date|
|%cr| Committer date, relative|
|%s| Subject|
|-p| Show the patch introduced with each commit.   
|--stat| Show statistics for files modified in each commit 
|--shortstat| Display only the changed/insertions/deletions line from the |--stat| command. 
|—name-only| Show the list of files modified a er the commit information 
|—name-status| Show the list of files a ected with added/modified/deleted information as well. 
|—abbrev-commit| how only the first few characters of the SHA-1 checksum 
|—relative-date| Display the date in a relative format (for example, “2 weeks ago”) instead of using the full date format 
|—graph| Display an ASCII graph of the branch and merge history be- side the log output. 
|--pretty| Show commits in an alternate format. Options include one- line, short, full, fuller, and format (where you specify your own format). 
