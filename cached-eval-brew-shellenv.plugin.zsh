function .cached_eval_brew_shell() {
  local CACHE_FILE_PATH=~/.cache/brew-shellenv.zsh
  eval $([ -f $CACHE_FILE_PATH ] && cat $CACHE_FILE_PATH || brew shellenv | tee $CACHE_FILE_PATH)
}

function .clear_cache_eval_brew_shellenv() {
  local CACHE_FILE_PATH=~/.cache/brew-shellenv.zsh
  rm -rf $CACHE_FILE_PATH
}

@zsh-plugin-run-on-update .clear_cache_eval_brew_shellenv
.cached_eval_brew_shell "$@"
