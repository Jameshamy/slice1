view: blocked_ip_addresses {
  sql_table_name: mypizza.blocked_ip_addresses ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
