#! /bin/bash

#Text output:
echo "HALLO"

#Variables:
VARIABLE="Hi"
NUM1 = "3"
NUM2 = "4"

#User input
read -p "Enter your name:" NAME
echo "Hello $NAME"

#If statement
if ["$NAME" == "Hannes"]
then
	echo "Hi"
elif ["$NAME" == "Jack"]
then
	echo "HII"
else
	echo "Ih"
fi

#Comparison
if ["$NUM1" -gt "$NUM2"]
then
       echo "$NUM1 is greater than $NUM2"
fi

#File Condition 
FILE="test.txt"
if [ -f "$FILE" ]
then 
	echo "$FILE is a file"
fi

#File/Directory Condition
EXISTING_FILE="test"
if [ -e "$EXISTING_FILE"]
then
	echo "$EXISTING_FILE exists"
fi

#CASE STATEMENT
read -p "Are you 21 or older? Y/N" ANSWER
case "$ANSWER" in
	[yY] | [yY][eE][sS])
	echo "You can have a beer"
	;;
	[nN] | [nN] [oO])
	echo "you can't"
	;;
	*)
	echo "Please enter y/yes or n/no"
	;;
esac

# SIMPLE FOR LOOP
NAMES="Brad Kevin Alice Mark"
for NM in $NAMES
	do 
		echo "Hello $NM"
done

#FOR LOOP TO RENAME FILES
FILES =$(ls*.txt)
NEW="new"
for FILE in $FILES
do 
	echo "Renaming $FILE to new-$FILE"
	mv $FILE $NEW-$FILE
done

# FILE LOOP - READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
do
	echo "$LINE: $CURRENT_LINE"
	((LINE++))
done <"./new-1.txt"

# FUNCTION
function sayHELLO() {
	echo "HELLO WORLD"
}

#Run Function
sayHELLO

#FUNCITON WITH PARAMS
function greet(){
	echo "Hello, I am $1 and I am $2"
}


greet "Hannes" "19"

#CREATE FOLDER AND WRITE TO FILE
mkdir hello
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "created hello/world.txt"

#STORE OUTPUT OF COMMAND IN VARIABLE:
VAR=$(ls -l)
echo "the files in this directory are:  $VAR"
