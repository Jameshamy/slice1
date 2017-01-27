view: payment_methods {
  sql_table_name: mypizza.payment_methods ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: apple_pay {
    type: number
    sql: ${TABLE}.apple_pay ;;
  }

  dimension: billing_address2 {
    type: string
    sql: ${TABLE}.billing_address2 ;;
  }

  dimension: billing_city {
    type: string
    sql: ${TABLE}.billing_city ;;
  }

  dimension: billing_company {
    type: string
    sql: ${TABLE}.billing_company ;;
  }

  dimension: billing_first_name {
    type: string
    sql: ${TABLE}.billing_first_name ;;
  }

  dimension: billing_last_name {
    type: string
    sql: ${TABLE}.billing_last_name ;;
  }

  dimension: billing_state {
    type: string
    sql: ${TABLE}.billing_state ;;
  }

  dimension: billing_street_address {
    type: string
    sql: ${TABLE}.billing_street_address ;;
  }

  dimension: billing_zipcode {
    type: string
    sql: ${TABLE}.billing_zipcode ;;
  }

  dimension: braintree_customer_id {
    type: string
    sql: ${TABLE}.braintree_customer_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension: default {
    type: number
    sql: ${TABLE}."default" ;;
  }

  dimension: enabled {
    type: number
    sql: ${TABLE}.enabled ;;
  }

  dimension: expiration_date {
    type: string
    sql: ${TABLE}.expiration_date ;;
  }

  dimension: last_four {
    type: string
    sql: ${TABLE}.last_four ;;
  }

  dimension: payment_token {
    type: string
    sql: ${TABLE}.payment_token ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension: processor {
    type: string
    sql: ${TABLE}.processor ;;
  }

  dimension: remote_card_id {
    type: string
    sql: ${TABLE}.remote_card_id ;;
  }

  dimension: remote_customer_id {
    type: string
    sql: ${TABLE}.remote_customer_id ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      billing_first_name,
      billing_last_name,
      users.id,
      users.first_name,
      users.last_name
    ]
  }
}
