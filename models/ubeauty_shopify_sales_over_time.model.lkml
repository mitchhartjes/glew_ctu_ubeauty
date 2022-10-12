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
  group_label: "Shopify"
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
}
