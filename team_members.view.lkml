view: team_members {
  sql_table_name: mypizza.team_members ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: favorite_pizza {
    type: string
    sql: ${TABLE}.favorite_pizza ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: member_picture_content_type {
    type: string
    sql: ${TABLE}.member_picture_content_type ;;
  }

  dimension: member_picture_file_name {
    type: string
    sql: ${TABLE}.member_picture_file_name ;;
  }

  dimension: member_picture_file_size {
    type: number
    sql: ${TABLE}.member_picture_file_size ;;
  }

  dimension_group: member_picture_updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.member_picture_updated_at ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }

  dimension: sort_team {
    type: number
    sql: ${TABLE}.sort_team ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, last_name, member_picture_file_name]
  }
}
