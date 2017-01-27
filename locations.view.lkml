view: locations {
  sql_table_name: mypizza.locations ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: caller_trace {
    type: string
    sql: ${TABLE}.caller_trace ;;
  }

  dimension: geoloc_hash {
    type: string
    sql: ${TABLE}.geoloc_hash ;;
  }

  dimension: use_count {
    type: number
    sql: ${TABLE}.use_count ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
