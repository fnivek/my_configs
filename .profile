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

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Include scripts bin
if [ -d "/opt/scripts/bin" ] ; then
  PATH="/opt/scripts/bin:$PATH"
fi

# Include go in path
if [ -d "/usr/local/go/bin" ] ; then
  PATH="/usr/local/go/bin:$PATH"
fi
if [ -d "$HOME/go/bin/" ] ; then
  PATH="$HOME/go/bin:$PATH"
fi

# dotfilter
if [ -d "$HOME/.dotfiles/bin" ] ; then
  PATH="$HOME/.dotfiles/bin:$PATH"
fi

# Fix matlab
if [ -d "/usr/local/MATLAB/R2016b/sys/opengl/lib/glnxa64" ] ; then
  PATH="/usr/local/MATLAB/R2016b/sys/opengl/lib/glnxa64:$PATH"
fi
