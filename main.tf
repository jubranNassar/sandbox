terraform {
  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.1.5"
    }
  }
}

provider "spacelift" {
  # Configuration options
}

resource "spacelift_stack" "sandbox-child" {
  branch     = "main"
  name       = "example"
  repository = "sandbox"
  space_id   = "legacy-child-01GXBM7578FN4Z5XY17T30DNZV"
  github_enterprise {
    namespace = "jubranNassar"
  }
}


resource "spacelift_stack" "mercedez-benz" {
  branch            = "main"
  name              = "mercedes-benz"
  project_root      = "mercedes"
  repository        = "sandbox"
  terraform_version = "1.3.0"
  github_enterprise {
    namespace = "jubranNassar"
  }
}