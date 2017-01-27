view: vanity_conversions {
  sql_table_name: mypizza.vanity_conversions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alternative {
    type: number
    sql: ${TABLE}.alternative ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: vanity_experiment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.vanity_experiment_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, vanity_experiments.id]
  }
}
