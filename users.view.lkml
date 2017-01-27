view: users {
  sql_table_name: mypizza.users ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.address2 ;;
  }

  dimension_group: birthday {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.birthday ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension: cross_street {
    type: string
    sql: ${TABLE}.cross_street ;;
  }

  dimension: crypted_password {
    type: string
    sql: ${TABLE}.crypted_password ;;
  }

  dimension_group: current_login {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.current_login_at ;;
  }

  dimension: current_login_ip {
    type: string
    sql: ${TABLE}.current_login_ip ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: facebook_uid {
    type: number
    value_format_name: id
    sql: ${TABLE}.facebook_uid ;;
  }

  dimension: failed_login_count {
    type: number
    sql: ${TABLE}.failed_login_count ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension_group: last_login {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_login_at ;;
  }

  dimension: last_login_ip {
    type: string
    sql: ${TABLE}.last_login_ip ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension_group: last_request {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_request_at ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.login ;;
  }

  dimension: login_count {
    type: number
    sql: ${TABLE}.login_count ;;
  }

  dimension_group: password_reset_sent {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.password_reset_sent_at ;;
  }

  dimension: password_reset_token {
    type: string
    sql: ${TABLE}.password_reset_token ;;
  }

  dimension: password_salt {
    type: string
    sql: ${TABLE}.password_salt ;;
  }

  dimension: perishable_token {
    type: string
    sql: ${TABLE}.perishable_token ;;
  }

  dimension: persistence_token {
    type: string
    sql: ${TABLE}.persistence_token ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: single_access_token {
    type: string
    sql: ${TABLE}.single_access_token ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: stripe_customer_id {
    type: number
    sql: ${TABLE}.stripe_customer_id ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      last_name,
      addresses.count,
      favoritables.count,
      favorite.count,
      payment_methods.count,
      ratings.count,
      session_visits.count
    ]
  }
}
