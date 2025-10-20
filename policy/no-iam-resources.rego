package terraform.analysis

import rego.v1

deny contains msg if {
    some resource in input.resource_changes
    startswith(resource.type, "aws_iam")
    msg := sprintf("IAM resource creation blocked: %s (%s)", [resource.address, resource.type])
}