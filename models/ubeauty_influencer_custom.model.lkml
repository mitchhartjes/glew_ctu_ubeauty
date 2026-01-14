connection: "silo_routing"
include: "/**/*.view.lkml"                 # include all views in this project
include: "//glew_looker_shopify/views/*.view.lkml"

explore: ub_custom_data {
  label: "UBeauty Influencer Custom Model"
  group_label: "UBeauty"

join: ubeautyus_ctu_shopmy {
  type: left_outer
  sql_on: ${ub_custom_data.custom_attribute_2} = ${ubeautyus_ctu_shopmy.name};;
  relationship: many_to_one
  }

join: shopify_order_number {
  type: left_outer
  sql_on: ${ub_custom_data.custom_attribute_1} = ${shopify_order_number.coupon_code} ;;
  relationship: many_to_one
  }

join: glew_shopify_sales_over_time {
  type: left_outer
  sql_on: ${shopify_order_number.order_id} = ${glew_shopify_sales_over_time.order_id}
    and ${shopify_order_number.glew_account_id} = ${glew_shopify_sales_over_time.glew_account_id};;
  relationship: many_to_one
  }

join: fact_shopify_orders {
  type: left_outer
  sql_on: ${shopify_order_number.order_id} = ${fact_shopify_orders.order_id}
    and ${shopify_order_number.glew_account_id} = ${fact_shopify_orders.glew_account_id};;
  relationship: many_to_one
  }

join: fact_shopify_fulfillments {
  type:  left_outer
  sql_on: ${shopify_order_number.order_id} = ${fact_shopify_fulfillments.order_id}
    and ${shopify_order_number.glew_account_id} = ${fact_shopify_fulfillments.glew_account_id};;
  relationship:  many_to_one
  }

join: ub_order_tags {
  type: left_outer
  sql_on: ${shopify_order_number.order_id} = ${ub_order_tags.order_id} ;;
  relationship: one_to_one
  }
}
