view: company {
  sql_table_name: COMPANY ;;

  dimension: company_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."COMPANY_ID" ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}."COMPANY" ;;
    html: <a href={{company.website}} target="_blank"><font color="blue">{{ value }}</font></a> ;;
  }

  dimension_group: date_created {
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
    sql: ${TABLE}."DATE_CREATED" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."WEBSITE" ;;
  }

  measure: count {
    type: count
    drill_fields: [company_id, contract.count, opportunity.count]
  }
}
