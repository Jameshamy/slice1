view: acts_as_account_postings {
  sql_table_name: mypizza.acts_as_account_postings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: journal_id {
    type: number
    sql: ${TABLE}.journal_id ;;
  }

  dimension: other_account_id {
    type: number
    sql: ${TABLE}.other_account_id ;;
  }

  dimension: reference_id {
    type: number
    sql: ${TABLE}.reference_id ;;
  }

  dimension: reference_type {
    type: string
    sql: ${TABLE}.reference_type ;;
  }

  dimension: shop_id {
    type: number
    sql: ${TABLE}.shop_id ;;
  }

  dimension: statement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.statement_id ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  dimension_group: valuta {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.valuta ;;
  }

  measure: count {
    type: count
    drill_fields: [id, statements.id, statements.statement_file_name]
  }
}
