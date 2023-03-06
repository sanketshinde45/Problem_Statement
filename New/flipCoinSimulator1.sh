#!/bin/bash

Heads=1;
Tails=2;
Flip=1;

while [[ $Flip -le 100 ]]
do
	Coin=$((RANDOM%2));
	case $Coin in
		1)
			echo "Heads"
			Heads=1;
		;;
		2)
			echo "Tails"
			Tails=2;
		;;
	esac

Flip=$(($Flip));

done	