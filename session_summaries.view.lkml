view: session_summaries {
  sql_table_name: mypizza.session_summaries ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: entrypage {
    type: string
    sql: ${TABLE}.entrypage ;;
  }

  dimension: exitpage {
    type: string
    sql: ${TABLE}.exitpage ;;
  }

  dimension_group: firsttime {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.firsttime ;;
  }

  dimension: human {
    type: number
    sql: ${TABLE}.human ;;
  }

  dimension_group: lasttime {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.lasttime ;;
  }

  dimension: logged_in {
    type: number
    sql: ${TABLE}.logged_in ;;
  }

  dimension: menusviewed {
    type: number
    sql: ${TABLE}.menusviewed ;;
  }

  dimension: mobile {
    type: number
    sql: ${TABLE}.mobile ;;
  }

  dimension: pagecount {
    type: number
    sql: ${TABLE}.pagecount ;;
  }

  dimension: productsviewed {
    type: number
    sql: ${TABLE}.productsviewed ;;
  }

  dimension: purchased {
    type: number
    sql: ${TABLE}.purchased ;;
  }

  dimension: referer {
    type: string
    sql: ${TABLE}.referer ;;
  }

  dimension: refererdomain {
    type: string
    sql: ${TABLE}.refererdomain ;;
  }

  dimension: remote_ip {
    type: string
    sql: ${TABLE}.remote_ip ;;
  }

  dimension: returning {
    type: number
    sql: ${TABLE}.returning ;;
  }

  dimension: secondstime {
    type: number
    sql: ${TABLE}.secondstime ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: split_test_bucket {
    type: string
    sql: ${TABLE}.split_test_bucket ;;
  }

  dimension: urllist {
    type: string
    sql: ${TABLE}.urllist ;;
  }

  dimension: useragent {
    type: string
    sql: ${TABLE}.useragent ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
