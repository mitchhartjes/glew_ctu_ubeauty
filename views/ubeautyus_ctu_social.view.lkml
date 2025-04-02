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

  dimension: ltk_revenue {
    type: number
    sql: ${TABLE}.ltk_revenue ;;
  }

  dimension: ltk_comission {
    type: number
    sql: ${TABLE}.ltk_comission ;;
  }

  dimension: ltk_conversion {
    type: number
    sql: ${TABLE}.ltk_conversion ;;
  }

  dimension_group: ua_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.calendar_date ;;
  }
  dimension: sourcemedium {
    type: string
    sql: ${TABLE}.sourcemedium ;;
  }
  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }
  dimension: product_checkouts {
    type: number
    sql: ${TABLE}.product_checkouts ;;
  }
  dimension: event_value {
    type: number
    sql: ${TABLE}.event_value ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }
  dimension: traffic_type {
    type: string
    sql: ${TABLE}.traffic_type ;;
  }
  dimension: avg_session_duration {
    type: string
    sql: ${TABLE}.avg_session_duration ;;
  }
  dimension: users {
    type: number
    sql: ${TABLE}.users ;;
  }
  dimension: sessions_with_search {
    type: number
    sql: ${TABLE}.sessions_with_search ;;
  }
  dimension: ecommerce_conversion_rate {
    type: number
    sql: ${TABLE}.ecommerce_conversion_rate ;;
  }
  dimension: product_adds_to_cart {
    type: number
    sql: ${TABLE}.product_adds_to_cart ;;
  }
  dimension: product_detail_views {
    type: number
    sql: ${TABLE}.product_detail_views ;;
  }
  dimension: pages_session {
    type: number
    sql: ${TABLE}.pages__session ;;
  }
}
