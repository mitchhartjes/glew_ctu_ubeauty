view: ubeauty_ordergroove_pdt {
  view_label: "UBeauty OrderGroove"
  derived_table: {
    sql: SELECT
        TO_CHAR(s.first_subscription_date, 'YYYY-MM-DD') AS subscription_date,
        COUNT(DISTINCT customer_id) AS new_subscribers
      FROM (
        SELECT
          c.customer_id,
          FIRST_VALUE(s.start_date) OVER(PARTITION BY c.customer_id, s.glew_account_id ORDER BY s.start_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS first_subscription_date
        FROM dim_ordergroove_customers AS c
        JOIN fact_ordergroove_subscriptions AS s ON (c.customer_id = s.customer_id AND c.glew_account_id = s.glew_account_id)
        --where
          --c.glew_account_id = 19284
      ) AS s
      GROUP BY
        TO_CHAR(s.first_subscription_date, 'YYYY-MM-DD')
      ORDER BY 1
      ;;
  }
  dimension: new_subscribers {
    type: number
    sql: ${TABLE}.new_subscribers ;;
  }
  dimension: subscription_date {
    type: date
    sql: ${TABLE}.subscription_date ;;
  }
}
