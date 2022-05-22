#!/usr/bin/env bash
if [[ -n $ZSH_VERSION ]]; then
  autoload -U +X bashcompinit && bashcompinit
  autoload -U +X compinit && compinit
fi

# === COMPLETION SCRIPT START ===

# mygit completion                                         -*- shell-script -*-

# This bash completions script was generated by
# completely (https://github.com/dannyben/completely)
# Modifying it manually is not recommended

_mygit_completions() {
  local cur=${COMP_WORDS[COMP_CWORD]}
  local compline="${COMP_WORDS[@]:1:$COMP_CWORD-1}"

  case "$compline" in
    'status'*)
      COMPREPLY=($(compgen -W "--help --verbose --branch $(git branch 2> /dev/null)" -- "$cur"))
      ;;

    'commit'*)
      COMPREPLY=($(compgen -A file -W "--help --message --all -a --quiet -q" -- "$cur"))
      ;;

    'init'*)
      COMPREPLY=($(compgen -A directory -W "--bare" -- "$cur"))
      ;;

    *)
      COMPREPLY=($(compgen -W "--help --version status init commit" -- "$cur"))
      ;;

  esac
} &&
complete -F _mygit_completions mygit

# ex: filetype=sh


# === COMPLETION SCRIPT END ===

COMP_WORDS=( mygit status -- )
COMP_LINE="mygit status --"
COMP_POINT=${#COMP_LINE}
COMP_CWORD=2

_mygit_completions
echo "${COMPREPLY[*]}"
