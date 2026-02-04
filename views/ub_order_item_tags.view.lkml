view: ub_order_item_tags {
  view_label: "Aggregated Order Item Tags"
  derived_table: {
    sql: SELECT
      li.order_id,
      li.line_item_id,
      CASE
          WHEN MAX(CASE WHEN order_tag = 'tbyb_sample_product' AND lip.name IN ('tbyb','_tbyb','_TBYB') THEN 1 ELSE 0 END) = 1 THEN 'Trial'
          WHEN MAX(CASE WHEN order_tag = 'tbyb_fullsize_product' AND lip.name IN ('tbyb','_tbyb','_TBYB') THEN 1 ELSE 0 END) = 1 THEN 'Full Size'
          ELSE 'Regular'
        END AS tbyb
    FROM dim_shopify_order_tag_map AS ot
    LEFT JOIN fact_shopify_order_items AS li ON (li.order_id = ot.order_id AND li.glew_account_id = ot.glew_account_id)
    LEFT JOIN fact_shopify_order_item_properties AS lip ON (li.line_item_id = lip.line_item_id AND li.glew_account_id = lip.glew_account_id)
    WHERE
      ot.glew_account_id = 19284
    GROUP BY 1,2 ;;
  }
  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }
  dimension: line_item_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.line_item_id ;;
  }
  dimension: TBYB {
    type: string
    sql: ${TABLE}.tbyb ;;
  }
}
