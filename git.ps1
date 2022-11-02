Write-Host("Working on Machine Learning");
# Storing the console output into a Variable.
$OutputVariable = (git branch --show-current) | Out-String
# Displaying the Output from the variable
# Get-Variable OutputVariable

# Checking the Branch and then commiting on the bases of branch
if( $OutputVariable -eq "main" ) {
    Write-Host("On Main Branch");
    # Checking the Current Status
    git status
    # Getting from the main remote repo
    git pull 
    
} else 
{
    Write-Host("Not on master, it's the Learning Branch");
    Write-Host("Running git commands");
    git status
    git add * 
    git commit -m 'Updating Files in Learning  Branch'
    git push
}
# else {
#     Write-Host("No Branch was Detected");
#     Write-Host("Please try Again") 
# }



