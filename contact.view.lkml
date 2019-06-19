view: contact {
  sql_table_name: CONTACT ;;

  dimension: contact_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."CONTACT_ID" ;;
  }

  dimension: contact_url {
    type: string
    # hidden: yes
    sql:  'https://keboola.lightning.force.com/lightning/r/' || iff(${TABLE}."CONTACT_TYPE" = 'Contact' , 'Contact/', 'Lead/') || ${TABLE}."CONTACT_ID" || '/view' ;;
  }

  dimension: company_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."COMPANY_ID" ;;
  }

  dimension: contact {
    type: string
    sql: ${TABLE}."CONTACT" ;;
    html: <a href={{contact_url}} target="_blank"><font color="blue">{{ value }}</font></a> ;;
  }

  dimension: contact_type {
    type: string
    sql: ${TABLE}."CONTACT_TYPE" ;;
  }

  dimension: employee_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."EMPLOYEE_ID" ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: lead_converted {
    type: string
    sql: ${TABLE}."LEAD_CONVERTED" ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LEAD_SOURCE" ;;
  }

  measure: count {
    type: count

    drill_fields: [company.company_name, contact, lead_source, employee.employee, date_created_date, count]
  }
}
