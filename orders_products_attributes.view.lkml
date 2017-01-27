view: orders_products_attributes {
  sql_table_name: mypizza.orders_products_attributes ;;

  dimension: orders_products_attributes_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.orders_products_attributes_id ;;
  }

  dimension: options_att_price {
    type: number
    sql: ${TABLE}.options_att_price ;;
  }

  dimension: orders_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.orders_id ;;
  }

  dimension: orders_products_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.orders_products_id ;;
  }

  dimension: products_addon {
    type: string
    sql: ${TABLE}.products_addon ;;
  }

  dimension: products_addon_id {
    type: number
    sql: ${TABLE}.products_addon_id ;;
  }

  dimension: products_att_id {
    type: number
    sql: ${TABLE}.products_att_id ;;
  }

  dimension: products_att_values {
    type: string
    sql: ${TABLE}.products_att_values ;;
  }

  dimension: products_type_id {
    type: number
    sql: ${TABLE}.products_type_id ;;
  }

  dimension: selection_price {
    type: number
    sql: ${TABLE}.selection_price ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      orders_products_attributes_id,
      orders.orders_id,
      orders.delivery_name,
      orders.remote_hostname,
      orders.delivery_first_name,
      orders.delivery_last_name,
      orders_products.product_name,
      orders_products.product_type_name,
      orders_products.orders_products_id
    ]
  }
}
