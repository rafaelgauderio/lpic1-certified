#!/bin/bash

<<regex
-> 103.7. SEARCHING TEXT FILES WITH REGULAR EXPRESSIONS
	
		regular expressions = use to search the contents of files
		basic regular expressions = used with grep
		extended regular expressions = used with egrep

regex

man grep								# look for standards in a file
grep -i									# ignore case sensitive

grep rafael /etc/passwd 				# look the word rafael in passwd file
grep -v rafael /etc/passwd				# invert the search. Everything that not contains rafael
grep -vn rafael /etc/passwd 			# -v =invert the serarch. -n=line numbers
grep -o rafael /etc/passwd 				# -o = only the word rafael
grep -i "^this" regex.txt 				# this must be at the beginning at a line
grep -i "this" regex.txt 				# this in anywhere
grep -i example regex.txt 				# example in anywhere
grep -i "example$" regex.txt 			# example in the end of a line
grep -i "example.$" regex.txt 			# .(point) in regex means one character = example. example]
grep -i "example\.$" regex.txt 			# \ (back slash) means that . in not interpreted, see as a period = example.
grep "wonder(ful|womam)" regex.txt 		# display no result. | mean or in regex
egrep "wonder(ful|womam)" regex.txt 	# wonderful, worderwoman
grep -E "wonder(ful|womam)" regex.txt 	# wonderful, wordenwoman
fgrep 									# does not interpret any chacacters
fgrep "wonder(ful|womam)" regex.txt 	# search for wonder(ful|woman) how it is written, do not intepret regex