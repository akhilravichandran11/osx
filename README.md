# OSX

[![Patreon](https://img.shields.io/badge/patreon-donate-brightgreen.svg)](https://www.patreon.com/bkuhlmann)

Shell scripts for automated macOS machine setup.

<!-- Tocer[start]: Auto-generated, don't remove. -->

# Table of Contents

- [Features](#features)
- [Screencast](#screencast)
- [Requirements](#requirements)
- [Setup](#setup)
- [Usage](#usage)
  - [Customization](#customization)
- [Additional Software](#additional-software)
  - [App Store](#app-store)
  - [Miscellaneous](#miscellaneous)
  - [Newsyslog](#newsyslog)
  - [Post Install](#post-install)
- [Versioning](#versioning)
- [Code of Conduct](#code-of-conduct)
- [Contributions](#contributions)
- [License](#license)
- [History](#history)
- [Credits](#credits)

<!-- Tocer[finish]: Auto-generated, don't remove. -->

# Features

- Provides a command line interface for installation and management of OSX software.
- Downloads and installs development tooling (required by Homebrew):
    - [Xcode Command Line Tools](https://developer.apple.com/xcode)
    - [Java SE Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
- Downloads, installs, and configures [Homebrew](http://brew.sh) command line software:
    - [Readline](http://tiswww.case.edu/php/chet/readline/rltop.html)
    - [OpenSSL](https://openssl.org)
    - [OpenSSL OSX CA](https://github.com/raggi/openssl-osx-ca)
    - [asciinema](https://asciinema.org)
    - [Bash](https://www.gnu.org/software/bash)
    - [Bash Completion](http://bash-completion.alioth.debian.org)
    - [chruby](https://github.com/postmodern/chruby)
    - [cloc](http://cloc.sourceforge.net)
    - [Colorized Cat](https://github.com/jingweno/ccat)
    - [CTags](http://ctags.sourceforge.net)
    - [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)
    - [direnv](http://direnv.net)
    - [Elasticsearch](https://www.elastic.co/products/elasticsearch)
    - [Elm](http://elm-lang.org)
    - [FFmpeg](http://ffmpeg.org)
    - [FLAC](https://www.xiph.org/flac)
    - [FZF](https://github.com/junegunn/fzf)
    - [GDBM](http://www.gnu.org.ua/software/gdbm)
    - [Gifsicle](http://www.lcdf.org/gifsicle)
    - [Git](http://git-scm.com)
    - [Go](http://golang.org)
    - [GPG](https://www.gnupg.org)
    - [GPG Agent](https://www.gnupg.org)
    - [Graphviz](http://www.graphviz.org)
    - [hr](https://github.com/LuRsT/hr)
    - [htop](http://hisham.hm/htop)
    - [HTTPie](https://github.com/jkbrzt/httpie)
    - [ImageMagick](http://www.imagemagick.org)
    - [Ioping](https://code.google.com/p/ioping)
    - [jq](http://stedolan.github.com/jq)
    - [Keybase](https://keybase.io)
    - [libffi](https://sourceware.org/libffi)
    - [libyaml](http://pyyaml.org/wiki/LibYAML)
    - [lnav](http://braumeister.org/formula/lnav)
    - [Memcached](http://memcached.org)
    - [Mecurial](http://mercurial.selenic.com)
    - [Mosh](http://mosh.mit.edu)
    - [Namebench](https://code.google.com/p/namebench)
    - [Network Grep](http://ngrep.sourceforge.net)
    - [Nginx](http://wiki.nginx.org)
    - [Node.js](http://nodejs.org)
    - [Parallel](https://savannah.gnu.org/projects/parallel)
    - [Peco](https://github.com/peco/peco)
    - [pgcli](http://pgcli.com)
    - [Phantom.js](http://phantomjs.org)
    - [Pigz](http://www.zlib.net/pigz)
    - [Pipe Viewer](http://www.ivarch.com/programs/pv.shtml)
    - [PostgreSQL](http://www.postgresql.org)
    - [Pow](http://pow.cx)
    - [QuickLook Plain Text](https://github.com/whomwah/qlstephen)
    - [Redis](http://redis.io)
    - [ruby-install](https://github.com/postmodern/ruby-install)
    - [Rust](https://www.rust-lang.org)
    - [Ruby](http://www.ruby-lang.org)
    - [ShellCheck](https://github.com/koalaman/shellcheck)
    - [Tag](https://github.com/jdberry/tag)
    - [Terminal Notifier](https://github.com/alloy/terminal-notifier)
    - [The Silver Surfer](https://github.com/ggreer/the_silver_searcher)
    - [tmux](http://tmux.sourceforge.net)
    - [Reattach to User Namespace](https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard)
    - [Tree](http://mama.indstate.edu/users/ice/tree)
    - [Vim](http://www.vim.org)
    - [Watchman](https://github.com/facebook/watchman)
    - [Wry](https://github.com/hoop33/wry)
    - [Z](https://github.com/rupa/z)
- Downloads, installs, and configures software applications generally not in the [App Store](http://www.apple.com/macosx/whats-new/app-store.html):
    - [Alfred](http://www.alfredapp.com)
    - [App Cleaner](http://www.freemacsoft.net/appcleaner)
    - [Bartender](http://www.macbartender.com)
    - [Carbon Copy Cloner](http://www.bombich.com)
    - [Cheatsheet](http://www.cheatsheetapp.com/CheatSheet)
    - [Google Chrome](http://www.google.com/chrome)
    - [Cloak](https://www.getcloak.com)
    - [Doxie](http://www.getdoxie.com)
    - [Dropbox](https://www.dropbox.com)
    - [Firefox](http://www.mozilla.com/en-US/firefox)
    - [HandBrake](http://handbrake.fr)
    - [Hazel](http://www.noodlesoft.com/hazel.php)
    - [ImageOptim](http://imageoptim.pornel.net)
    - [iStat Menus](https://bjango.com/mac/istatmenus)
    - [iTerm2](http://www.iterm2.com)
    - [Knox](https://agilebits.com/knox)
    - [ksdiff](http://www.kaleidoscopeapp.com/ksdiff2)
    - [Marp](https://yhatt.github.io/marp)
    - [OmniGraffle](http://www.omnigroup.com/applications/omnigraffle)
    - [OpenOffice](http://www.openoffice.org)
    - [Opera](http://www.opera.com)
    - [Path Finder](http://cocoatech.com)
    - [Paw](https://paw.cloud)
    - [pgAdmin](http://www.pgadmin.org/index.php)
    - [PSequel](http://www.psequel.com)
    - [QLMarkdown](https://github.com/toland/qlmarkdown)
    - [RescueTime](https://www.rescuetime.com)
    - [Sonos](http://www.sonos.com)
    - [Sublime Text 3](http://www.sublimetext.com)
    - [Sublime Text URL Handler](https://github.com/asuth/subl-handler)
    - [SurfEasy VPN](https://www.surfeasy.com)
    - [Tor Browser](https://www.torproject.org)
    - [Trailer](http://ptsochantaris.github.io/trailer)
    - [Transmit](https://panic.com/transmit)
    - [Viscosity](https://www.sparklabs.com/viscosity)
    - [Vivaldi](https://vivaldi.com)
    - [VLC](http://www.videolan.org/vlc)
- Downloads, installs, and configures software extensions:
    - [Sublime Text 3 Advanced New File](https://github.com/skuroda/Sublime-AdvancedNewFile)
    - [Sublime Text 3 Alignment](https://github.com/wbond/sublime_alignment)
    - [Sublime Text 3 Apply Syntax](https://github.com/facelessuser/ApplySyntax)
    - [Sublime Text 3 AutoFileName](https://github.com/BoundInCode/AutoFileName)
    - [Sublime Text 3 Autoprefixer](https://github.com/sindresorhus/sublime-autoprefixer)
    - [Sublime Text 3 Bracket Highlighter](https://github.com/facelessuser/BracketHighlighter)
    - [Sublime Text 3 Change Quotes](https://github.com/colinta/SublimeChangeQuotes)
    - [Sublime Text 3 Color Highlighter](https://github.com/Monnoroch/ColorHighlighter)
    - [Sublime Text 3 CSScomb](https://github.com/csscomb/csscomb-for-sublime)
    - [Sublime Text 3 CTags](https://github.com/SublimeText/CTags)
    - [Sublime Text 3 DashDoc](https://github.com/farcaller/DashDoc)
    - [Sublime Text 3 Easy Motion](https://github.com/tednaleid/sublime-EasyMotion)
    - [Sublime Text 3 Elm](https://github.com/deadfoxygrandpa/Elm.tmLanguage)
    - [Sublime Text 3 Emmet](http://emmet.io)
    - [Sublime Text 3 Emmet LiveStyle](http://livestyle.emmet.io)
    - [Sublime Text 3 Gist](https://github.com/condemil/Gist)
    - [Sublime Text 3 Git Gutter](https://github.com/jisaacks/GitGutter)
    - [Sublime Text 3 Gutter Color](https://github.com/ggordan/GutterColor)
    - [Sublime Text 3 HTML Prettify](https://github.com/victorporof/Sublime-HTMLPrettify)
    - [Sublime Text 3 JSCS Formatter](https://github.com/TheSavior/SublimeJSCSFormatter)
    - [Sublime Text 3 JSCS Linter](https://github.com/SublimeLinter/SublimeLinter-jscs)
    - [Sublime Text 3 Keymaps](https://github.com/MiroHibler/sublime-keymaps)
    - [Sublime Text 3 Sublime Linter](https://github.com/SublimeLinter/SublimeLinter)
    - [Sublime Text 3 Local History](https://github.com/vishr/local-history)
    - [Sublime Text 3 Markdown Extended](https://github.com/jonschlinkert/sublime-markdown-extended)
    - [Sublime Text 3 Move Tab](https://github.com/SublimeText/MoveTab)
    - [Sublime Text 3 Rubocop](https://github.com/pderichs/sublime_rubocop)
    - [Sublime Text 3 Ruby Extract Method](https://github.com/pashamur/ruby-extract-method)
    - [Sublime Text 3 Ruby Slim](https://github.com/slim-template/ruby-slim.tmbundle)
    - [Sublime Text 3 SCSS](https://github.com/MarioRicalde/SCSS.tmbundle/tree/SublimeText2)
    - [Sublime Text 3 SCSS Lint](https://github.com/attenzione/SublimeLinter-scss-lint)
    - [Sublime Text 3 Sidebar Enhancements](https://github.com/titoBouzout/SideBarEnhancements)
    - [Sublime Text 3 Table Editor](https://github.com/vkocubinsky/SublimeTableEditor)
    - [Sublime Text 3 Trailing Spaces](https://github.com/SublimeText/TrailingSpaces)
    - [Sublime Text 3 Web Inspector](http://sokolovstas.github.com/SublimeWebInspector)
    - [Sublime Text 3 Wrap+](https://github.com/ehuss/Sublime-Wrap-Plus)
    - [Vim Bundler](https://github.com/tpope/vim-bundler)
    - [Vim Commentary](https://github.com/tpope/vim-commentary)
    - [Vim Fugitive](https://github.com/tpope/vim-fugitive)
    - [Vim Git Gutter](https://github.com/airblade/vim-gitgutter)
    - [Vim Pathogen](https://github.com/tpope/vim-pathogen)
    - [Vim Rails](https://github.com/tpope/vim-rails)
    - [Vim Ruby](https://github.com/vim-ruby/vim-ruby)
    - [Vim Text Object User](https://github.com/kana/vim-textobj-user)
    - [Vim Text Object Ruby Block](https://github.com/nelstrom/vim-textobj-rubyblock)
    - [Vim Unimpaired](https://github.com/tpope/vim-unimpaired)

# Screencast

[![asciicast](https://asciinema.org/a/44192.png)](https://asciinema.org/a/44192)

# Requirements

0. [macOS](https://www.apple.com/macos)
0. [macOS Software Updates](https://www.apple.com/macos)
0. [Xcode](https://developer.apple.com/xcode) (with accepted license agreement)

# Setup

Open a terminal window and execute one of the following setup sequences depending on your version
preference:

Current Version (stable):

    git clone https://github.com/bkuhlmann/osx.git
    cd osx
    git checkout v14.0.0

Master Version (unstable):

    git clone https://github.com/bkuhlmann/osx.git
    cd osx

# Usage

Edit any of the *.sh files in the `scripts` folder to your liking and then open a terminal window to
execute the following command:

    ./run.sh

Running the run.sh script will present the following options:

    Boot:
      B:  Create boot disk.
    Install:
      b:  Apply basic system settings.
      t:  Install development tools.
      h:  Install Homebrew software.
      a:  Install application software.
      x:  Install application software extensions.
      d:  Apply software defaults.
      s:  Setup installed software.
      i:  Install everything (i.e. executes all install options).
    Manage:
      c:  Check status of managed software.
      C:  Caffeinate machine.
      ua: Uninstall application software.
      ux: Uninstall application software extension.
      ra: Reinstall application software.
      rx: Reinstall application software extension.
      w:  Clean work (temp) directory.
      q:  Quit/Exit.

Choose option 'i' to run all install options or select a specific option to run a single task. Each
option is designed to be re-run if necessary. This can also be handy for performing upgrades, re-
running a missing/failed install, etc.

The options prompt can be skipped by passing the desired option directly to the run.sh script. For
example, executing "./run.sh i" will execute the complete software install process.

It is recommended that the machine be rebooted after all install tasks have completed. Feel free to
delete the osx project directory afterwards or keep it around for future upgrades.

## Customization

While the default settings for this project are opinionated and tailored for my specific setup, you
can easily fork this project and customize the settings to your specific environment. Start by
editing the files located in the settings project:

- settings/settings.sh = Defines settings for machine name, applications, extensions, versions,
  paths, etc.

*TIP*: The installer determines which applications/extensions to install as defined by the
settings.sh script. Applications defined with the "APP_NAME" suffix and extensions defined with the
"EXTENSION_PATH" suffix inform the installer what to care about. Removing/commenting out these
applications/extensions within the settings.sh file will cause the installer to skip these
applications/extensions.

You can also modify the install scripts themselves by editing any of the following:

- scripts/boot.sh = Creates macOS boot disk.
- scripts/basic.sh = Applies basic system settings.
- scripts/tools.sh = Installs macOS development tools required by Homebrew.
- scripts/homebrew.sh = Installs Homebrew, command line, software.
- scripts/applications.sh = Installs macOS, GUI-based, applications.
- scripts/extensions.sh = Installs application extensions.
- scripts/defaults.sh = Applies system and application defaults.
- scripts/setup.sh = Configures and launches (if necessary) installed software.

All Bash functions, used by the scripts defined above, can be found in the `lib` folder of this
project.

# Additional Software

## App Store

I also recommend installing the following software found via the [App Store](http://www.apple.com/macosx/whats-new/app-store.html):

- [1Password](http://agilewebsolutions.com/products/1Password)
- [Acorn](https://secure.flyingmeat.com/acorn)
- [AquaPath](https://itunes.apple.com/us/app/aquapath/id424425207)
- [CCMenu](http://ccmenu.org)
- [Cocoa JSON Editor](http://www.cocoajsoneditor.com)
- [ColorSnapper](http://colorsnapper.com)
- [DaisyDisk](http://www.daisydiskapp.com)
- [Dash](http://kapeli.com/dash)
- [Day One](http://dayoneapp.com)
- [Fantastical](http://flexibits.com/fantastical)
- [GarageBand](http://www.apple.com/ilife/garageband)
- [Gradient](http://www.gradientapp.com)
- [iMovie](http://www.apple.com/ilife/imovie)
- [iPhoto](http://www.apple.com/ilife/iphoto)
- [Kaleidoscope](http://www.kaleidoscopeapp.com)
- [Key Codes](https://manytricks.com/keycodes)
- [Keymo](http://manytricks.com/keymo)
- [Kindle](http://www.amazon.com/gp/feature.html?docId=1000464931)
- [Leech](https://manytricks.com/leech)
- [Marked 2](http://marked2app.com)
- [Medis](http://getmedis.com)
- [MoneyWell](http://nothirst.com/moneywell)
- [Monosnap](https://www.monosnap.com)
- [Moom](http://manytricks.com/moom)
- [Name Mangler](http://manytricks.com/namemangler)
- [OmniFocus](http://www.omnigroup.com/applications/omnifocus)
- [OmniOutliner](http://www.omnigroup.com/applications/omnioutliner)
- [Patterns](http://krillapps.com/patterns)
- [PDFpenPro](http://www.smilesoftware.com/PDFpenPro/index.html)
- [Pixelmator](http://www.pixelmator.com)
- [Prepo](http://wearemothership.com/work/prepo)
- [Sketch](http://bohemiancoding.com/sketch)
- [Slack](https://slack.com)
- [Tweetbot](http://tapbots.com/tweetbot/mac)
- [WiFi Explorer](http://www.adriangranados.com/apps/wifi-explorer)
- [xScope](http://iconfactory.com/software/xscope)

## Miscellaneous

The following software is optional:

- [Hardware IO Tools for Xcode](https://developer.apple.com/downloads) - Includes the Network Link
  Conditioner, etc.
- [VMWare Fusion](http://www.vmware.com/products/fusion) (requires a registered account, download
  only)
- [Logitech Harmony Remote](https://support.logitech.com/en_us/product/harmony-890-advanced-universal-remote)

## Newsyslog

Native to macOS, [newsyslog](https://www.freebsd.org/cgi/man.cgi?newsyslog.conf(5)) can be used to
configure system-wide log rotation across multiple projects. It's a good recommendation to set this
up so that disk space is carefully maintained. Here's how to configure it for your system, start by
creating a configuration for your projects in the `/etc/newsyslog.d` directory. In my case, I use
the following configurations:

- `/etc/newsyslog.d/alchemists.conf`

        # logfilename                                            [owner:group]    mode   count   size  when  flags
        /Users/bkuhlmann/Dropbox/Development/Work/**/log/*.log                    644    2       5120  *     GJN
- `/etc/newsyslog.d/homebrew.conf`

        # logfilename                   [owner:group]    mode   count   size    when  flags
        /usr/local/var/log/**/*.log                      644    2       5120    *     GJN

These configurations ensure that logs are rotated every 5MB (5120KB). In order to test that these
configurations are valid, run:

    sudo newsyslog -nvv

If you don't see any errors in the output, then your configuration settings are correct.

The last thing to do is to add a launch configuration to ensure the log rotations happen at
regularly scheduled intervals. To do this create the following file:
`$HOME/Library/LaunchAgents/com.apple.newsyslog.plist`. It should have the following content:

    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>com.apple.newsyslog</string>
      <key>ProgramArguments</key>
      <array>
        <string>/usr/sbin/newsyslog</string>
      </array>
      <key>LowPriorityIO</key>
      <true/>
      <key>Nice</key>
      <integer>1</integer>
      <key>StartCalendarInterval</key>
      <dict>
        <key>Minute</key>
        <integer>30</integer>
      </dict>
    </dict>
    </plist>

That's it. System-wide log rotation is setup for your projects.

## Post Install

The following are additional steps, not easily automated, that are worth completing after the
install scripts have been executed:

- Configure System Preferences:
  - Security & Privacy:
    - General:
      - Require password immediately after sleep or screen saver begins.
      - Show contact info when screen is locked. Example: `<twitter> | <email> | <phone> | <url>`.
      - Allow apps downloaded from App Store and identified developers.
    - FileVault:
      - Enable FileVault and save the recovery key in a secure location (i.e. 1Password).
    - Firewall:
      - Enabled it.
      - Automatically allow signed software.
      - Enable stealth mode.
    - Privacy:
      - Apps like Cheat Sheet, Dash, Dropbox, Trailer, etc. will need to be enabled for
        accessibility.
  - Printers & Scanners:
    - Add printer/scanner.
  - iCloud:
    - Enable Find My Mac.
  - Internet Accounts:
    - Add all accounts used by Mail.
  - Network:
    - Configure Wi-Fi.
  - Users & Groups:
    - Update avatar.
    - Remove unused login items.

# Versioning

Read [Semantic Versioning](http://semver.org) for details. Briefly, it means:

- Patch (x.y.Z) - Incremented for small, backwards compatible bug fixes.
- Minor (x.Y.z) - Incremented for new, backwards compatible public API enhancements and/or bug fixes.
- Major (X.y.z) - Incremented for any backwards incompatible public API changes.

# Code of Conduct

Please note that this project is released with a [CODE OF CONDUCT](CODE_OF_CONDUCT.md). By
participating in this project you agree to abide by its terms.

# Contributions

Read [CONTRIBUTING](CONTRIBUTING.md) for details.

# License

Copyright (c) 2012 [Alchemists](https://www.alchemists.io).
Read the [LICENSE](LICENSE.md) for details.

# History

Read the [CHANGELOG](CHANGELOG.md) for details.
Built with [Bashsmith](https://github.com/bkuhlmann/bashsmith).

# Credits

Developed by [Brooke Kuhlmann](https://www.alchemists.io) at [Alchemists](https://www.alchemists.io).
