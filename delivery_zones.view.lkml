view: delivery_zones {
  sql_table_name: mypizza.delivery_zones ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension: delivery_fee {
    type: number
    sql: ${TABLE}.delivery_fee ;;
  }

  dimension: delivery_geometry {
    type: string
    sql: ${TABLE}.delivery_geometry ;;
  }

  dimension: delivery_percent {
    type: number
    sql: ${TABLE}.delivery_percent ;;
  }

  dimension: delivery_radius {
    type: number
    sql: ${TABLE}.delivery_radius ;;
  }

  dimension: delivery_zipcodes {
    type: string
    sql: ${TABLE}.delivery_zipcodes ;;
  }

  dimension: minimum_order {
    type: number
    sql: ${TABLE}.minimum_order ;;
  }

  dimension: shop_id {
    type: number
    sql: ${TABLE}.shop_id ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
