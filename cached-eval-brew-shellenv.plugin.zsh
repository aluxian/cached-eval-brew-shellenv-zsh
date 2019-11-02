function _cached_eval_brew_shell() {
  local CACHE_FILE_PATH=/tmp/brew-shellenv-cache.txt
  eval $([ -f $CACHE_FILE_PATH ] && cat $CACHE_FILE_PATH || brew shellenv | tee $CACHE_FILE_PATH)
}

function _clear_cache_eval_brew_shellenv() {
  local CACHE_FILE_PATH=/tmp/brew-shellenv-cache.txt
  rm -rf $CACHE_FILE_PATH
}
