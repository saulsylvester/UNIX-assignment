shopt -s nullglob
numfiles=(*)
numfiles=${#numfiles[@]}

guess=-1
typeset -i num=0

(( answer = numfiles))

### Play game

echo -e "\n"
echo -e "Hi there, and welcome to a rather special game.\n"
echo -e "I'd like you to guess the number of files in this directory.\n"

while (( guess != answer )); do
	num=num+1
	read -p "Enter guess $num: " guess
	if (( guess < answer )); then
		echo "Higher..."
	elif (( guess > answer )); then
		echo "Lower..."
	fi
done
echo -e "Correct! That took $num guesses.\n"
