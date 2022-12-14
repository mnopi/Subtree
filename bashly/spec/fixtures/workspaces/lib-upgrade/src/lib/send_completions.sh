# [@bashly-upgrade completions send_completions]
send_completions() {
  echo $'#!/usr/bin/env bash'
  echo $''
  echo $'# This bash completions script was generated by'
  echo $'# completely (https://github.com/dannyben/completely)'
  echo $'# Modifying it manually is not recommended'
  echo $'_cli_completions() {'
  echo $'  local cur=${COMP_WORDS[COMP_CWORD]}'
  echo $'  local comp_line="${COMP_WORDS[*]:1}"'
  echo $''
  echo $'  case "$comp_line" in'
  echo $'    \'download\'*) COMPREPLY=($(compgen -W "--force --help -f -h" -- "$cur")) ;;'
  echo $'    \'upload\'*) COMPREPLY=($(compgen -W "--help --password --user -h -p -u" -- "$cur")) ;;'
  echo $'    \'\'*) COMPREPLY=($(compgen -W "--help --version -h -v download upload" -- "$cur")) ;;'
  echo $'  esac'
  echo $'}'
  echo $''
  echo $'complete -F _cli_completions cli'
}