# Linux: getting updated and standardized
* `sudo apt update && sudo apt upgrade -y`: update all packages
* `sudo apt-get install zsh vim git curl`: install prereqs for the rest of the process
* `sudo apt autoremove -y`: clean up

# Every OS
* `curl -L http://install.ohmyz.sh | sh`: installs oh my zsh
* `chsh -s /bin/zsh`: change default shell
* `curl -L kevindong.net/vimrc -o ~/.vimrc`: have some sane vim settings
* `curl -L kevindong.net/kevin.zsh-theme -o ~/.oh-my-zsh/themes/kevin.zsh-theme`: download custom zsh theme
* `curl -L kevindong.net/zshrc -o ~/.zshrc`: have some sane zsh settings
* `ssh-keygen -t rsa -b 4096`: generate SSH keys
* `eval "$(ssh-agent -s)"`
* `ssh-add ~/.ssh/id_rsa`

# Setting up Samba Shares
* `sudo apt install samba`
* `sudo vim /etc/samba/smb.conf`: make modifications as needed. Example `smb.conf` below.
* `sudo service smbd restart`: applies settings
* `sudo smbpasswd -a <username_here>`: Samba share accounts are distinct from Linux user accounts

## Sample `smb.conf`
```
[global]
   socket options = TCP_NODELAY IPTOS_LOWDELAY SO_RCVBUF=65535 SO_SNDBUF=65535
   workgroup = WORKGROUP
   dns proxy = no
   log file = /var/log/samba/log.%m
   max log size = 1000
   syslog = 0
   panic action = /usr/share/samba/panic-action %d
   server role = standalone server
   passdb backend = tdbsam
   obey pam restrictions = yes
   unix password sync = yes
   passwd program = /usr/bin/passwd %u
   passwd chat = *Enter\snew\s*\spassword:* %n\n *Retype\snew\s*\spassword:* %n\n *password\supdated\ssuccessfully* .
   pam password change = yes
   map to guest = bad user
   usershare allow guests = yes

[read]
    comment = Stay out
    read only = yes
    locking = no
    path = /
    guest ok = no

[write]
    comment = Stay out
    read only = no
    locking = no
    path = /
    guest ok = no
```

# Mounting drives
Run `sudo blkid` to get the UUIDs of the attached drives. Then, modify `/etc/fstab` to automount the drives. Example `fstab` below. Note the disparate mount points, file system types, and uid/gid. 

```
proc            /proc           proc    defaults          0       0
PARTUUID=7673b201-01  /boot           vfat    defaults          0       2
PARTUUID=7673b201-02  /               ext4    defaults,noatime  0       1
# a swapfile is not a swap partition, no line here
#   use  dphys-swapfile swap[on|off]  for that

UUID=5A59-90BE	/mnt/usbstorage exfat	nofail,uid=pi,gid=pi	0	0
UUID=E01057CA1057A5F6	/mnt/storage	ntfs-3g	nofail,uid=pi,gid=pi	0	0
```

# Message of the day
* `curl -L kevindong.net/motd -o ~/motd`
* `echo "cat ~/motd" >> ~/.zshrc`
