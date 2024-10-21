view: ub_order_tags {
  view_label: "Aggregated Order Tags"
  derived_table: {
    sql: SELECT
  order_id,
  LISTAGG(order_tag, ', ') as tags
FROM
  public.dim_shopify_order_tag_map
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
}
