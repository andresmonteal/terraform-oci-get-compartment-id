variable "tenancy_ocid" {
  description = "The OCID of the root compartment."
}

variable "compartments" {
  description = "Hierarchy compartment list"
  type        = list(string)
}
