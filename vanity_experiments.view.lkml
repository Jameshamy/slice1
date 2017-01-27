view: vanity_experiments {
  sql_table_name: mypizza.vanity_experiments ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: completed {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.completed_at ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension: experiment_id {
    type: string
    sql: ${TABLE}.experiment_id ;;
  }

  dimension: outcome {
    type: number
    sql: ${TABLE}.outcome ;;
  }

  measure: count {
    type: count
    drill_fields: [id, vanity_conversions.count]
  }
}
