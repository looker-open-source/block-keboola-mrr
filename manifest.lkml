project_name: "block-keboola-mrr"

################ Constants ################

constant: CONFIG_PROJECT_NAME {
  value: "block-keboola-mrr-config"
  export: override_required
}

constant: CONNECTION {
  value: "keboola_block_mrr_salesforce"
}

constant: SCHEMA_NAME {
  value: "WORKSPACE_544085999"
}

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
}
