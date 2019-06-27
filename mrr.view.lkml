view: mrr {
  sql_table_name: MRR ;;
  label: "MRR"

  dimension: mrr_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."MRR_ID" ;;
  }

  dimension: contract_line_currency {
    type: string
    sql: ${TABLE}."CONTRACT_LINE_CURRENCY" ;;
  }

  dimension: contract_line_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."CONTRACT_LINE_ID" ;;
  }

  measure: contract_line_quantity {
    type: sum
    sql: ${TABLE}."CONTRACT_LINE_QUANTITY" ;;
  }

  measure: contract_line_unit_price {
    type: sum
    sql: ${TABLE}."CONTRACT_LINE_UNIT_PRICE" ;;
  }

  measure: contract_line_mrr {
    type: number
    sql: (${contract_line_unit_price} * ${contract_line_quantity});;
    value_format: "#,##0"
    drill_fields: [company.company_name,contract.contract_id,employee.employee,contract_line_mrr]
  }

  dimension_group: date {
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
    sql: ${TABLE}."DATE" ;;
  }

  measure: previous_contract_line_quantity {
    type: sum
    sql: ${TABLE}."PREVIOUS_CONTRACT_LINE_QUANTITY" ;;
  }

  measure: previous_contract_line_unit_price {
    type: sum
    sql: ${TABLE}."PREVIOUS_CONTRACT_LINE_UNIT_PRICE" ;;
  }

  measure: previous_contract_line_mrr {
    type: number
    sql: (${previous_contract_line_unit_price} * ${previous_contract_line_quantity});;
    value_format: "#,##0"
    drill_fields: [company.company_name,contract.contract_id,employee.employee,contract_line_mrr,previous_contract_line_mrr]
  }

  measure: count {
    type: count
    drill_fields: [mrr_id, contract_line.contract_line_id]
  }

  dimension: contract_line_change {
    type: string
    case: {
      when: {
        sql: ${TABLE}."PREVIOUS_CONTRACT_LINE_UNIT_PRICE" * ${TABLE}."PREVIOUS_CONTRACT_LINE_QUANTITY" =  ${TABLE}."CONTRACT_LINE_UNIT_PRICE" * ${TABLE}."CONTRACT_LINE_QUANTITY" ;;
        label: "No Change"
      }
      when: {
        sql: ${TABLE}."PREVIOUS_CONTRACT_LINE_UNIT_PRICE" * ${TABLE}."PREVIOUS_CONTRACT_LINE_QUANTITY" = 0 ;;
        label: "Net New"
      }
      when: {
        sql: ${TABLE}."CONTRACT_LINE_UNIT_PRICE" * ${TABLE}."CONTRACT_LINE_QUANTITY" = 0 ;;
        label: "Churn"
      }
      when: {
        sql: ${TABLE}."PREVIOUS_CONTRACT_LINE_UNIT_PRICE" * ${TABLE}."PREVIOUS_CONTRACT_LINE_QUANTITY" >  ${TABLE}."CONTRACT_LINE_UNIT_PRICE" * ${TABLE}."CONTRACT_LINE_QUANTITY" ;;
        label: "Downgrade"
      }
      when: {
        sql: ${TABLE}."PREVIOUS_CONTRACT_LINE_UNIT_PRICE" * ${TABLE}."PREVIOUS_CONTRACT_LINE_QUANTITY" >  ${TABLE}."CONTRACT_LINE_UNIT_PRICE" * ${TABLE}."CONTRACT_LINE_QUANTITY" ;;
        label: "Upgrade"
      }
      else: "No Change"
    }
  }
}
