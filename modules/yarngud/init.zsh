# ~/.zim/modules/yarngud/init.zsh

get_tests () {
  fd --type file '.*\.test\.[^config].*' |
  fzf --prompt 'Unit Tests> ' \
      --header 'CTRL-T: Switch between Unit/Integration' \
      --bind 'ctrl-t:transform:[[ ! $FZF_PROMPT =~ "Unit Tests" ]] &&
              echo "change-prompt(Unit Tests> )+reload(fd --type file \".*\.test\.[^config].*\")" ||
              echo "change-prompt(Integration Tests> )+reload(fd --type file \".*\.integration\.[^config].*)\""'
}
