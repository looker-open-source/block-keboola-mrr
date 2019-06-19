view: contract {
  sql_table_name: CONTRACT ;;

  dimension: contract_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."CONTRACT_ID" ;;
  }

  dimension: contract_url {
    type: string
    # hidden: yes
    sql:  'https://keboola.lightning.force.com/lightning/r/Order' || ${TABLE}."CONTRACT_ID" || '/view' ;;
  }

  dimension: company_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."COMPANY_ID" ;;
  }

  dimension: contract {
    type: string
    sql: ${TABLE}."CONTRACT" ;;
  }

  dimension: employee_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."EMPLOYEE_ID" ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LEAD_SOURCE" ;;
  }

  dimension_group: contract_end {
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
    datatype: date
    sql: ${TABLE}."CONTRACT_END_DATE" ;;
  }

  dimension: contract_number {
    type: string
    sql: ${TABLE}."CONTRACT_NUMBER" ;;
    html: <a href={{contract_url}} target="_blank"><font color="blue">{{ value }}</font></a> ;;
  }

  dimension_group: contract_start {
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
    datatype: date
    sql: ${TABLE}."CONTRACT_START_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: [company.company_name, contract, contract_number, lead_source, employee.employee, contract_start_date, contract_line.contract_line_mrr]
  }
}
