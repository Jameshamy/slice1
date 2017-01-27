view: vanity_participants {
  sql_table_name: mypizza.vanity_participants ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: converted {
    type: number
    sql: ${TABLE}.converted ;;
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

  dimension: identity {
    type: string
    sql: ${TABLE}.identity ;;
  }

  dimension: seen {
    type: number
    sql: ${TABLE}.seen ;;
  }

  dimension: shown {
    type: number
    sql: ${TABLE}.shown ;;
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
