# zsh-safe-rm

ZSH plugin to add safe-rm functionality so that `rm` will put files in your OS's trash instead of permanently deleting them.

## Usage

`rm` is aliased to use [safe-rm], which is a drop-in replacement for `rm` with all the same flags for a seamless transition.

`del` is also aliased to `safe-rm` to help rehabit your muscle memory to a less destructive command. That way, if you are ever on a system without `safe-rm`, you don't get too confortable with its new, safer behavior.

As with all zsh commands, if you need to get back to the builtin `rm`, use a leading backslash like so: `\rm -i obliterate_me.txt`.

Installable with:
- [zgen](https://github.com/tarjoilija/zgen): `zgen load mattmc3/zsh-safe-rm`
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh): `git clone --recursive https://github.com/mattmc3/zsh-safe-rm.git ${ZSH_CUSTOM:-$ZSH/custom}/zsh-safe-rm` and then add `zsh-safe-rm` to your `plugins` variable in `.zshrc`
- [antibody](https://getantibody.github.io): `antibody bundle mattmc3/zsh-safe-rm`
- [antigen](https://github.com/zsh-users/antigen): `antigen bundle mattmc3/zsh-safe-rm`


[safe-rm]: https://github.com/kaelzhang/shell-safe-rm
