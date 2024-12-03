view: ubeautyus_ctu_social {
  sql_table_name: consumer.custom.ubeautyus_ctu_social ;;

  dimension_group: calendar {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.calendar_date ;;
  }
  dimension: meta_conversions {
    type: number
    sql: ${TABLE}.meta_conversions ;;
  }
  dimension: meta_revenue {
    type: number
    sql: ${TABLE}.meta_revenue ;;
  }
  dimension: tiktok_conversions {
    type: number
    sql: ${TABLE}.tiktok_conversions ;;
  }
  dimension: tiktok_revenue {
    type: number
    sql: ${TABLE}.tiktok_revenue ;;
  }
  dimension: field_2 {
    type: number
    sql: ${TABLE}.field_2 ;;
  }
  dimension: field_3 {
    type: number
    sql: ${TABLE}.field_3 ;;
  }
  dimension: field_4 {
    type: number
    sql: ${TABLE}.field_4 ;;
  }
  dimension: field_5 {
    type: number
    sql: ${TABLE}.field_5 ;;
  }
  dimension: field_6 {
    type: number
    sql: ${TABLE}.field_6 ;;
  }
  dimension: field_1 {
    type: date
    sql: ${TABLE}.field_1 ;;
  }

}
