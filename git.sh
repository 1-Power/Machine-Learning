#!/bin/bash
echo "
---------------------------------------------------------
    ---  This is the Machine Learning Branch ---
---------------------------------------------------------
"
output=$(git branch --show-current)

# echo "Current Branch: $output"

if [["$output" == "main"]];
then 
    echo "
------------------------------------------------
    --- You are on the master branch ---
------------------------------------------------"
    git checkout main
    git pull
else
    echo "
-----------------------------------------------------------
        --- You are not on the main branch ---
        --- This is the Learning Branch ---
------------------------------------------------------------"

    git add *
    git commit -m "Machine Learning Model"
    git push
fi