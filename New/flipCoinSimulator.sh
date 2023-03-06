#!/bin/bash

Check=$((RANDOM%2))
Coin=1;

if [ $Check -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi