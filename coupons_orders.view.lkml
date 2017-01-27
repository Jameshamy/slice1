view: coupons_orders {
  sql_table_name: mypizza.coupons_orders ;;

  dimension: coupon_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.coupon_id ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      coupons.id,
      coupons.name,
      orders.orders_id,
      orders.delivery_name,
      orders.remote_hostname,
      orders.delivery_first_name,
      orders.delivery_last_name
    ]
  }
}
