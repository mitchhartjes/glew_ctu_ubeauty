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
}
