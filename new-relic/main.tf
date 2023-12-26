module "newrelic-aws-cloud-integrations" {
  source = "github.com/newrelic/terraform-provider-newrelic//examples/modules/cloud-integrations/aws"

  newrelic_account_id     = 4298101
  newrelic_account_region = "US"
  name                    = "production"
}