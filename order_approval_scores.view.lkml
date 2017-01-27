view: order_approval_scores {
  sql_table_name: mypizza.order_approval_scores ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: approval_score {
    type: number
    sql: ${TABLE}.approval_score ;;
  }

  dimension: approval_score_type {
    type: string
    sql: ${TABLE}.approval_score_type ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
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
