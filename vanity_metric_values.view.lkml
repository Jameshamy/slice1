view: vanity_metric_values {
  sql_table_name: mypizza.vanity_metric_values ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  dimension: vanity_metric_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.vanity_metric_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, vanity_metrics.id]
  }
}
