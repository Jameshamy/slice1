view: product_master {
  sql_table_name: mypizza.product_master ;;

  dimension: addons_order {
    type: string
    sql: ${TABLE}.addons_order ;;
  }

  dimension: categorization_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.categorization_id ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension_group: disabled {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.disabled_at ;;
  }

  dimension: enabled {
    type: number
    sql: ${TABLE}.enabled ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: order_items_count {
    type: number
    sql: ${TABLE}.order_items_count ;;
  }

  dimension: pdq_id {
    type: string
    sql: ${TABLE}.pdq_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_type_order {
    type: string
    sql: ${TABLE}.product_type_order ;;
  }

  dimension: shop_id {
    type: number
    sql: ${TABLE}.shop_id ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [name, categorizations.id]
  }
}
