# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# For Go
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/projects

# For lighting up my keyboard :)
g810-led -a ffaa00 > /dev/null

# For the trello CLI
export TRELLO_DEVELOPER_PUBLIC_KEY=60be77a9f7a591a1b077122ae6b75ce5
export TRELLO_MEMBER_TOKEN=f2f8440a0f27536ae6295b8b3415824c78dea640d7e688eec4f0f78e901b3f9a
