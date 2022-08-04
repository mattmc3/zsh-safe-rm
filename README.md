# zsh-safe-rm

> Zsh plugin to add [safe-rm] functionality so that `rm` will put files in your OS's trash instead of permanently deleting
them.

## Usage

`rm` is aliased to use [safe-rm], which is a drop-in replacement for `rm` with all the same flags for a seamless transition.

`del` is also aliased to `safe-rm` to help re-habit your muscle memory to a less destructive command. That way, if you are
ever on a system without `safe-rm`, you aren't too confortable with using `rm` as a safe command. `del` is the recommended
way to use `safe-rm`.

As with all zsh commands, if you need to get back to the builtin `rm`, there are options:
```shell
# simply use a leading backslash
\rm -i obliterate_me.txt

# or use 'command' prefix (command is a "zsh precommand modifier")
command rm -i nuke_it_from_orbit.txt

# or make an alias in .zshrc
alias unsafe-rm="command rm -i"
unsafe-rm this_is_really_gonna_hurt.txt
```

## Installation

### Manually

Add the following to your `.zshrc`:

```zsh
[[ -d ${ZDOTDIR:-~}/.zplugins/zsh-safe-rm ]] || \
  git clone --recursive --depth 1 https://github.com/mattmc3/zsh-safe-rm ${ZDOTDIR:-~}/.zplugins/zsh-safe-rm
source ${ZDOTDIR:-~}/.zplugins/zsh-safe-rm/zsh-safe-rm.plugin.zsh
```

### With a plugin manager

This plugin should work with most Zsh plugin managers, assuming they support git submodules. See the documentation for your
preferred plugin manager for installation instructions. Or, if you don't already have one or yours doesn't support submodules,
have a look at [antidote](https://getantidote.github.io).

```zsh
antidote install mattmc3/zsh-safe-rm
```

### With oh-my-zsh

``` shell
ZSH_CUSTOM=${ZSH_CUSTOM:-$ZSH/custom/plugins}
git clone --recursive --depth 1 https://github.com/mattmc3/zsh-safe-rm $ZSH_CUSTOM/zsh-safe-rm
# now add zsh-safe-rm to your plugins array in .zshrc
```

## Contributing

This project is a zsh plugin wrapper for the [shell-safe-rm][safe-rm] project and assumes no liability for the
functionality of that utility. Bugs or issues with the `safe-rm` functionality should be submitted to that project's
maintainer.


## Reference

- [shell-safe-rm][safe-rm]
- [Precommand modifiers][zsh-precmd]


[safe-rm]: https://github.com/kaelzhang/shell-safe-rm
[zsh-precmd]: http://zsh.sourceforge.io/Doc/Release/Shell-Grammar.html#Precommand-Modifiers
