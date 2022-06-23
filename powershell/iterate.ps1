# Loop through files in a directory using PowerShell
# https://stackoverflow.com/questions/18847145/loop-through-files-in-a-directory-using-powershell

# get the current dir name where the ps1 file runs (not necessary the ps1 locates)

# $files = Get-ChildItem "d:\temp4"
# $files = Get-ChildItem "." -Filter *.pdf
$files = Get-ChildItem "D:\_projects\arsenalOfCodeTnT\autohotkey" # -Filter *.7z.*

foreach ($f in $files) {
    # $outfile = $f.FullName + "_out" 
    $lastDotIndex = $f.FullName.LastIndexOf(".")
    # Write-Output "name : " + $f.Name + " last index = " + $lastDotIndex
    Write-Host "name : " + $f.Name + " last index = " + $lastDotIndex
    $newName = $f.FullName.SubString(0, $lastDotIndex)
    # Write-Output $outfile
    # Write-Output "newName: " , $newName
    Write-Host "newName: " , $newName
    # Get-Content $f.FullName | Where-Object { ($_ -match 'step4' -or $_ -match 'step9') } | Set-Content $outfile
    # Get-Content $f.FullName | Where-Object { ($_ -match '*.txt') } 
}