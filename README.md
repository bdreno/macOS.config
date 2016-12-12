# macOS.config
Resources to configure a new macOS workstation

## Initial System Configuration
* Enable FileVault
* Enable iCloud
* Enable Document & Data Sync
* Log into MAS
* Install Xcode from MAS

## Homebrew Configuration
Homebrew Installs most of the CLI, Direct Download & MAS Applications that I use. License & registration details are stored in 1Password, which is synced via iCloud and installed via Homebrew Bundler.

* Configure Xcode
    * 
    ~~~~
	xcode-select --install
	sudo xcodebuild -license
	~~~~
* Install Homebrew http://brew.sh
* Download this repository
    * 
    ~~~~
    git clone https://github.com/uisge-beatha/macOS.config.git ~/Programming/macOS.config
    ~~~~
    * ~/Programming/macOS.config will be the base directory from now on
* Homebrew Bundler
    * 
    ~~~~
    cd ~/Programming/macOS.config
    brew bundle
    ~~~~
    * If brew bundle did not autoinstall Bundler then,
        * 
        ~~~~
        brew tap Homebrew/bundle 
        brew bundle
        ~~~~
* Enable CLI Services
    * 
    ~~~~
    brew services start clipper
    brew services start dbus
    ~~~~

## Apps to always install from macOS App Store:
* 1Password
* Slack
* Keynote/Pages/Numbers
* Xcode
* 1Blocker
* Fantastical
* Magnet
* Veertu
* Day One
* Deliveries
* PGPTools
* iThoughtsX
* Toad
* JSON Query
* Pathology
* Patterns
* RESTed
* PopClip
* Pushbullet
* Desk PM
* Next
* Transmit
* Airmail
* BetterSnapTool
* Twitterific
* Reeder
* Soulver
* Keka
* Microsoft Remote Desktop
* Apple Remote Desktop
* Oyster
* Skitch
* Evernote
* Kindle



## Apps to install from macOS App Store as needed:
* Pixa
* Fluid Browser
* Mac Family Tree
* Do
* Paw
* Filebot
* Ember
* Pixelmator
* App Factory
* DropZone 3 (Run then delete to enable license for Direct Download version)
* WiFi Explorer
* Paprika
* Fake
* Gemini
* Audit Explorer
* Home Inventory
* AudioBook Builder


## Apps installed directly from the internet:
* OmniFocus
* OmniPlan
* OmniOutliner
* OmniGraffle
* OmniSync
* Java Development Kit 
* TextExpander https://smilesoftware.com/textexpander/download_thanks.html?url=http://cdn.smilesoftware.com/TextExpander_4.3.7.zip
* Transmit https://panic.com/transmit/


* CloudApp
* Rocket http://matthewpalmer.net/rocket
* Sketch https://www.sketchapp.com
* Sync https://sync.com
* zsh https://github.com/robbyrussell/oh-my-zsh (.zshenv and .zshrc are in 1Password)
* GitHub Mac Credential Helper https://help.github.com/articles/caching-your-github-password-in-git/


* `/etc/hosts` file from http://winhelp2002.mvps.org/hosts.htm
* MacDown http://macdown.uranusjr.com
* Follow instructions on gpg-agent https://blog.erincall.com/p/signing-your-git-commits-with-gpg
* Install GPG Suite https://gpgtools.org 
* GitHub Clippers: https://github.com/orta/github-clippers

## Other Customizations

* Custom Safari Stylesheet in Sync
* Turn on zoom in Accessibility settings
* `git config --global push.default simple`
* `git config --global user.name "Ash Furrow"`
* `git config --global user.email ash@ashfurrow.com`
* `brew install trash` + alias https://twitter.com/kattrali/status/662052949326098432
* `defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES`
* Always expand save file dialogue box `defaults write -g NSNavPanelExpandedStateForSaveMode -boolean true`
* http://merowing.info/2015/12/little-things-that-can-make-your-life-easier-in-2016/
* Import GPG key from 1Password
* Untrust certificate: https://blog.filippo.io/untrusting-an-intermediate-ca-on-os-x/ 
* VSCode https://code.visualstudio.com (+add symlinks to config files in Sync folder)
* Dark mode on menu bar
* Dock on right, auto-hide on
* Hide Desktop icons: `defaults write com.apple.finder CreateDesktop false`
