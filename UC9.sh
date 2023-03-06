#!/bin/bash

flip=$((RANDOM%2));


if [ $flip -eq 1 ]
then
	echo "The Heads"
else
	echo "The Tails"
fi