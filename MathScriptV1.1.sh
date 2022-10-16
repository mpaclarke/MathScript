#!/bin/bash
echo
echo "********** Welcome to MathScript **********"
echo "Instructions:"
echo "     1. Enter an operator."
echo "     2. Enter a number from 1 to 15"
echo "MathScript will generate a Maths table based on the number you enter."
echo 
echo "Enter one of the following operators: +, -, *, / or ^ | Enter q to exit the script"

while read operator
do
	if [ "$operator"  == "+" ]; then 
		echo "Enter a number from 1 and 15 | Enter r to return to operator selection."
		while read n; do
			if [[ $n -ge 1 && $n -le 15 ]]; then
				counter=1
				while [ $counter -le 15 ];
				do
					let var=$n+$counter
					echo "$n + $counter = $var"
					((counter++))
				done
			echo 
			echo "Enter another number from 1 to 15 | Enter r to return to operator selection."
		
			elif [[ $n == "r" ]]; then
				echo "Enter one of the following operators: +, -, *, / or ^ | Enter q to exit the script"
				continue 2

			else
				echo "INVALID SELECTION"
				echo "Enter a number from 1 to 15 | Enter r to return to operator selection."
				continue 
			fi
		done
		      		      
	elif [ "$operator" == "-" ]; then
		echo "Enter a number from 1 and 15 | Enter r to return to operator selection."
		while read n; do
			if [[ $n -ge 1 && $n -le 15 ]]; then
				counter=1
				while [ $counter -le 15 ];
				do
					let var=$counter-$n
					echo "$counter - $n = $var"
					((counter++))
				done
			echo 
			echo "Enter another number from 1 to 15 | Enter r to return to operator selection."
		
			elif [[ $n == "r" ]]; then
				echo "Enter one of the following operators: +, -, *, / or ^ | Enter q to exit the script"
				continue 2

			else
				echo "INVALID SELECTION"
				echo "Enter a number from 1 to 15 | Enter r to return to operator selection."
				continue 
			fi
		done

	elif [ "$operator" == "*" ]; then
		echo "Enter a number from 1 and 15 | Enter r to return to operator selection."
		while read n; do
			if [[ $n -ge 1 && $n -le 15 ]]; then
				counter=1
				while [ $counter -le 15 ];
				do
					let var=$n*$counter
					echo "$n * $counter = $var"
					((counter++))
				done
			echo 
			echo "Enter another number from 1 to 15 | Enter r to return to operator selection."
		
			elif [[ $n == "r" ]]; then
				echo "Enter one of the following operators: +, -, *, / or ^ | Enter q to exit the script"
				continue 2

			else
				echo "INVALID SELECTION"
				echo "Enter a number from 1 to 15 | Enter r to return to operator selection."
				continue 
			fi
		done

	elif [ "$operator" == "/" ]; then
		echo "Enter a number from 1 and 15 | Enter r to return to operator selection."
		while read n; do
			if [[ $n -ge 1 && $n -le 15 ]]; then
				counter=1
				while [ $counter -le 15 ];
				do
					var=$(printf %.3f "$((10**3 * $counter/$n ))e-3")
					echo "$counter / $n = $var"
					((counter++))
				done
			echo 
			echo "Enter another number from 1 to 15 | Enter r to return to operator selection."
		
			elif [[ $n == "r" ]]; then
				echo "Enter one of the following operators: +, -, *, / or ^ | Enter q to exit the script"
				continue 2

			else
				echo "INVALID SELECTION"
				echo "Enter a number from 1 to 15 | Enter r to return to operator selection."
				continue 
			fi
		done

	elif [ "$operator" == "^" ]; then
		echo "Enter a number from 1 and 15 | Enter r to return to operator selection."
		while read n; do
			if [[ $n -ge 1 && $n -le 15 ]]; then
				counter=1
				while [ $counter -le 15 ];
				do
					let var=$n**$counter
					echo "$n ^ $counter = $var"
					((counter++))
				done
			echo 
			echo "Enter another number from 1 to 15 | Enter r to return to operator selection."
		
			elif [[ $n == "r" ]]; then
				echo "Enter one of the following operators: +, -, *, / or ^ | Enter q to exit the script"
				continue 2

			else
				echo "INVALID SELECTION"
				echo "Enter a number from 1 to 15 | Enter r to return to operator selection."
				continue 
			fi
		done

	elif [ "$operator" == "q" ]; then
		echo "Exiting Script..."
		exit 0

	else 
		echo "INVALID SELECTION"
		echo "Enter one of the following operators: +, -, *, / or ^ | Enter q to exit the script"
	fi
done
