# added by Anaconda2 installer
add_path "/home/fnivek/software/anaconda2/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/fnivek/software/miniconda2/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/fnivek/software/miniconda2/etc/profile.d/conda.sh" ]; then
        . "/home/fnivek/software/miniconda2/etc/profile.d/conda.sh"
    else
        add_path "/home/fnivek/software/miniconda2/bin"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Fix gsettings error
export GIO_EXTRA_MODULES=/usr/lib/x86_64-linux-gnu/gio/modules/

# Remove the pythonpath env var
unset PYTHONPATH