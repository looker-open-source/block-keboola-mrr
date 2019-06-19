view: opportunity {
  sql_table_name: OPPORTUNITY ;;

  dimension: opportunity_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."OPPORTUNITY_ID" ;;
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
    datatype: date
    sql: ${TABLE}."CLOSE_DATE" ;;
  }

  dimension: company_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."COMPANY_ID" ;;
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
    datatype: date
    sql: ${TABLE}."CREATED_DATE" ;;
  }

  dimension: employee_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."EMPLOYEE_ID" ;;
  }

  dimension: is_closed {
    type: string
    sql: ${TABLE}."IS_CLOSED" ;;
  }

  dimension: is_won {
    type: string
    sql: ${TABLE}."IS_WON" ;;
  }

  dimension: opportunity {
    type: string
    sql: ${TABLE}."OPPORTUNITY" ;;
  }

  measure: opportunity_value {
    type: sum
    sql: ${TABLE}."OPPORTUNITY_VALUE" ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}."STAGE" ;;
  }

  measure: count {
    type: count
    drill_fields: [company.company_name, opportunity, lead_source, employee.employee, created_date, opportunity_value]
  }
}
