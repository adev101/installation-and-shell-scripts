#Print linecount, wordcount and charactercount in a file.
#!/bin/bash

filepath=$1
echo "File under test is: " $filepath
lineCount=`wc -l < $filepath`

echo "Line Count is: " $lineCount

wordCount=`wc --word < $filepath`

echo "Word Count is: " $wordCount


charCount=`wc -m < $filepath`

echo "Char Count is: " $charCount
