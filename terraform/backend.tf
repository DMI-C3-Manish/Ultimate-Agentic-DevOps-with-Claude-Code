# Terraform Backend Configuration
#
# IMPORTANT: Backend should be uncommented AFTER the initial infrastructure setup.
#
# Setup Process:
#   1. First run: terraform init (without backend)
#   2. Create resources: terraform apply
#   3. Create a separate S3 bucket for Terraform state (manually or via separate Terraform)
#   4. Uncomment the backend block below
#   5. Run: terraform init -migrate-state (to migrate local state to S3)
#   6. Run: terraform apply (to confirm)
#
# This two-step process avoids the chicken-and-egg problem of needing the state bucket
# to exist before you can reference it in the backend configuration.

# terraform {
#   backend "s3" {
#     bucket         = "terraform-state-bucket"  # Change to your state bucket name
#     key            = "portfolio-site/terraform.tfstate"
#     region         = "ap-south-1"
#     encrypt        = true
#     dynamodb_table = "terraform-locks"         # Optional: for state locking
#   }
# }
