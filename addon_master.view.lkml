view: addon_master {
  sql_table_name: mypizza.addon_master ;;

  dimension: addon_id {
    type: number
    sql: ${TABLE}.addon_id ;;
  }

  dimension: addon_type {
    type: string
    sql: ${TABLE}.addon_type ;;
  }

  dimension: is_mandatory {
    type: number
    sql: ${TABLE}.is_mandatory ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: selection_limit {
    type: number
    sql: ${TABLE}.selection_limit ;;
  }

  dimension: selections_order {
    type: string
    sql: ${TABLE}.selections_order ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
