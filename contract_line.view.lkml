view: contract_line {
  sql_table_name: CONTRACT_LINE ;;

  dimension: contract_line_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."CONTRACT_LINE_ID" ;;
  }

  dimension: contract_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."CONTRACT_ID" ;;
  }

  dimension: contract_line_currency {
    type: string
    sql: ${TABLE}."CONTRACT_LINE_CURRENCY" ;;
  }

  dimension_group: contract_line_end {
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
    sql: ${TABLE}."CONTRACT_LINE_END_DATE" ;;
  }

  measure: contract_line_quantity {
    type: sum
    sql: ${TABLE}."CONTRACT_LINE_QUANTITY" ;;
  }

  dimension_group: contract_line_start {
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
    sql: ${TABLE}."CONTRACT_LINE_START_DATE" ;;
  }

  measure: contract_line_unit_price {
    type: sum
    sql: ${TABLE}."CONTRACT_LINE_UNIT_PRICE" ;;
  }

  dimension: opportunity_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."OPPORTUNITY_ID" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [contract_line_id, opportunity.opportunity_id, contract.contract_id, product.product_id, mrr.count]
  }

  measure: contract_line_mrr {
    type: number
    sql: (${contract_line_unit_price} * ${contract_line_quantity});;
    value_format: "#,##0"
    drill_fields: [company.companye, contract.contract, contract_line_mrr]
  }
}
