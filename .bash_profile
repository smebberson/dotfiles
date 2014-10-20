
# Git v2.0.1
export PATH="/usr/local/git/bin:$PATH"

# ruby and gem via chef-dk
export PATH="/opt/chefdk/embedded/bin:${HOME}/.chefdk/gem/ruby/2.1.0/bin:$PATH"

# Add in .development
if [ -s ~/.development ] || [ -h ~/.development ]; then
	source ~/.development
fi

# Add in aliases
if [ -s ~/.bash_aliases ] || [ -h ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

# Add in themes
source ~/.bash_colors
source ~/.bash_prompt
