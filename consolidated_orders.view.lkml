view: consolidated_orders {
  sql_table_name: mypizza.consolidated_orders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: app_order_flag {
    type: number
    sql: ${TABLE}.app_order_flag ;;
  }

  dimension: cc_fees {
    type: number
    sql: ${TABLE}.cc_fees ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: channel_new_customer {
    type: number
    sql: ${TABLE}.channel_new_customer ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: mypizza_fee {
    type: number
    sql: ${TABLE}.mypizza_fee ;;
  }

  dimension: new_customer {
    type: number
    sql: ${TABLE}.new_customer ;;
  }

  dimension: order_amount {
    type: number
    sql: ${TABLE}.order_amount ;;
  }

  dimension_group: order {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.order_date ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension: payment_status {
    type: string
    sql: ${TABLE}.payment_status ;;
  }

  dimension: shipping_type {
    type: string
    sql: ${TABLE}.shipping_type ;;
  }

  dimension: shop_id {
    type: number
    sql: ${TABLE}.shop_id ;;
  }

  dimension: total_fees {
    type: number
    sql: ${TABLE}.total_fees ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
