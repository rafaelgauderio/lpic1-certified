#test - check file types and compare values

man test
test -e name_of_the_file.sh; echo $?
#0 is for successful, the file is avaliable

test -e name_of_the_file.sh; echo $?
#1 is the for the file that not exist, the file is not avaliable

test -r name_of_the_file.sh; echo $?
# -r the file is readable?

#exec = used within a script to integrate or use external program or another script