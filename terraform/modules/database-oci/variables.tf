## Copyright (c) 2020, 2021, Oracle and/or its affiliates.
## Licensed under the Universal Permissive License v1.0 as shown at https://oss.oracle.com/licenses/upl.

variable "enabled" {
  type    = bool
  default = true
}

variable "database_id" {
  type    = string
}

variable "pdb_name" {
  type    = string
  default = ""
}


