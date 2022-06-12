package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"

	test_structure "github.com/gruntwork-io/terratest/modules/test-structure"
)

func TestPlanMulti_Instance_Region_Disks_NI_LB_Shutdown(t *testing.T) {
	t.Parallel()

	// Root folder where Terraform files should be (relative to the test folder)
	rootFolder := "../"

	// Path to Terraform example files being tested (relative to the root folder)
	terraformFolderRelativeToRoot := "./examples/"

	// Copy the terraform folder to a temp folder to prevent conflicts from parallel runs
	tempTestFolder := test_structure.CopyTerraformFolderToTemp(t, rootFolder, terraformFolderRelativeToRoot)

	// Generate a random deployment name for the test to prevent a naming conflict
	uniqueID := random.UniqueId()
	testREF := "Multi_Instance_Region_Disks_NI_LB_Shutdown"
	serviceDeployment := testREF + "-" + uniqueID

	// Define variables
	locations := []string{"UK South", "North Central US"} // Includes a region with Availability Zones and one using an Availability Set

	// Enable retryable error
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{

		// The path to where the Terraform code is located
		TerraformDir: tempTestFolder,

		// Variables to pass to the Terraform code using -var options
		Vars: map[string]interface{}{
			"service_deployment":               serviceDeployment,
			"resource_instance_count":          2,
			"service_location":                 locations,
			"resource_data_disk_count":         2,
			"resource_network_interface_count": 2,
			"provision_public_load_balancer":   true,
			"resource_shutdown_enabled":        true,
		},
	})

	// Run `terraform init` and `terraform plan`. Fail the test if there are any errors.
	terraform.InitAndPlan(t, terraformOptions)
}
