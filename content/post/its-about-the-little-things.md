+++
date = "2017-03-15T08:56:29-04:00"
title = "It's About the Little Things"

+++

The wisdom of the ages shall not be lost.   Below are following tips, settings, and tools that help increase productivity as a developer.  

<!--more-->

### ShortCuts
__mac OS__

Command - Tab (toggle between applications)

__ATOM__

Ctrl - Shift - m  (toggle markdown preview)

### CLI + Applications

#### [Hub](https://github.com/github/hub)
A commandline interface for github.

Do things like.

`hub pull-request`

or

`hub create my-new-repo-and-also-setup-my-remotes`

Install with `brew install hub`

#### [Alfred 3](https://www.alfredapp.com)
An application launcher / productivity tool.

#### [FlyCut](https://itunes.apple.com/us/app/flycut-clipboard-manager/id442160987?mt=12)
A tool to have multiple clipboards.  Never loose something that you copied again.

### Bash Customizations
Add to your .bash_profile

```sh
# Turn on colors for the Terminal
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Allow an infite amount of commands in your .bash_history file (storage is cheap)
export HISTSIZE="INFINITE"
```

Loads all tab completions for homebrew applications
```sh
if [ -d /usr/local/etc/bash_completion.d ]; then
  for F in "/usr/local/etc/bash_completion.d/"*; do
    if [ -f "${F}" ]; then
      source "${F}";
    fi
  done
fi
```

### Guides

* A community guide of other awesome apps
  * https://github.com/iCHAIT/awesome-macOS
* A community guide of things you can do to Mac OS X only through the CLI
  * https://github.com/herrbischoff/awesome-osx-command-line
