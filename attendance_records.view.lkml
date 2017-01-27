view: attendance_records {
  sql_table_name: mypizza.attendance_records ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: admin_id {
    type: number
    sql: ${TABLE}.admin_id ;;
  }

  dimension_group: clock_in {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.clock_in ;;
  }

  dimension_group: clock_out {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.clock_out ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension: seconds {
    type: number
    sql: ${TABLE}.seconds ;;
  }

  dimension: tasks_completed {
    type: number
    sql: ${TABLE}.tasks_completed ;;
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
