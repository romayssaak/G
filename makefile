README.md: guessinggame.sh
	echo "# Projet Guessing Game" > README.md
	echo "\nCe projet a été généré le : $(shell date)" >> README.md
	echo "\nLe script guessinggame.sh contient le nombre suivant de lignes de code :" >> README.md
	echo "\n$$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
