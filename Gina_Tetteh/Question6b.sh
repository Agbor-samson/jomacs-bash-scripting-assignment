#!/bin/bash
#Question_6b

#Author: georgina Tetteh
#Created:05/09/2023


echo -n "How many lines of /etc/passwd would you like to see? "
read num_lines

if [[ ! "$num_lines" =~ ^[0-9]+$ ]]; then
	    echo "Invalid input. Please enter a valid number."
	        exit 1
fi

line_number=1
while IFS= read -r line; do
	    if [[ "$line_number" -le "$num_lines" ]]; then
		            echo "$line"
			        else
					        break
						    fi
						        ((line_number++))
						done < /etc/passwd

