view: cities {
  sql_table_name: mypizza.cities ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension: featured {
    type: number
    sql: ${TABLE}.featured ;;
  }

  dimension: header_content_type {
    type: string
    sql: ${TABLE}.header_content_type ;;
  }

  dimension: header_file_name {
    type: string
    sql: ${TABLE}.header_file_name ;;
  }

  dimension: header_file_size {
    type: number
    sql: ${TABLE}.header_file_size ;;
  }

  dimension_group: header_updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.header_updated_at ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  dimension: tile_content_type {
    type: string
    sql: ${TABLE}.tile_content_type ;;
  }

  dimension: tile_file_name {
    type: string
    sql: ${TABLE}.tile_file_name ;;
  }

  dimension: tile_file_size {
    type: number
    sql: ${TABLE}.tile_file_size ;;
  }

  dimension_group: tile_updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.tile_updated_at ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, tile_file_name, header_file_name]
  }
}
