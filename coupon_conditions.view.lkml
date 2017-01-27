view: coupon_conditions {
  sql_table_name: mypizza.coupon_conditions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: condition_type {
    type: string
    sql: ${TABLE}.condition_type ;;
  }

  dimension: coupon_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.coupon_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension: customer_text {
    type: string
    sql: ${TABLE}.customer_text ;;
  }

  dimension: include_matched_in_bundle {
    type: number
    sql: ${TABLE}.include_matched_in_bundle ;;
  }

  dimension: parameters {
    type: string
    sql: ${TABLE}.parameters ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, coupons.id, coupons.name]
  }
}
