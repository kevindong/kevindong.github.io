# Setup Instructions (Linux)

## Automatic
Either: 1) copy paste the following or 2) run `wget kevindong.net/setup.sh`, `chmod +x setup.sh`, and then `./setup.sh`

```
sudo apt-get install zsh vim gdb valgrind git curl
curl -L http://install.ohmyz.sh | sh
chsh -s /bin/zsh
vim ~/.zshrc
curl -L kevindong.net/vimrc -o ~/.vimrc
ssh-keygen -t rsa -b 4096
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
ssh-copy-id dong70@data.cs.purdue.edu
```

## Manual
### apt-get packages
* `sudo apt-get install zsh vim gdb valgrind git curl`

### Set up vim
* `curl -L kevindong.net/vimrc -o ~/.vimrc`

### Set up zsh
* `curl -L http://install.ohmyz.sh | sh`
* `chsh -s /bin/zsh`
* Edit `~/.zshrc` to use `risto` theme and add `cs` alias for `ssh dong70@data.cs.purdue.edu`

### Set up SSH keys
* `ssh-keygen -t rsa -b 4096`
* `eval "$(ssh-agent -s)"`
* `ssh-add ~/.ssh/id_rsa`

### Set up access to Purdue CS servers
* `ssh-copy-id dong70@data.cs.purdue.edu`