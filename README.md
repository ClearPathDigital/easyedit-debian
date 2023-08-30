Easyedit (ee) for Debian
========================

I am daily FreeBSD user.  As such, I am quite accustomed to being able to type `edit [Filename]` to edit a config file.  It is so common to me, that when I am 
working on a Linux box, not having Easyedit really slows me down.  So, I found an old copy of the source code and cleaned up the install routine to make it 
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

## Original README.ee

	The editor 'ee' (easy editor) is intended to be a simple, easy to use 
	terminal-based screen oriented editor that requires no instruction to 
	use.  Its primary use would be for people who are new to computers, or who 
	use computers only for things like e-mail.

	ee's simplified interface is highlighted by the use of pop-up menus which 
	make it possible for users to carry out tasks without the need to 
	remember commands.  An information window at the top of the screen shows 
	the user the operations available with control-keys.

	ee allows users to use full eight-bit characters.  If the host system has 
	the capabilities, ee can use message catalogs, which would allow users to 
	translate the message catalog into other languages which use eight-bit 
	characters.  See the file ee.i18n.guide for more details.

	ee relies on the virtual memory abilities of the platform it is running on 
	and does not have its own memory management capabilities.

	I am releasing ee because I hate to see new users and non-computer types 
	get frustrated by vi, and would like to see more intuitive interfaces for 
	basic tools (both character-based and graphical) become more pervasive.
	Terminal capabilities and communication speeds have evolved considerably 
	since the time in which vi's interface was created, allowing much more 
	intuitive interfaces to be used.  Since character-based I/O won't be 
	completely replaced by graphical user interfaces for at least a few more 
	years, I'd like to do what I can to make using computers with less 
	glamorous interfaces as easy to use as possible.  If terminal interfaces 
	are still used in ten years, I hope neophytes won't still be stuck with 
	only vi.  

	For a text editor to be easy to use requires a certain set of abilities.  In 
	order for ee to work, a terminal must have the ability to position the cursor 
	on the screen, and should have arrow keys that send unique sequences 
	(multiple characters, the first character is an "escape", octal code 
	'\033').  All of this information needs to be in a database called "terminfo" 
	(System V implementations) or "termcap" (usually used for BSD systems).  In 
	case the arrow keys do not transmit unique sequences, motion operations are 
	mapped to control keys as well, but this at least partially defeats the 
	purpose.  The curses package is used to handle the I/O which deals with the 
	terminal's capabilities.  

	While ee is based on curses, I have included here the source code to 
	new_curse, a subset of curses developed for use with ee.  'curses' often  
	will have a defect that reduces the usefulness of the editor relying upon 
	it.  

	The file new_curse.c contains a subset of 'curses', a package for 
	applications to use to handle screen output.  Unfortunately, curses 
	varies from system to system, so I developed new_curse to provide 
	consistent behavior across systems.  It works on both SystemV and BSD 
	systems, and while it can sometimes be slower than other curses packages, 
	it will get the information on the screen painted correctly more often 
	than vendor supplied curses.  Unless problems occur during the building 
	of ee, it is recommended that you use new_curse rather than the curses 
	supplied with your system.

	If you experience problems with data being displayed improperly, check 
	your terminal configuration, especially if you're using a terminal 
	emulator, and make sure that you are using the right terminfo entry 
	before rummaging through code.  Terminfo entries often contain 
	inaccuracies, or incomplete information, or may not totally match the 
	terminal or emulator the terminal information is being used with.  
	Complaints that ee isn't working quite right often end up being something 
	else (like the terminal emulator being used).  

	Both ee and new_curse were developed using K&R C (also known as "classic 
	C"), but it can also be compiled with ANSI C.  You should be able to 
	build ee by simply typing "make".  A make file which takes into account 
	the characteristics of your system will be created, and then ee will be 
	built.  If there are problems encountered, you will be notified about 
	them. 

	ee is the result of several conflicting design goals.  While I know that it 
	solves the problems of some users, I also have no doubt that some will decry 
	its lack of more features.  I will settle for knowing that ee does fulfill 
	the needs of a minority (but still large number) of users.  The goals of ee 
	are: 

	        1. To be so easy to use as to require no instruction.
	        2. To be easy to compile and, if necessary, port to new platforms 
	           by people with relatively little knowledge of C and UNIX.
	        3. To have a minimum number of files to be dealt with, for compile 
	           and installation.
	        4. To have enough functionality to be useful to a large number of 
	           people.

	Hugh Mahon              |___|     
	h_mahon@fc.hp.com       |   |     
	                            |\  /|
	                            | \/ |



