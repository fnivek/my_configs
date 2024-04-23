# Include bash functions
source ~/.bash_funcs.sh

# Source all files in .bash
for f in ~/.bash/*.sh; do
  source "${f}"
done

source "$HOME/.cargo/env"

# Created by `pipx` on 2022-04-12 22:57:15
add_path "/home/kdfrench/.local/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

