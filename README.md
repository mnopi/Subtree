# [Subtree](https://www.atlassian.com/git/tutorials/git-subtree)

## Normal
```shell
git subtree add --prefix .vim/bundle/tpope-vim-surround https://bitbucket.org/vim-plugins-mirror/vim-surround.git main --squash
git subtree pull --prefix .vim/bundle/tpope-vim-surround https://bitbucket.org/vim-plugins-mirror/vim-surround.git main --squash
```

## With remote
### Add
```shell
git remote add -f tpope-vim-surround https://bitbucket.org/vim-plugins-mirror/vim-surround.git
git subtree add --prefix .vim/bundle/tpope-vim-surround tpope-vim-surround main --squash

```
### Pull
```shell
git fetch tpope-vim-surround main
git subtree pull --prefix .vim/bundle/tpope-vim-surround tpope-vim-surround main --squash
```

### Push
```shell
git remote add durdn-vim-surround ssh://git@bitbucket.org/durdn/vim-surround.git
git subtree push --prefix=.vim/bundle/tpope-vim-surround/ durdn-vim-surround main

```

git subtree add --prefix=approvals.bash  https://github.com/DannyBen/approvals.bash master
git subtree add --prefix=alf-conf  https://github.com/DannyBen/alf-conf master
git subtree add --prefix=approvals.bash  https://github.com/DannyBen/approvals.bash master
git subtree add --prefix=bashly  https://github.com/DannyBen/bashly master
git subtree add --prefix=bootstrap  https://github.com/DannyBen/bootstrap master
git subtree add --prefix=completely  https://github.com/DannyBen/completely master
git subtree add --prefix=git-changelog  https://github.com/DannyBen/git-changelog master
git subtree add --prefix=kojo  https://github.com/DannyBen/kojo master
git subtree add --prefix=opcode https://github.com/DannyBen/opcode.git master
git subtree add --prefix=rush-cli  https://github.com/DannyBen/rush-cli master
git subtree add --prefix=rush-repo  https://github.com/DannyBen/rush-repo master
