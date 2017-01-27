view: received_calls {
  sql_table_name: mypizza.received_calls ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: admin_id {
    type: number
    sql: ${TABLE}.admin_id ;;
  }

  dimension: answered {
    type: number
    sql: ${TABLE}.answered ;;
  }

  dimension: call_sid {
    type: string
    sql: ${TABLE}.call_sid ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension: fees {
    type: number
    sql: ${TABLE}.fees ;;
  }

  dimension: from {
    type: string
    sql: ${TABLE}."from" ;;
  }

  dimension: is_order {
    type: number
    sql: ${TABLE}.is_order ;;
  }

  dimension: raw_response {
    type: string
    sql: ${TABLE}.raw_response ;;
  }

  dimension: recording_url {
    type: string
    sql: ${TABLE}.recording_url ;;
  }

  dimension: redirect {
    type: string
    sql: ${TABLE}.redirect ;;
  }

  dimension: shop_id {
    type: number
    sql: ${TABLE}.shop_id ;;
  }

  dimension: to {
    type: string
    sql: ${TABLE}."to" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: voice_file_name {
    type: string
    sql: ${TABLE}.voice_file_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, voice_file_name]
  }
}
