# variables
$username = (Get-AzKeyVaultSecret -VaultName rooKeyVault -Name sqlInstallUserName).SecretValueText
$password = (Get-AzKeyVaultSecret -VaultName rooKeyVault -Name sqlInstall).SecretValue
$creds = New-Object System.Management.Automation.PSCredential ($username, $password)
$hash1 = @{'SqlInstallCredential' = $creds; 'SqlServiceCredential' = $creds}

Set-AzVMDscExtension `
-Version '2.76' `
-ResourceGroupName 'obodeploy' `
-VMName 'SRPDBSrv' `
-ArchiveStorageAccountName 'roosa' `
-ArchiveBlobName 'SqlInstall_config.ps1.zip' `
-ArchiveResourceGroupName 'roorg' `
-ArchiveContainerName 'dsc' `
-ConfigurationName 'SQLInstall' `
-ConfigurationData 'SqlInstall_data.psd1'
-ConfigurationArgument $hash1 `
-Force


#-ConfigurationData $(System.DefaultWorkingDirectory)/DSC/sqlInstall_data.psd1 `
