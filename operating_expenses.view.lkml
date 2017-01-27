view: operating_expenses {
  sql_table_name: mypizza.operating_expenses ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
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

  dimension: expense_type {
    type: string
    sql: ${TABLE}.expense_type ;;
  }

  dimension_group: from {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.from_date ;;
  }

  dimension_group: to {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.to_date ;;
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
