#!/bin/bash
echo "
---------------------------------------------------------
    ---  This is the Machine Learning Branch ---
---------------------------------------------------------
"
output=$(git branch --show-current)

# echo "Current Branch: $output"

# campare string with if statement
# if [ "$output" = "Machine-Learning" ]; then
#     echo "You are on the Machine Learning Branch"
#     git add *
#     git commit -m "Machine Learning Model"
#     git push
# else
#     echo "You are not on the Machine Learning Branch"
#     git checkout main
#     git pull
# fi

if [ "$output" = "main" ];then 
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