view: ubeautyus_influencer_ltv {
  sql_table_name: consumer.custom.ubeautyus_influencer_ltv ;;

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: field_1 {
    type: string
    sql: ${TABLE}.field_1 ;;
  }
  dimension: field_2 {
    type: number
    sql: ${TABLE}.field_2 ;;
  }
  dimension: field_3 {
    type: string
    sql: ${TABLE}.field_3 ;;
  }
  dimension: field_4 {
    type: number
    sql: ${TABLE}.field_4 ;;
  }
  dimension_group: fulfill {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fulfill_date ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: net_sale {
    type: number
    sql: ${TABLE}.net_sale ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
}
