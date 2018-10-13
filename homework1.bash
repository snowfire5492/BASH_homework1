#!/bin/bash
########################################################
#
# script to display a random word from /usr/share/dict/words
#
########################################################
# location of words file
Dictionary=/usr/share/dict/words


# cuts off apostrophe, pipes to print only the head at a random number 
but then pipes to only print the tail
cut -d "'" -f1 $Dictionary | head -n $RANDOM | tail -n 1


#the issue/bug is that $RANDOM  only returns a number between 0 - 32727 
and
#the word file contains around 99000 words. even 32727 % 99000 will 
return 
#32727. it would be better to use sort --random-sort and then take the 
head
#or tail but we havent learned that yet

