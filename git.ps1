Write-Host("
-----------------------------
Working on Machine Learning
-----------------------------
");
# Storing the console output into a Variable.
$OutputVariable = (git branch --show-current) | Out-String

# Checking the branch using git command
if( $OutputVariable -eq "main" ) {
    Write-Host("
    -----------------------------
           On Main Branch
    -----------------------------");
    
    Write-Host("
    -----------------------------
            Git Status
    -----------------------------");
    git status
    Write-Host("
    -----------------------------
    getting Files from Main Repo
    -----------------------------
    ");
    git pull 

} else 
{
    Write-Host("
    ----------------------------------------
    Not on master, it's the Learning Branch
    ----------------------------------------");
    Write-Host("
    --------------------
    Running git commands
    --------------------
    ");
    git status
    git add * 
    git commit -m 'Updating Files in Learning  Branch'
    git push
}
