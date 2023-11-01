view: ub_amazon_sales {
  sql_table_name: custom.ubeautyus_amazon_sales_and_traffic ;;

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
    sql: ${TABLE}.date ;;
  }

  dimension: ordered_product_sales {
    type: number
    sql: ${TABLE}.ordered_product_sales ;;
  }
  dimension: ordered_product_sales_b2b {
    type: number
    sql: ${TABLE}.ordered_product_sales ;;
  }

  dimension: units_ordered {
    type: number
    sql: ${TABLE}.units_ordered ;;
  }
  dimension: units_ordered_b2b {
    type: number
    sql: ${TABLE}.units_ordered_b2b ;;
  }

  dimension: total_order_items {
    type: number
    sql: ${TABLE}.total_order_items ;;
  }
  dimension: total_order_items_b2b {
    type: number
    sql: ${TABLE}.total_order_items_b2b ;;
  }

  dimension: average_sales_per_order_item {
    type: number
    sql: ${TABLE}.average_sales_per_order_item ;;
  }
  dimension: average_sales_per_order_item_b2b {
    type: number
    sql: ${TABLE}.average_sales_per_order_item_b2b ;;
  }
  dimension: average_units_per_order_item {
    type: number
    sql: ${TABLE}.average_units_per_order_item ;;
  }
  dimension: average_units_per_order_item_b2b {
    type: number
    sql: ${TABLE}.average_units_per_order_item_b2b ;;
  }

  dimension: average_selling_price {
    type: number
    sql: ${TABLE}.average_selling_price ;;
  }
  dimension: average_selling_price_b2b {
    type: number
    sql: ${TABLE}.average_selling_price_b2b ;;
  }

  dimension: sessions_total {
    type: number
    sql: ${TABLE}.sessions_total ;;
  }

  dimension: sessions_total_b2b {
    type: number
    sql: ${TABLE}.sessions_total_b2b ;;
  }
  dimension: order_item_session_percentage {
    type: number
    sql: ${TABLE}.order_item_session_percentage ;;
  }

  dimension: order_item_session_percentage_b2b {
    type: number
    sql: ${TABLE}.order_item_session_percentage_b2b ;;
  }
  dimension: average_offer_count {
    type: number
    sql: ${TABLE}.average_offer_count ;;
  }
}
