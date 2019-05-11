Easyedit (ee) for Debian
========================

I am daily FreeBSD user.  As such, I am quite accustomed to being able to type `edit [Filename]` to edit a config file.  It is so common to me, that when I am 
working on a Linux box, not having Easyedit really slows me down.  So, I found an old copy of the source code ad cleaned up the install routine to make it 
Debian friendly.  Hope this is helpful to any ohter ee fans out there.

This is a simple modification of the easyedit BSD app to Debian.  None of the original source code has changed, I have simply edited the Makefile to make it more 
Debian friendly.

## Install

Clone this repository, switch to this directory, run this as root:

    # make
    # make install


## Uninstall

Run this from the source directory as root:

    # make uninstall
 
## Replace

If you are like me and accustomed to using the `edit` command in FreeBSD, you may wish to override the link in Debian of `edit` to `run-mailcap`, you can do 
that by creating an alias in your shell like this:

    $ alias edit='ee'



