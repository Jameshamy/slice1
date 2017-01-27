view: promo_codes {
  sql_table_name: mypizza.promo_codes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: number
    sql: ${TABLE}.active ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: date_end {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date_end ;;
  }

  dimension_group: date_start {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date_start ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: first_time_only {
    type: number
    sql: ${TABLE}.first_time_only ;;
  }

  dimension: min_order {
    type: number
    sql: ${TABLE}.min_order ;;
  }

  dimension: promo_flat_amount {
    type: number
    sql: ${TABLE}.promo_flat_amount ;;
  }

  dimension: shop_id {
    type: number
    sql: ${TABLE}.shop_id ;;
  }

  dimension: single_use {
    type: number
    sql: ${TABLE}.single_use ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, lhmn_orders.count, orders.count]
  }
}
