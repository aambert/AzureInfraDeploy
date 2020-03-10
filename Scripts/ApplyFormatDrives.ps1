
#Deploys DSC extension to VM and applies DSC configuration
Set-AzVMDscExtension `
-ResourceGroupName 'obodeploy' `
-VMName 'SRPDBSrv' `
-ArchiveBlobName 'FormatDrivesConfig.ps1.zip' `
-ArchiveStorageAccountName 'roosa' `
-ArchiveResourceGroupName 'roorg' `
-ArchiveContainerName 'dsc' `
-ConfigurationName 'FormatDrives' `
-Version 2.76 -Force
