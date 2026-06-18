# JJ

Installation is done using a `find` command and creating a symlink for each file in the config
folder.

```bash
for f in ~/.dotfiles/jj/config/*; do ln -s "$f" ~/.config/jj/; done
```
