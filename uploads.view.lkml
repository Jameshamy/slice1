view: uploads {
  sql_table_name: mypizza.uploads ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: attachment_content_type {
    type: string
    sql: ${TABLE}.attachment_content_type ;;
  }

  dimension: attachment_file_name {
    type: string
    sql: ${TABLE}.attachment_file_name ;;
  }

  dimension: attachment_file_size {
    type: number
    sql: ${TABLE}.attachment_file_size ;;
  }

  dimension_group: attachment_updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.attachment_updated_at ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, attachment_file_name, tickets.id]
  }
}
