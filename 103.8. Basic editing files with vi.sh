#!/bin/bash

			# -> 103.8. BASIC EDITING OF FILES
			#	vi - text editor for the console

sudo apt install vim
vi
	# esc:q  				quit
vi file.txt
	# esc:wq				save and quit
vi file2.txt
		# normal mode - see letter as commands
		# normal mode - can cut, copy, paste, delete and move between lines
		# h=left j=down k=up l=right
vi file3.txt
		# input mode = i insert in the position one to the left of the cursor
				   # a insert in the position one to the right
				   # A jumps to the end of the current line
				   # G jumps to the last line in the first place  bottom left
				   # GG jumps to the fisrt line to the first line = top left
				   # o insert mode in a new line below
				   # O insert mode in a new line above

vi new_file.txt
		# esc:q! 				quit without saving
		# esc:w 				save and not leave
		# esc ZZ == esc:wq == esc:x 			 	save and quit

	    # seaching...only in normal mode == esc enter de normal mode
	    # / forward search
	    # ? backward search

<<normalMode
	    normal mode

	    dd  = delete the line
	    3dd = delete 3 lines
	    D   = delete line from the cursos position until the end
	    yy  = copy the line
	    x 	= delete the individual character
	    p   = paste below current position
	    P   = paste above current position
	    w 	= begin to the next word
	    e   = jumps to the end of the word
	    B   = go back one word to the begin of the word
normalMode







