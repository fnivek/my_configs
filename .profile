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
  add_path "${HOME}/bin"
fi

# Include scripts bin
if [ -d "/opt/scripts/bin" ] ; then
  add_path "/opt/scripts/bin"
fi

# Include go in path
if [ -d "/usr/local/go/bin" ] ; then
  add_path "/usr/local/go/bin"
fi

if [ -d "$HOME/go/bin/" ] ; then
  add_path "$HOME/go/bin"
fi

# dotfilter
# if [ -d "$HOME/.dotfiles/bin" ] ; then
#   add_path "$HOME/.dotfiles/bin"
# fi
source "$HOME/.cargo/env"

# Created by `pipx` on 2022-04-12 22:57:15
export PATH="$PATH:/home/kdfrench/.local/bin"
