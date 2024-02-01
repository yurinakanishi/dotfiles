#!/bin/zsh

# Path to the directory containing your dotfiles
DOTFILES_DIR=~/dotfiles

# Ensure the .config/nvim directory exists
mkdir -p ${HOME}/.config/nvim

# Function to create symbolic links
create_link() {
    src=$1
    target=$2
    if [ -f "${src}" ] || [ -d "${src}" ]; then
        # Prompt for overwrite if target exists, and create the symbolic link
        ln -siv "${src}" "${target}"
    else
        echo "Source does not exist: ${src}"
    fi
}

# nvim
create_link "${DOTFILES_DIR}/nvim/init.lua" "${HOME}/.config/nvim/init.lua"

# zsh and tmux
for dir in zsh tmux; do
    for file in ${DOTFILES_DIR}/${dir}/.*; do
        if [[ -f $file ]]; then
            create_link "${file}" "${HOME}/$(basename ${file})"
        fi
    done
done

echo "Symbolic links creation complete."
