view: opportunity_snapshot {
  sql_table_name: OPPORTUNITY_SNAPSHOT ;;

  dimension: snapshot_id {
    type:  string
    sql: ${TABLE}."OPPORTUNITY_ID"||'_'||${TABLE}."SNAPSHOT_DATE" ;;
    hidden: yes
    primary_key: yes
  }

  dimension: employee_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."EMPLOYEE_ID" ;;
  }

  dimension: opportunity_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."OPPORTUNITY_ID" ;;
  }

  measure: opportunity_value {
    type: sum_distinct
    sql: ${TABLE}."OPPORTUNITY_VALUE" ;;
  }

  dimension: opportunity_value_change {
    type: string
    sql: ${TABLE}."OPPORTUNITY_VALUE_CHANGE" ;;
  }

  measure: previous_opportunity_value {
    type: sum_distinct
    sql: ${TABLE}."PREVIOUS_OPPORTUNITY_VALUE" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."SNAPSHOT_DATE" ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}."STAGE" ;;
  }

  dimension: stage_change {
    type: string
    sql: ${TABLE}."STAGE_CHANGE" ;;
  }

  measure: count {
    type: count
    drill_fields: [opportunity.opportunity_id, employee.employee_id]
  }

  measure: opportunities {
    type: count_distinct
    sql: ${opportunity_id} ;;
    drill_fields: [company.company_name,opportunity_id,opportunity.opportunity,opportunity.opportunity_value]
  }
}
