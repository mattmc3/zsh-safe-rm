# zsh-safe-rm

ZSH plugin to add safe-rm functionality so that `rm` will put files in your OS's trash instead of permanently deleting them.

## Usage

`rm` is aliased to use [safe-rm], which is a drop-in replacement for `rm` with all the same flags for a seamless transition.

`del` is also aliased to `safe-rm` to help re-habit your muscle memory to a less destructive command. That way, if you are ever on a system without `safe-rm`, you don't get too confortable with its new, safer behavior.

As with all zsh commands, if you need to get back to the builtin `rm`, there are options:
```shell
# simply use a leading backslash
\rm -i obliterate_me.txt

# or use 'command' prefix (zsh pre-command modifier)
command rm -i nuke_it_from_orbit.txt

# or make an alias in .zshrc
alias unsafe-rm="\rm -i"
unsafe-rm this_is_really_gonna_hurt.txt
```

## Installation

Installable with:
- [zgen](https://github.com/tarjoilija/zgen): `zgen load mattmc3/zsh-safe-rm`
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh):
  ``` shell
  ZSH_CUSTOM=${ZSH_CUSTOM:-$ZSH/custom}
  git clone --recursive https://github.com/mattmc3/zsh-safe-rm.git $ZSH_CUSTOM/zsh-safe-rm
  # now add zsh-safe-rm to your plugins variable in .zshrc
  ```
- [antibody](https://getantibody.github.io): `antibody bundle mattmc3/zsh-safe-rm`
- [antigen](https://github.com/zsh-users/antigen): `antigen bundle mattmc3/zsh-safe-rm`


[safe-rm]: https://github.com/kaelzhang/shell-safe-rm
