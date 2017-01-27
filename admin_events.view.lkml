view: admin_events {
  sql_table_name: mypizza.admin_events ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: admin_id {
    type: number
    sql: ${TABLE}.admin_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension: event_attribute {
    type: string
    sql: ${TABLE}.event_attribute ;;
  }

  dimension: event_loggable_id {
    type: number
    sql: ${TABLE}.event_loggable_id ;;
  }

  dimension: event_loggable_type {
    type: string
    sql: ${TABLE}.event_loggable_type ;;
  }

  dimension: old_value {
    type: string
    sql: ${TABLE}.old_value ;;
  }

  dimension: reason_id {
    type: number
    sql: ${TABLE}.reason_id ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
