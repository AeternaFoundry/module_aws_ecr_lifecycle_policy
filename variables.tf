variable "ecr_lifecycle_policies" {
  description = <<EOT
Map of ecr_lifecycle_policies, attributes below
Required:
    - policy
    - repository
Optional:
    - region
EOT

  type = map(object({
    policy     = string
    repository = string
    region     = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

