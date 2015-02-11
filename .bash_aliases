
# command shortcuts
alias lsl='ls -l'
alias lsa='ls -la'

# coldfusion shortcuts
alias cf='sudo coldfusion'

# git command shortcuts
alias gs='git status'
alias ga='git add -A'
alias gp='git push'
alias gc='git commit'
alias gr='git remote'
alias gpl='git pull'
alias gf='git fetch'
alias gco='git checkout'
alias gpb='git push -u origin'
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

# to specific directories
alias snippets='cd /Users/smebberson/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/tma-snippets'
alias dotfiles='cd /Library/WebServer/dotfiles/'
