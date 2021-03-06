#!/usr/bin/env bash

prompt_setter() {
  # Save history
  history -a
  history -c
  history -r
  PS1="
($(clock_prompt)) $(scm_char) [$blue\u$reset_color@$green\H$reset_color] node $(node --version) npm@$(npm -v)
$yellow\w${reset_color} $(scm_prompt_info) ⓔ  $reset_color "
  PS2='> '
  PS4='+ '
}

safe_append_prompt_command prompt_setter

SCM_THEME_PROMPT_DIRTY=" ✗"
SCM_THEME_PROMPT_CLEAN=" ✓"
SCM_THEME_PROMPT_PREFIX=" ("
SCM_THEME_PROMPT_SUFFIX=")"
RVM_THEME_PROMPT_PREFIX=" ("
RVM_THEME_PROMPT_SUFFIX=")"
