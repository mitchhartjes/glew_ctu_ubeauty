connection: "silo_routing"
include: "/**/*.view.lkml"                 # include all views in this project
include: "//glew_looker_glew/views/*.view.lkml"
include: "//glew_looker_shopify/views/*.view.lkml"


explore:  glew_shopify_sales_over_time {
  access_filter: {
    field: glew_account_id
    user_attribute: glew_account_id
  }
  label: "Sales Over Time - UBeauty"
  group_label: "UBeauty"
  description: "View/Report on your Shopify transaction data on the order and order product level with this explore"

  join: dim_glew_accounts {
    relationship: many_to_one
    sql_on: ${glew_shopify_sales_over_time.glew_account_id} = ${dim_glew_accounts.glew_account_id} ;;
    type: left_outer
  }
  join: fact_shopify_orders {
    relationship: many_to_one
    sql_on: ${fact_shopify_orders.glew_account_id} = ${glew_shopify_sales_over_time.glew_account_id}
      and ${fact_shopify_orders.order_id} = ${glew_shopify_sales_over_time.order_id}  ;;
    type: left_outer
  }
  join: fact_shopify_products {
    relationship: many_to_one
    sql_on: ${fact_shopify_products.glew_account_id} = ${glew_shopify_sales_over_time.glew_account_id}
      and ${fact_shopify_products.product_id} = ${glew_shopify_sales_over_time.product_id}  ;;
    type: left_outer
  }
  join: dim_shopify_base_products {
    relationship: many_to_one
    sql_on: ${dim_shopify_base_products.glew_account_id} = ${glew_shopify_sales_over_time.glew_account_id}
      and ${dim_shopify_base_products.base_product_id} = ${glew_shopify_sales_over_time.base_product_id}  ;;
    type: left_outer
  }
  join: dim_shopify_order_tag_map {
    relationship: one_to_many
    sql_on: ${dim_shopify_order_tag_map.glew_account_id} = ${fact_shopify_orders.glew_account_id}
      and ${dim_shopify_order_tag_map.order_id} = ${fact_shopify_orders.order_id};;
    type:  left_outer
  }
  join: shopify_order_number {
    relationship: one_to_one
    sql_on: ${fact_shopify_orders.glew_account_id} = ${shopify_order_number.glew_account_id}
      and ${fact_shopify_orders.order_id} = ${shopify_order_number.order_id}
      and ${fact_shopify_orders.customer_id} = ${shopify_order_number.customer_id};;
    type:  left_outer
  }
  join: fact_exchange_rates {
    relationship: one_to_one
    sql_on: ${fact_exchange_rates.base} = ${dim_glew_accounts.currency}
      and ${fact_exchange_rates.timestamp_date} = ${fact_shopify_orders.order_date};;
  }
}
