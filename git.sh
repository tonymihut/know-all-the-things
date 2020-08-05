# Write your commit message in the imperative: “Fix bug” and not “Fixed bug” or “Fixes bug.” 
# This convention matches up with commit messages generated by commands like git merge and git revert.

# Stashing
git stash save "<message>" # Stash with <message>
git stash --include-untracked # Stash changes and include untracked files
git stash list # Show a list of stashes
git stash apply stash@{<index>} # Apply the stash from specific <index> position
git stash clear # Delete all stash entries
git stash show stash@{<index>} # Show stash at specific <index> position

# Committing
git --fixup <head> # Do a fixup commit over <head>
git commit --amend # Amend last commit (if it wasnt pushed to remote yet)
git commit --amend --no-edit # Amend last commit (if it wasnt pushed to remote yet) witout editing the commit message

## Staging
git add -i # Perform interactive staging

## Chery pick
git cherry-pick <commit>

# Logging
git log # Show a detail list of commits
git log --oneline # Show a one line list of commits
git log -<number> # Show a log of the last <number> commits
git rev-parse <--short> HEAD<~n> # Show the full(or --short) hash of the latest(or HEAD-~n) commit

# Pushing
git push -u origin <branch> # Push and set upstream <branch> to track curent branch
git push -u origin <localBranch>:<remoteBranch> # Push <localBrach> and set upstream to call it <remoteBranch>

# Merging
git pull origin <branch> -s recursive -X theirs/ours # Merge origin branch using recursive strategy and resolving conflicts to "theirs" or "ours"

# Branching
## Renaming
git branch -m <new-name> # Rename curent branch to <new-name>
git branch -m <old-name>:<new-name> # Rename <old-name> branch to <new-name>
git push origin :<old-name> <new-name> # Delete <old-name> on remote and push <new-name>
git push origin -u <new-name> # Reset upstream to track <new-name>

# Setting a new upstream
git remote rm origin
git remote add origin 'new@origin.com:url/project.git'
git config master.remote origin
git config master.merge refs/head/master

# Git settings
## Local
git config user.email me@awesome.worldwide # Set email address to use on commits

## Global
git config --global core.editor "code --wait" # Set vscode as default editor used by git, substitute "code" for preffered editor but keep in mind the value used must be present in PATH otherwise it will default to VIM!! OMG! :q enter
git config --global --edit ## Open global settings in editor