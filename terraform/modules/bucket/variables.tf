## Copyright (c) 2020, Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

variable "compartment_id" {
  description = "Compartment OCID where the VCN is created."
  type        = string
}

variable "bucket_name" {
  description = "Name of the bucket to create"
  type        = string
}

variable "enabled" {
  type    = bool
  default = true
}

// Tags
variable "freeform_tags" {
  type = map(string)
  default = null
}

variable "defined_tags" {
  type = map(string)
  default = null
}
