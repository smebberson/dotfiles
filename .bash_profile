# load in the platform file
if [ ! -e $HOME/.platform ]; then
	echo "Create either a .mac or .linux file in the dotfiles location and run the install script again."
fi

PLATFORM=$(cat ~/.platform)

# keep our files modular and specific
# load them in as a standalone, and their platform specific counterparts too
for ref in ".development" ".bash_aliases" ".bash_colors" ".bash_prompt" ".bash_exports" "z.sh"; do

	# do the file itself
	if [ -e $HOME/$ref ] || [ -h $HOME/$ref ]; then
		source $HOME/$ref
	fi

	# source platform specific related
	for pf in "linux" "mac"; do

		if [ -e "${HOME}/${ref}_${pf}" ] && [ "${PLATFORM}" = "${pf}" ]; then
			source "${HOME}/${ref}_${pf}"
		fi

	done

done

# Node.js version manager.
export NVM_DIR="/Users/smebberson/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Ruby version manager.
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
