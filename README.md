# tfmodule-windows_virtual_machine
Terraform module for deploying VMs to Azure, with features enabled via submodules, Terratest Unit/Integration testing via Go, and Regula (OPA) Policy as Code scanning in an Azure DevOps CI/CD Pipeline
## [CI/CD Pipeline](https://dev.azure.com/wesleytrust/Terraform/_build?definitionId=66)
Select a stage to view in Azure DevOps. *Note that 'Skipped' stages in the last run, will show as "unknown" by design.*
### Testing
| Unit Tests | Integration Tests |
|  :-------: | :---------------: |
|[![Build Status](https://dev.azure.com/wesleytrust/Terraform/_apis/build/status/Modules/Deployments/tfmodule-windows_virtual_machine?repoName=wesley-trust%2Ftfmodule-windows_virtual_machine&branchName=main&stageName=Unit)](https://dev.azure.com/wesleytrust/Terraform/_build/latest?definitionId=63&repoName=wesley-trust%2Ftfmodule-windows_virtual_machine&branchName=main)|[![Build Status](https://dev.azure.com/wesleytrust/Terraform/_apis/build/status/Modules/Deployments/tfmodule-windows_virtual_machine?repoName=wesley-trust%2Ftfmodule-windows_virtual_machine&branchName=main&stageName=Integration)](https://dev.azure.com/wesleytrust/Terraform/_build/latest?definitionId=63&repoName=wesley-trust%2Ftfmodule-windows_virtual_machine&branchName=main)|