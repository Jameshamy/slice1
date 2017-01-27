view: delayed_jobs {
  sql_table_name: mypizza.delayed_jobs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: attempts {
    type: number
    sql: ${TABLE}.attempts ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: failed {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.failed_at ;;
  }

  dimension: handler {
    type: string
    sql: ${TABLE}.handler ;;
  }

  dimension: last_error {
    type: string
    sql: ${TABLE}.last_error ;;
  }

  dimension_group: locked {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.locked_at ;;
  }

  dimension: locked_by {
    type: string
    sql: ${TABLE}.locked_by ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: queue {
    type: string
    sql: ${TABLE}.queue ;;
  }

  dimension_group: run {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.run_at ;;
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
