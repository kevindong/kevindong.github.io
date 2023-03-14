# macOS Tricks
## Apply changes
```sh
# Have dock appear instantly rather than waiting
defaults write com.apple.dock autohide-delay -float 0
# Dock show/hide animation
defaults write com.apple.dock autohide-time-modifier -float 0
killall Dock

# Drop shadow on window screenshots
defaults write com.apple.screencapture disable-shadow -bool "true"; killall SystemUIServer

# Shows full website URL in Safari
defaults write com.apple.safari "ShowFullURLInSmartSearchField" -bool "true" && killall Safari

# Finder: show extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
# Finder: show hidden files
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
# Finder: Show path bottom bar
defaults write com.apple.finder "ShowPathbar" -bool "true"
# Finder: search current folder by default
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"
# Finder: don't warn on file extension change
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"
# Finder: show title bar icons without needing to hover
defaults write com.apple.universalaccess "showWindowTitlebarIcons" -bool "true"
killall Finder

# Don't write metadata files on attached volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool "true"
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool "true"
# Don't autocorrect typed text
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool "false"
```

## Read current values
```sh
defaults read com.apple.dock autohide-delay
defaults read com.apple.dock autohide-time-modifier

defaults read com.apple.screencapture disable-shadow

defaults read com.apple.safari "ShowFullURLInSmartSearchField"

defaults read NSGlobalDomain "AppleShowAllExtensions"
defaults read com.apple.finder "AppleShowAllFiles"
defaults read com.apple.finder "ShowPathbar"
defaults read com.apple.finder "FXDefaultSearchScope"
defaults read com.apple.finder "FXEnableExtensionChangeWarning"
defaults read com.apple.universalaccess "showWindowTitlebarIcons"

defaults read com.apple.desktopservices DSDontWriteNetworkStores
defaults read com.apple.desktopservices DSDontWriteUSBStores
defaults read -g NSAutomaticSpellingCorrectionEnabled
```

## Reset to default
```sh
defaults delete com.apple.dock autohide-delay
defaults delete com.apple.dock autohide-time-modifier
killall Dock

defaults delete com.apple.screencapture disable-shadow; killall SystemUIServer

defaults delete com.apple.safari "ShowFullURLInSmartSearchField" && killall Safari

defaults delete NSGlobalDomain "AppleShowAllExtensions"
defaults delete com.apple.finder "AppleShowAllFiles"
defaults delete com.apple.finder "ShowPathbar"
defaults delete com.apple.finder "FXDefaultSearchScope"
defaults delete com.apple.finder "FXEnableExtensionChangeWarning"
defaults delete com.apple.universalaccess "showWindowTitlebarIcons"
killall Finder

defaults delete com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults delete com.apple.desktopservices DSDontWriteUSBStores -bool true
defaults delete -g NSAutomaticSpellingCorrectionEnabled
```
