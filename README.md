# tfmodule-compute
Terraform module for deploying VMs to Azure, with features enabled via submodules, Terratest Unit/Integration testing via Go, and Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline
## [CI/CD Pipeline](https://dev.azure.com/wesleytrust/Terraform/_build?definitionId=97)
Select a stage to view in Azure DevOps. *Note that 'Skipped' stages in the last run, will show as "unknown" by design.*
| Pipeline |
| :-------: |
|[![Build Status](https://dev.azure.com/wesleytrust/Terraform/_apis/build/status/Modules/Deployments/ENV-P%3BREF-latest%3B%20tfmodule-compute?repoName=wesley-trust%2Ftfmodule-compute&branchName=main)](https://dev.azure.com/wesleytrust/Terraform/_build/latest?definitionId=97&repoName=wesley-trust%2Ftfmodule-compute&branchName=main)|
### Testing Stages
| Unit Tests | Integration Tests |
|  :-------: | :---------------: |
|[![Build Status](https://dev.azure.com/wesleytrust/Terraform/_apis/build/status/Modules/Deployments/ENV-P%3BREF-latest%3B%20tfmodule-compute?repoName=wesley-trust%2Ftfmodule-compute&branchName=main&stageName=Unit)](https://dev.azure.com/wesleytrust/Terraform/_build/latest?definitionId=97&repoName=wesley-trust%2Ftfmodule-compute&branchName=main)|[![Build Status](https://dev.azure.com/wesleytrust/Terraform/_apis/build/status/Modules/Deployments/ENV-P%3BREF-latest%3B%20tfmodule-compute?repoName=wesley-trust%2Ftfmodule-compute&branchName=main&stageName=Integration)](https://dev.azure.com/wesleytrust/Terraform/_build/latest?definitionId=97&repoName=wesley-trust%2Ftfmodule-compute&branchName=main)|