
# command shortcuts
alias lsl='ls -l'
alias lsa='ls -la'

# vagrant shortcuts
alias v='vagrant'
alias vs='vagrant ssh'

# git command shortcuts
alias gs='git status'
alias ga='git add -A'
alias gav='git add */**/version.json && git add package.json'
alias gp='git push'
alias gc='git commit'
alias gca='git commit --amend --no-edit'
alias gr='git remote'
alias gpl='git pull'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gco='git checkout'
alias gpo='git push -u origin'
alias gb='git branch'
alias gd='git diff'
alias gdt='git difftool'
alias gl='git log'
alias gbc='git checkout -b'
alias gt='git log --pretty=oneline --abbrev-commit --name-status'

# git command shortcuts via functions
function gbco () {
	git checkout -b "$1" && git push -u origin "$1"
}

function gtag () {
	git tag -a "$1" -m "$2" && git push origin "$1"
}

function gbdo () {
	git branch -D "$1" && git push origin ":$1"
}
