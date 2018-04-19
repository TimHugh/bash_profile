# Bash Profile

**Deprecated**: Check out https://github.com/timhugh/dotfiles instead

## Introduction

Recently, my beautiful bash profile was lost in a tragic backup accident, and I was forced to start fresh. With very little memory of what was actually in the original, I am now on a journey to terminal re-enlightenment, and you are along for the ride.

## Usage

If you just want to straight up copy my config instead of perusing it and stealing bits (which is recommended!), you can clone this repo and run the included `install.sh` file to overwrite your current config files.

Some hints on that:

- It includes `.bash_profile`, `.bashrc`, and `.bash_aliases`, so for god's sake, **back up your old files**.
- I use [homebrew](http://brew.sh). If you use a different package manager/build things from source/whatever, a lot of paths will need to be updated.
- You might have to change some other paths (especially ones like `/Users/Tim`, unless you happen to also be named Tim).

Note that I'm on Mac OS, and I have no idea if anything I've done is Mac specific or not, but chances are pretty good, so watch out Linux users!

It depends as little as possible on the presence of a `~/.env` file, but a couple things might act weird without it:

- `DEFAULT_RUBY` - chruby uses this to set your preferred default (but will automatically pick a different one based on `./.ruby-version`)

Also, I've tried to make sure that all commands that depend on something being installed are wrapped in a conditional (things that use git, docker, vim, etc.), but I might have missed some.

## Other bits

- [.gitconfig](https://gist.github.com/TimHugh/9b6303ffcc00fbc2b84a)
- [.tmux.conf](https://gist.github.com/TimHugh/b39ae27a39c4d3aca4040b38b1e7f911)
- [.vim/ and .vimrc](https://github.com/TimHugh/vim)
- [dimmedMonokai theme for iTerm2](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/terminal/DimmedMonokai.terminal)

## Hat tips

- Thank you to [mpy](http://superuser.com/users/195224/mpy) and [this thread](http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login) for the hint about preventing bash history truncation
