data "oci_identity_compartments" "compute_cmp_lvl_1" {
  #Required
  compartment_id = var.tenancy_ocid

  #Optional
  name = var.compartments[0]
}

data "oci_identity_compartments" "compute_cmp_lvl_2" {
  #Required
  compartment_id = data.oci_identity_compartments.compute_cmp_lvl_1.compartments[0].id

  #Optional
  name = var.compartments[1]

  count = can(var.compartments[1]) ? 1 : 0
}

data "oci_identity_compartments" "compute_cmp_lvl_3" {
  #Required
  compartment_id = data.oci_identity_compartments.compute_cmp_lvl_2[0].compartments[0].id

  #Optional
  name = var.compartments[2]

  count = can(var.compartments[2]) ? 1 : 0
}

data "oci_identity_compartments" "compute_cmp_lvl_4" {
  #Required
  compartment_id = data.oci_identity_compartments.compute_cmp_lvl_3[0].compartments[0].id

  #Optional
  name = var.compartments[3]

  count = can(var.compartments[3]) ? 1 : 0
}

data "oci_identity_compartments" "compute_cmp_lvl_5" {
  #Required
  compartment_id = data.oci_identity_compartments.compute_cmp_lvl_4[0].compartments[0].id

  #Optional
  name = var.compartments[4]

  count = can(var.compartments[4]) ? 1 : 0
}

data "oci_identity_compartments" "compute_cmp_lvl_6" {
  #Required
  compartment_id = data.oci_identity_compartments.compute_cmp_lvl_5[0].compartments[0].id

  #Optional
  name = var.compartments[5]

  count = can(var.compartments[5]) ? 1 : 0
}