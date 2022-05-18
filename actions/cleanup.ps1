##CLEANUP VERSION
# Write-au2matorLog -Type Info -Text "Cleanup Backup Dir"

$Versions=5
$Count = (Get-ChildItem $Destination | Where-Object { $_.Attributes -eq "Directory" }).count

if ($count -gt $Versions) {
    Write-au2matorLog -Type Info -Text "Found $count Backups"
    $Folder = Get-ChildItem $Destination | Where-Object { $_.Attributes -eq "Directory" } | Sort-Object -Property CreationTime -Descending:$false | Select-Object -First 1

#     Write-au2matorLog -Type Info -Text "Remove Dir: $Folder"
    
    $Folder.FullName | Remove-Item -Recurse -Force 
    
    echo "done"
}
