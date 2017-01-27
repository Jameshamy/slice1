view: faxes {
  sql_table_name: mypizza.faxes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: completed {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.completed_at ;;
  }

  dimension: content_url {
    type: string
    sql: ${TABLE}.content_url ;;
  }

  dimension: details {
    type: string
    sql: ${TABLE}.details ;;
  }

  dimension: fax_number {
    type: string
    sql: ${TABLE}.fax_number ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: page_count {
    type: number
    sql: ${TABLE}.page_count ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }

  dimension: remote_id {
    type: number
    sql: ${TABLE}.remote_id ;;
  }

  dimension: shop_id {
    type: number
    sql: ${TABLE}.shop_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_message {
    type: string
    sql: ${TABLE}.status_message ;;
  }

  dimension_group: submitted {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.submitted_at ;;
  }

  dimension: xmit_time {
    type: string
    sql: ${TABLE}.xmit_time ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      orders.orders_id,
      orders.delivery_name,
      orders.remote_hostname,
      orders.delivery_first_name,
      orders.delivery_last_name
    ]
  }
}
