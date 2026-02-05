view: ub_influencer_list {
  derived_table: {
    sql: SELECT *
          FROM custom.ubeautyus_custom_table
          WHERE
          vendor_name = 'Aly - Influencer List' ;;
  }

  dimension: primary_key {
    type: string
    sql: CONCAT(CONCAT(CAST(${calendar_date} as VARCHAR), CAST(${custom_attribute_1} as VARCHAR)), CAST(${custom_attribute_2} as VARCHAR)) ;;
    primary_key: yes
    hidden: yes
  }

  dimension_group: calendar {
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
    sql: ${TABLE}.calendar_date ;;
  }

  dimension: channel_name {
    type: string
    sql: ${TABLE}.channel_name ;;
  }

  dimension: custom_attribute_1 {
    type: string
    sql: ${TABLE}.custom_attribute_1 ;;
  }

  dimension: custom_attribute_2 {
    type: string
    sql: ${TABLE}.custom_attribute_2 ;;
  }

  dimension: custom_attribute_3 {
    type: number
    sql: ${TABLE}.custom_attribute_3 ;;
  }

  dimension: custom_attribute_4 {
    type: string
    sql: ${TABLE}.custom_attribute_4 ;;
  }

  dimension: custom_attribute_5 {
    type: string
    sql: ${TABLE}.custom_attribute_5 ;;
  }

  dimension: custom_attribute_6 {
    type: string
    sql: ${TABLE}.custom_attribute_6 ;;
  }

  dimension: custom_attribute_7 {
    type: string
    sql: ${TABLE}.custom_attribute_7 ;;
  }

  dimension: total_clicks {
    type: number
    sql: ${TABLE}.total_clicks ;;
  }

  dimension: total_conversions {
    type: number
    sql: ${TABLE}.total_conversions ;;
  }

  dimension: total_impressions {
    type: number
    sql: ${TABLE}.total_impressions ;;
  }

  dimension: total_revenue {
    type: number
    sql: ${TABLE}.total_revenue ;;
  }

  dimension: total_spend {
    type: number
    value_format: "0.00"
    sql: ${TABLE}.total_spend ;;
  }

  dimension: variable_or_fixed {
    type: string
    sql: ${TABLE}.variable_or_fixed ;;
  }

  dimension: vendor_name {
    type: string
    sql: ${TABLE}.vendor_name ;;
  }
}
