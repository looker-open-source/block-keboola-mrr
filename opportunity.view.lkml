view: opportunity {
  sql_table_name: OPPORTUNITY ;;

  set: company_opportunity_source_employee {
    fields: [
      company.company,
      opportunity_id,
      lead_source,
      employee.employee,
      created_date
    ]
  }

  dimension: opportunity_id {
    label: "Opportunity ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."OPPORTUNITY_ID" ;;
    html: <a href={{opportunity_url}} target="_blank"><font color="blue">{{ value }}</font></a> ;;
  }

  dimension: opportunity_url {
    label: "Opportunity URL"
    type: string
    sql:  'https://@{domain}/lightning/r/Opportunity' || ${opportunity_id} || '/view' ;;
  }

  dimension: company_id {
    type: string
    hidden: yes
    sql: ${TABLE}."COMPANY_ID" ;;
  }

  dimension: employee_id {
    type: string
    hidden: yes
    sql: ${TABLE}."EMPLOYEE_ID" ;;
  }

  dimension_group: close {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}."CLOSE_DATE" ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LEAD_SOURCE" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}."CREATED_DATE" ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}."IS_CLOSED"='Yes' ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}."IS_WON"='Yes' ;;
  }

  dimension: opportunity {
    type: string
    sql: ${TABLE}."OPPORTUNITY" ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}."STAGE" ;;
  }

  dimension: opportunity_value_dimension {
    hidden: yes
    type: number
    sql: ${TABLE}."OPPORTUNITY_VALUE" ;;
  }

  measure: opportunity_value {
    description: "Current opportunity value"
    type: sum
    sql: ${opportunity_value_dimension} ;;
    value_format: "#,##0"
    drill_fields: [company_opportunity_source_employee*, opportunity_value]
  }

  measure: count {
    type: count
    drill_fields: [company_opportunity_source_employee*, opportunity_value]
  }
}
