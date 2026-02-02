view: ub_order_tags {
  view_label: "Aggregated Order Tags"
  derived_table: {
    sql: SELECT
  order_id,
  LISTAGG(order_tag, ', ') as tags,
  CASE
    WHEN MAX(CASE WHEN order_tag = 'tbyb_sample_product' THEN 1 ELSE 0 END) = 1 THEN 'Trial'
    WHEN MAX(CASE WHEN order_tag = 'tbyb_fullsize_product' THEN 1 ELSE 0 END) = 1 THEN 'Full Size'
    ELSE 'Regular'
  END AS tbyb
FROM
  dim_shopify_order_tag_map
WHERE
  glew_account_id = 19284
GROUP BY
  1
      ;;
  }
  dimension: order_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }
  dimension: TBYB_Orders {
    type: string
    sql: ${TABLE}.tbyb ;;
  }
}
