view: ubeautyus_ctu_shopmy {
  sql_table_name: consumer.custom.ubeautyus_ctu_shopmy ;;

  dimension: code_used {
    type: string
    sql: ${TABLE}.code_used ;;
  }
  dimension: commission {
    type: number
    sql: ${TABLE}.commission ;;
  }
  dimension: commission_usd {
    type: number
    sql: ${TABLE}.commission_usd ;;
  }
  dimension: new_customer {
    type: string
    sql: ${TABLE}.new_customer ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension_group: fulfillment {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fulfillment_date ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: dtc_code {
    type: string
    sql: ${TABLE}.dtc_code ;;
  }
  dimension: order_amount {
    type: number
    sql: ${TABLE}.order_amount ;;
  }
  dimension: gross {
    type: number
    sql: ${TABLE}.gross ;;
  }
  dimension: order_number {
    type: string
    sql: ${TABLE}.order_number ;;
  }
}
