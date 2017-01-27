view: orders_products {
  sql_table_name: mypizza.orders_products ;;

  dimension: orders_products_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.orders_products_id ;;
  }

  dimension: coupon_amount {
    type: number
    sql: ${TABLE}.coupon_amount ;;
  }

  dimension: delivery_fee {
    type: number
    sql: ${TABLE}.delivery_fee ;;
  }

  dimension: orders_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.orders_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_type_name {
    type: string
    sql: ${TABLE}.product_type_name ;;
  }

  dimension: product_type_price {
    type: number
    sql: ${TABLE}.product_type_price ;;
  }

  dimension: products_final_price {
    type: number
    sql: ${TABLE}.products_final_price ;;
  }

  dimension: products_id {
    type: number
    sql: ${TABLE}.products_id ;;
  }

  dimension: products_instruction {
    type: string
    sql: ${TABLE}.products_instruction ;;
  }

  dimension: products_price {
    type: number
    sql: ${TABLE}.products_price ;;
  }

  dimension: products_quantity {
    type: number
    sql: ${TABLE}.products_quantity ;;
  }

  dimension: products_shop_id {
    type: number
    sql: ${TABLE}.products_shop_id ;;
  }

  dimension: products_tax {
    type: number
    sql: ${TABLE}.products_tax ;;
  }

  dimension: products_type_id {
    type: number
    sql: ${TABLE}.products_type_id ;;
  }

  dimension: tip_amount {
    type: number
    sql: ${TABLE}.tip_amount ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      orders_products_id,
      product_name,
      product_type_name,
      orders.orders_id,
      orders.delivery_name,
      orders.remote_hostname,
      orders.delivery_first_name,
      orders.delivery_last_name,
      orders_products_attributes.count
    ]
  }
}
