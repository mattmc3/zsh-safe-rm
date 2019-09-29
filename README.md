# zsh-safe-rm
ZSH plugin to add safe-rm functionality so that `rm` will put files in your OS's trash instead of permanently deleting them.

Installable with:
- [zgen](https://github.com/tarjoilija/zgen): `zgen load mattmc3/zsh-safe-rm`
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh): `git clone --recursive https://github.com/mattmc3/zsh-safe-rm.git ${ZSH_CUSTOM:-$ZSH/custom}/safe-rm` and then add `safe-rm` to your `plugins` variable in `.zshrc`
- [antibody](https://getantibody.github.io): `antibody bundle mattmc3/zsh-safe-rm`
- [antigen](https://github.com/zsh-users/antigen): `antigen bundle mattmc3/zsh-safe-rm`
