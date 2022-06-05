#!/bin/zsh

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/.zsh_history

# Disable highlighting pasted text
unset zle_bracketed_paste


# aliases

#Weather
alias weather="curl -s 'wttr.in/?format=4' 2>/dev/null"



# Prompt Setup

# Git status for Prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
precmd() { vcs_info }
setopt prompt_subst

#############################################################################
#                                                                            #
# illizian's zsh theme                                                       #
# A Powerline, agnoster & amuse inspired theme for ZSH                       #
#                                                                            #
# Dependencies                                                               #
# * Powerline-patched font (https://github.com/Lokaltog/powerline-fonts)     #
# * fonts-font-awesome package                                               #
#                                                                            #
##############################################################################

############################
# Variables                #
############################

# Icons
FA_I_GIT=""
FA_I_UNSTAGED=""
FA_I_STAGED=""

FA_I_CLCK=""
FA_I_WIFI=""
FA_I_ETH0=""
FA_I_DSCD=""
FA_I_HOME=""
FA_I_ACTV=""
FA_I_FAIL=""
FA_I_ROOT=""
FA_I_NODE=""
FA_I_GRPH=""
FA_I_SPED=""
FA_I_USER=""

FA_I_OTBD=""
FA_I_INBD=""
FA_I_CAL=""

# Formatting
TXT_BOLD="\e[1m"
TXT_UNBOLD="\e[21m"

############################
# Prompt Segments          #
############################

CURRENT_BG='NONE'
SEGMENT_SEPARATOR=''

prompt_break() {
  echo -n "\n"
}
# Begin a segment
# Takes two arguments, background and foreground. Both can be omitted,
# rendering default background/foreground.
prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
  if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
    echo -n " %{$bg%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{$fg%} "
  else
    echo -n "%{$bg%}%{$fg%} "
  fi
  CURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}

key_val() {
  [[ -n $3 ]] && echo -n "$1 ${TXT_BOLD}$2${TXT_UNBOLD}" || echo -n "$1 $2"
}

############################
# Functions                #
############################

prompt_status() {
  # Status:
  # - was there an error
  # - are there background jobs?
  [[ $RETVAL -ne 0 ]] && prompt_segment yellow black "$FA_I_FAIL"
  [[ $(jobs -l | wc -l) -gt 0 ]] && prompt_segment yellow black "$FA_I_ACTV"
}


# Dir: current working directory
prompt_dir() {
  prompt_segment black white "$FA_I_HOME %~ "
}

# Git: branch/detached head, dirty status
prompt_git() {
    prompt_segment yellow black

    echo -n "%b $vcs_info_msg_0_"
}

# End the prompt, closing any open segments
prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n " %{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%}"
  CURRENT_BG=''
}

# Setup for user input
prompt_cmd() {
  echo -n "%# "
}

prompt_name() {
  prompt_segment green white
  echo -n "$FA_I_USER %n@%m "
}

############################
# Build the Prompt         #
############################
# The prompt is responsive, to customise change 
# the variable below or enable modules in sml/lrg 
# respectively
build_prompt() {
  if [[ ${COLUMNS} -gt 90 ]]; then
    build_lrg_prompt
  else
    build_sml_prompt
  fi
}

build_lrg_prompt() {
  prompt_name
  prompt_dir
  prompt_git
  prompt_end
  prompt_break
  prompt_cmd
}

build_sml_prompt() {
  prompt_name
  prompt_dir
  prompt_git
  prompt_end
  prompt_break
  prompt_cmd
}

build_my_prompt() {
  prompt_name
  prompt_dir
  prompt_git
  prompt_end
  prompt_break
  prompt_cmd
}

PROMPT="$(build_my_prompt)"

