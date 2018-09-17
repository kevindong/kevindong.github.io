export ZSH=~/.oh-my-zsh
ZSH_THEME="risto"
plugins=(git)
source $ZSH/oh-my-zsh.sh
alias cs="ssh dong70@data.cs.purdue.edu"
alias xinu="ssh dong70@xinu20.cs.purdue.edu"
alias csx="ssh -X dong70@data.cs.purdue.edu"
alias mount-cs="sshfs -o follow_symlinks dong70@data.cs.purdue.edu: ~/cs"
alias unmount-cs="umount -f ~/cs"
