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
  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }
  dimension: order_amount {
    type: number
    sql: ${TABLE}.order_amount ;;
  }
  dimension: order_amount_usd {
    type: number
    sql: ${TABLE}.order_amount_usd ;;
  }
  dimension: order_number {
    type: string
    sql: ${TABLE}.order_number ;;
  }
}
