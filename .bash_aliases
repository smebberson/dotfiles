
# command shortcuts
alias lsl='ls -l'
alias lsa='ls -la'

# git command shortcuts
alias gs='git status'
alias ga='git add -A'
alias gp='git push'
alias gc='git commit'
alias gca='git commit --amend --no-edit'
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

function gbdo () {
	git branch -D "$1" && git push origin ":$1"
}

# do anything platform specific related
for pf in "linux" "mac"; do

	if [ -e "${HOME}/.bash_aliases_${pf}" ] && [ "${PLATFORM}" = "${pf}" ]; then
		source "${HOME}/.bash_aliases_${pf}"
	fi

done
