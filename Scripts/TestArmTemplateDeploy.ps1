# Test Server ARM template
Test-AzResourceGroupDeployment -ResourceGroupName obodeploy -Mode Incremental -TemplateParameterFile .\Templates\Server\Server_mag.parameters.json -TemplateFile .\Templates\Server\Server.json -ErrorAction Stop
    
# Test DomainJoin ARM template
Test-AzResourceGroupDeployment -ResourceGroupName obodeploy -Mode Incremental -TemplateParameterFile .\Templates\Server\DomainJoin.mag.parameters.json  -TemplateFile .\Templates\Server\DomainJoin.json -ErrorAction Stop
