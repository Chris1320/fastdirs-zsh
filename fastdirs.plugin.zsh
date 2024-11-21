#!/usr/bin/env bash

# Add a `y` function to zsh that
# opens yazi either at the given
# directory, warp point (wd), or
# at the one zoxide suggests.
#
# $1: The user input
#
# Returns the exit code of yazi
y() {
    # Start yazi normally (current directory)
    # if there is no user input
    if [ -z "$1" ]; then
        yazi
        return $?
    fi

    # If the input is an existing child
    # in the current directory, open it
    if [ -d "$1" ]; then
        yazi "$1"
        return $?
    fi

    # Open yazi in a warp point (wd) if it exists
    if tgt_path="$(wd path "$1")"; then
        yazi "$tgt_path"
        return $?
    fi

    # Lastly, open yazi at the directory zoxide suggests
    if tgt_path="$(zoxide query "$1")"; then
        yazi "$tgt_path"
        return $?
    fi

    # Resort to the default behavior if all else fails
    if [ -z "$1" ]; then
        yazi
        return $?
    fi
}
