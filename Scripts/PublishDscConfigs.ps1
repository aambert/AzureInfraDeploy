
# Installs required modules and publishes DSC configurations
Install-Module xStorage -Scope CurrentUser -Force
Install-Module StorageDsc -Scope CurrentUser -Force

# Publish DSC Configurations
Publish-AzVMDscConfiguration '.\DSC\FormatDrives_srp_db_config.ps1' -ResourceGroupName 'roorg' -ContainerName 'dsc' -StorageAccountName 'roosa' -Force