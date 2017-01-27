view: acts_as_account_accounts {
  sql_table_name: mypizza.acts_as_account_accounts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: balance {
    type: number
    sql: ${TABLE}.balance ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension: holder_id {
    type: number
    sql: ${TABLE}.holder_id ;;
  }

  dimension: holder_type {
    type: string
    sql: ${TABLE}.holder_type ;;
  }

  dimension_group: last_valuta {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_valuta ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: postings_count {
    type: number
    sql: ${TABLE}.postings_count ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
