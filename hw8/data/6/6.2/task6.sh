#!/bin/bash

file=./fin

symbols=$(sed -n '/[0-9]/ { /[XxYy]/! p }' $file | sed -z 's/\n//g' | wc -c)
echo $symbols
