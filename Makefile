# This is the make file for ee, the "easy editor".
#
# A file called 'make.local' will be generated which will contain information 
# specific to the local system, such as if it is a BSD or System V based 
# version of UNIX, whether or not it has catgets, or select.  
#
# The "install" target ("make install") will copy the ee binary to 
# the /usr/local/bin directory on the local system.  The man page (ee.1) 
# will be copied into the /usr/local/man/man1 directory.
#
# The "clean" target ("make clean") will remove the ee and new_curse.o 
# object files, and the ee binary.
#

all :	localmake buildee

buildee :	
	make -f make.local

localmake:
	@./create.make

install :
	cp ee /usr/local/bin/ee
	gzip --keep ee.1
	cp ee.1.gz /usr/share/man/man1/ee.1.gz
	ln -s /lib/terminfo /usr/lib/terminfo

uninstall :
	rm /usr/local/bin/ee
	rm /usr/share/man/man1/ee.1.gz
	unlink /usr/lib/terminfo

clean :
	rm -f ee.o new_curse.o ee ee.1.gz

