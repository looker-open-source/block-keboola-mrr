view: product {
  sql_table_name: PRODUCT ;;

  dimension: product_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}."PRODUCT" ;;
  }

  dimension: product_family {
    type: string
    sql: ${TABLE}."PRODUCT_FAMILY" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_id, contract_line.count]
  }
}
