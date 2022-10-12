view: glew_shopify_sales_over_time {
  sql_table_name: public.mv_shopify_sales ;;
  view_label: "Shopify Sales Over Time"

  dimension: primary_key {
    type: string
    sql: CONCAT(${glew_account_id},${order_id}) ;;
    primary_key: yes
    hidden: yes
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }
  dimension: line_item_id {
    type: number
    sql: ${TABLE}.line_item_id ;;
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }
  dimension: base_product_id {
    type: number
    sql: ${TABLE}.base_product_id ;;
  }

  dimension: glew_account_id {
    type: number
    sql: ${TABLE}.glew_account_id ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: gross_sales {
    type: number
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.gross_sales ;;
  }

  dimension: discounts {
    type: number
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.discounts ;;
  }

  dimension: returns {
    type: number
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.returns ;;
  }

  dimension: gift_card_revenue {
    type: number
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.gift_card_revenue ;;
  }

  dimension: net_sales {
    type: number
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.net_sales ;;
  }

  dimension: total_cost {
    type: number
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.total_cost ;;
  }

  dimension: gross_profit {
    type: number
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.gross_profit ;;
  }

  dimension: taxes {
    type: number
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.taxes ;;
  }

  dimension: shipping {
    type: number
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.shipping ;;
  }

  dimension: total_sales {
    type: number
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.total_sales ;;
  }

  dimension: orders {
    type: number
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.orders ;;
  }

  dimension: ordered_item_quantity {
    type: number
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.ordered_item_quantity ;;
  }

  dimension: returned_item_quantity {
    type: number
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.returned_item_quantity ;;
  }

  dimension: net_quantity {
    type: number
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.net_quantity ;;
  }
  measure: sum_of_gross_sales {
    type: sum
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.gross_sales ;;
  }

  measure: sum_of_discounts {
    type: sum
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.discounts ;;
  }

  measure: sum_of_returns {
    type: sum
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.returns ;;
  }

  measure: sum_of_gift_card_revenue {
    type: sum
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.gift_card_revenue ;;
  }

  measure: sum_of_net_sales {
    type: sum
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.net_sales ;;
  }

  measure: sum_of_total_cost {
    type: sum
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.total_cost ;;
  }

  measure: sum_of_gross_profit {
    type: sum
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.gross_profit ;;
  }

  measure: sum_of_taxes {
    type: sum
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.taxes ;;
  }

  measure: sum_of_shipping {
    type: sum
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.shipping ;;
  }

  measure: sum_of_total_sales {
    type: sum
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.total_sales ;;
  }

  measure: sum_of_orders {
    type: sum
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.orders ;;
  }

  measure: sum_of_ordered_item_quantity {
    type: sum
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.ordered_item_quantity ;;
  }

  measure: sum_of_returned_item_quantity {
    type: sum
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.returned_item_quantity ;;
  }

  measure: sum_of_net_quantity {
    type: sum
    group_label: "Glew Custom Measure"
    sql: ${TABLE}.net_quantity ;;
  }
}
