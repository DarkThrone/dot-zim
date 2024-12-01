# ~/.zim/modules/mymodule/init.zsh

gco() {
  git checkout $(git branch | grep -v '\->' | sed 's/^[ *]*//' | sort -u | \
    fzf --preview "git log --color=always --oneline --graph --decorate -n 10 {}")
}

gadd() {
    git add $(git status --short | fzf --multi | awk '{print $2}')
}
