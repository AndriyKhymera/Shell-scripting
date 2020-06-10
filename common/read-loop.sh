#!/bin/bash

print_file(){
	while read line; do
		echo "$line"
	done < $1
}
