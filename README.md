# Bash Profile

## Introduction

Recently, my beautiful bash profile was lost in a tragic backup accident, and I was forced to start fresh. With very little memory of what was actually in the original, I am now on a journey to terminal re-enlightenment, and you are along for the ride.

## Usage

If you just want to straight up copy my config instead of perusing it and stealing bits (which is recommended!), you can clone this repo and run the included `install.sh` file to overwrite your current `~/.profile`.

Some hints on that:

- Depending on your setup, you might need to move it to `~/.bashrc` or `~/.bash_profile`
- For god's sake, **back up your old file**
- I use [homebrew](http://brew.sh). If you use a different package manager/build things from source/whatever, a lot of paths will need to be updated
- You might have to change some other paths (especially ones like `/Users/Tim`, unless you happen to also be named Tim)

Note that I'm on Mac OS, and I have no idea if anything I've done is Mac specific or not, but chances are pretty good, so watch out Linux users!

## Other bits

- [My git configuration](https://gist.github.com/TimHugh/9b6303ffcc00fbc2b84a)
- [My Sublime Text 3 config](https://gist.github.com/TimHugh/9b613931bb776a05a0e1e10d61c5eee1)

## Hat tips

- Thank you to [mpy](http://superuser.com/users/195224/mpy) and [this thread](http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login) for the hint about preventing bash history trunctation
