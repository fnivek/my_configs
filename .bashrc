# Include bash functions
source ~/.bash_funcs.sh

# Source all files in .bash
for f in ~/.bash/*.sh; do
  source "${f}"
done

