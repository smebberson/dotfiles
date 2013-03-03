
# Amazon EC2 Configuration
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

# Phantomjs configration
export PATH=$PATH:/opt/phantomjs/bin

# Node version manager
if [ -s ~/.nvm/nvm.sh ]; then
	source ~/.nvm/nvm.sh
fi

# Add in extras
if [ -s ~/.extras ] || [ -h ~/.extras ]; then
	source ~/.extras
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
