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
  dimension_group: ua_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.calendar_date ;;
  }
  dimension: ua_sourcemedium {
    type: string
    sql: ${TABLE}.ua_sourcemedium ;;
  }
  dimension: ua_sessions {
    type: number
    sql: ${TABLE}.ua_sessions ;;
  }
  dimension: ua_transactions {
    type: number
    sql: ${TABLE}.ua_transactions ;;
  }
  dimension: ua_revenue {
    type: number
    sql: ${TABLE}.ua_revenue ;;
  }
  dimension: field_6 {
    type: number
    sql: ${TABLE}.field_6 ;;
  }

}
