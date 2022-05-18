$tpBackup = @{}

#  Write-au2matorLog -Type Info -Text "$Duration"

            #Remove-Item -Path $BackupDir -Force -Recurse 
#             get-childitem -Path $BackupDir -recurse -Force | remove-item -Confirm:$false -Recurse
#             get-item -Path $BackupDir | remove-item -Confirm:$false -Recurse

function DeleteDir($dir) {
    get-childitem -Path $dir -recurse -Force | remove-item -Confirm:$false -Recurse
    get-item -Path $dir | remove-item -Confirm:$false -Recurse
}
