README.md:
	echo "This is my README.md File" > README.md
	echo "This make file was created on $(date '+%d/%m/%Y at %H:%M') .\nThe guessinggame.sh file currently has: $(wc -l < guessinggame.sh ) lines of code." >> README.md
	