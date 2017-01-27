view: favorite {
  sql_table_name: mypizza.favorite ;;

  dimension: favorite_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.favorite_id ;;
  }

  dimension: shop_id {
    type: number
    sql: ${TABLE}.shop_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [favorite_id, users.id, users.first_name, users.last_name]
  }
}
