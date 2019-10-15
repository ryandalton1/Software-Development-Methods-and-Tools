#!/bin/bash
# Authors : Ryan Dalton
# Date: 1/30/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
#accept a regular expression & file name from th user w pr
echo "Enter a regular expression: "
read regExp
echo "Enter a file name: "
read fileName
#feed regExp into grep and run into user's file
#grep $1 $2 ------1 is the pattern 2 is the file
grep $regExp $fileName
#hardcode some grep command calls that will
#count the number of phone numbers in file
grep -E -c '[0-9]{3}-[0-9]{3}-[0-9]{4}' $fileName
echo " phone numbers in $fileName"
#count the number of emails in regex_practice.txt
#grep '/([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9_-]+)/' $fileName
grep -c @ $fileName
echo " emails in $fileName"
#list all the phone numbers in the 303 areacode and store in email_results.txt
grep -E -n "303-[0-9]{3}-[0-9]{4}" * > phone_results.txt
grep -n "@geocities.com" * > email_results.txt
grep -n $1 * > command_results.txt
