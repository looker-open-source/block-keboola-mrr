view: mrr_aggregated {
  label: "MRR Aggregated"
  sql_table_name: MRR_AGGREGATED ;;

  dimension: mrr_aggregated_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."MRR_AGGREGATED_ID" ;;
  }

  dimension: company_id {
    type: string
    sql: ${TABLE}."COMPANY_ID" ;;
  }

  measure: count_change {
    type: sum
    sql: ${TABLE}."COUNT_CHANGE" ;;
    drill_fields: [company.company,gross_action]
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."CURRENCY" ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: gross_action {
    type: string
    sql: ${TABLE}."GROSS_ACTION" ;;
  }

  dimension: ARR_bucket {
    label: "ARR Bucket"
    type: tier
    tiers: [25000,50000,75000,100000]
    sql: ${TABLE}."GROSS_MRR"*12 ;;
    style: relational
    value_format: "#,k"
    view_label: ""
  }

  dimension: customer_active {
    type: string
    sql: IFF(${TABLE}."GROSS_MRR" > 0,'Yes','No') ;;
  }

  measure: customer_count {
    type: count_distinct
    sql: ${TABLE}."COMPANY_ID";;
    view_label: ""
    filters: {
      field: customer_active
      value: "Yes"
    }
    drill_fields: [company.company_name,gross_mrr,gross_mrr]
  }

  measure: gross_mrr {
    label: "Gross MRR"
    type: sum
    sql: ${TABLE}."GROSS_MRR" ;;
    drill_fields: [company.company,gross_mrr]
  }

  measure: gross_mrr_change {
    label: "Gross MRR Change"
    type: sum
    sql: ${TABLE}."GROSS_MRR_CHANGE" ;;
    drill_fields: [company.company,gross_mrr_change]
  }

  measure: previous_gross_mrr {
    label: "Previous Gross MRR"
    type: sum
    sql: ${TABLE}."PREVIOUS_GROSS_MRR" ;;
    drill_fields: [company.company,previous_gross_mrr]
  }

  measure: gross_mrr_AVG {
    label: "Gross MRR AVG"
    type: average
    sql: ${TABLE}."GROSS_MRR" ;;
    drill_fields: [company.company_name,gross_mrr_AVG]
  }

  measure: count {
    type: count
    drill_fields: [mrr_aggregated_id]
  }
}
