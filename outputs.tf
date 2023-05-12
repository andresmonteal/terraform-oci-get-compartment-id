output "id" {
  value = try(
    data.oci_identity_compartments.compute_cmp_lvl_6[0].compartments[0].id,
    data.oci_identity_compartments.compute_cmp_lvl_5[0].compartments[0].id,
    data.oci_identity_compartments.compute_cmp_lvl_4[0].compartments[0].id,
    data.oci_identity_compartments.compute_cmp_lvl_3[0].compartments[0].id,
    data.oci_identity_compartments.compute_cmp_lvl_2[0].compartments[0].id,
    data.oci_identity_compartments.compute_cmp_lvl_1.compartments[0].id
  )
}