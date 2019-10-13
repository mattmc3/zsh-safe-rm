# prefer del
alias del="${0:A:h}/shell-safe-rm/bin/rm.sh"

# for if you forget and use rm
alias rm="${0:A:h}/shell-safe-rm/bin/rm.sh"

# if you want to be explicit about whether the command is safe/unsafe
alias safe-rm="${0:A:h}/shell-safe-rm/bin/rm.sh"
alias unsafe-rm="command rm"
