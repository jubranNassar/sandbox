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

resource "spacelift_stack" "test" {
  branch            = "main"
  name              = "mercedes-benz"
  project_root      = "mercedes"
  repository        = "sandbox"
  terraform_version = "1.3.10"
  github_enterprise {
    namespace = "jubranNassar"
  }
}


resource "spacelift_blueprint" "test-blueprint" {
  name = "test-blueprint"
  space = "legacy"
  state = "PUBLISHED"
  template = file("./blueprints/test.yaml")
}
