# macOS Tricks
For each of the following, the first command is to enable the setting.
The second command is to return to defaults.

## Have dock appear instantly rather than waiting
defaults write com.apple.dock autohide-delay -float 0; killall Dock
defaults write com.apple.dock autohide-delay -float 1; killall Dock

## Dock show/hide animation
defaults write com.apple.dock autohide-time-modifier -float 0; killall Dock
defaults delete com.apple.dock autohide-time-modifier; killall Dock

## Drop shadow on window screenshots
defaults write com.apple.screencapture disable-shadow -bool TRUE; killall SystemUIServer
defaults write com.apple.screencapture disable-shadow -bool FALSE; killall SystemUIServer
