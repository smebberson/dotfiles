
# Amazon EC2 Configuration
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

# Phantomjs configration
export PATH=$PATH:/opt/phantomjs/bin

# For nginx
export PATH=$PATH:/usr/local/nginx:/usr/local/nginx/sbin

# Node version manager
if [ -s ~/.nvm/nvm.sh ]; then
	source ~/.nvm/nvm.sh
fi

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

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
