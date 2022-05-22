package test

import (
	"log"
	"os"
	"strconv"
	"testing"
	"time"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/joho/godotenv"
)

func TestCompleteExample(t *testing.T) {
	godotenv.Load("../../.env")

	// DELAY is the time in seconds to run terraform destroy after terraform apply
	DELAY, _ := strconv.Atoi(os.Getenv("DELAY"))
	varFiles := []string{"../../examples/complete/terraform.tfvars"}
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../../examples/complete",
		VarFiles:     varFiles,
		Vars: map[string]interface{}{
			"tfe_token":               os.Getenv("TFE_TOKEN"),
			"vcs_repo_oauth_token_id": os.Getenv("OAUTH_TOKEN_ID"),
		},
		Upgrade:     true,
		Reconfigure: true,
	})

	defer terraform.Destroy(t, terraformOptions)
	// Delay the execution of the terraform destroy
	defer func() {
		delay(DELAY)
	}()

	terraform.InitAndApply(t, terraformOptions)

}

func delay(seconds int) {
	for {
		if seconds <= 0 {
			break
		} else {
			log.Println(seconds)
			time.Sleep(1 * time.Second)
			seconds--
		}
	}
}
