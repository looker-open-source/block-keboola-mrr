view: contract {
  sql_table_name: CONTRACT ;;

  dimension: contract_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."CONTRACT_ID" ;;
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
    drill_fields: [company.company, contract, contract_number, contract_start_date, contract_line.contract_line_mrr]
  }
}
