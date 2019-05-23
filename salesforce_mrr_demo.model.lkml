connection: "mrr_salesforce_demo"

# include all the views
include: "*.view"

datagroup: salesforce_mrr_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: salesforce_mrr_demo_default_datagroup

explore: contract_line {
  join: opportunity {
    type: left_outer
    sql_on: ${contract_line.opportunity_id} = ${opportunity.opportunity_id} ;;
    relationship: many_to_one
  }

  join: contract {
    type: left_outer
    sql_on: ${contract_line.contract_id} = ${contract.contract_id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${contract_line.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${opportunity.company_id} = ${company.company_id} ;;
    relationship: many_to_one
  }

  join: employee {
    type: left_outer
    sql_on: ${opportunity.employee_id} = ${employee.employee_id} ;;
    relationship: many_to_one
  }
}

explore: mrr {
  label: "MRR"
  join: contract_line {
    type: left_outer
    sql_on: ${mrr.contract_line_id} = ${contract_line.contract_line_id} ;;
    relationship: many_to_one
  }

  join: contract {
    type: left_outer
    sql_on: ${contract_line.contract_id} = ${contract.contract_id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${contract_line.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${contract.company_id} = ${company.company_id} ;;
    relationship: many_to_one
  }
}

explore: opportunity {
  join: company {
    type: left_outer
    sql_on: ${opportunity.company_id} = ${company.company_id} ;;
    relationship: many_to_one
  }

  join: employee {
    type: left_outer
    sql_on: ${opportunity.employee_id} = ${employee.employee_id} ;;
    relationship: many_to_one
  }

  join: opportunity_snapshot {
    type: left_outer
    sql_on: ${opportunity.opportunity_id} = ${opportunity_snapshot.opportunity_id};;
    relationship: one_to_many
  }
}

explore: mrr_aggregated {

  join: company {
    type: left_outer
    sql_on: ${mrr_aggregated.company_id} = ${company.company_id} ;;
    relationship: many_to_one
  }

}
