#!/bin/bash

IFS=':' # Internal Field Separator
read -ra path_components <<< "$PATH" # Split PATH into array

for component in "${path_components[@]}"; do
    echo "$component"
done
