view: lhmn_orders {
  sql_table_name: mypizza.lhmn_orders ;;

  dimension: adjustment {
    type: number
    sql: ${TABLE}.adjustment ;;
  }

  dimension: admin_id {
    type: number
    sql: ${TABLE}.admin_id ;;
  }

  dimension: approval_score {
    type: number
    sql: ${TABLE}.approval_score ;;
  }

  dimension: approval_status {
    type: string
    sql: ${TABLE}.approval_status ;;
  }

  dimension: banished_from {
    type: number
    sql: ${TABLE}.banished_from ;;
  }

  dimension: billing_address {
    type: string
    sql: ${TABLE}.billing_address ;;
  }

  dimension: billing_zip {
    type: string
    sql: ${TABLE}.billing_zip ;;
  }

  dimension: cached_total {
    type: number
    sql: ${TABLE}.cached_total ;;
  }

  dimension: cc_number {
    type: string
    sql: ${TABLE}.cc_number ;;
  }

  dimension: confirmation_attempt_count {
    type: number
    sql: ${TABLE}.confirmation_attempt_count ;;
  }

  dimension: confirmation_attempts {
    type: string
    sql: ${TABLE}.confirmation_attempts ;;
  }

  dimension_group: confirmed {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.confirmed_at ;;
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

  dimension_group: customer_emailed {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.customer_emailed_at ;;
  }

  dimension_group: customer_first_order {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.customer_first_order_at ;;
  }

  dimension: customer_order_count {
    type: number
    sql: ${TABLE}.customer_order_count ;;
  }

  dimension: customers_id {
    type: number
    sql: ${TABLE}.customers_id ;;
  }

  dimension_group: date_purchased {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date_purchased ;;
  }

  dimension_group: deliver {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deliver_at ;;
  }

  dimension: delivery_address {
    type: string
    sql: ${TABLE}.delivery_address ;;
  }

  dimension: delivery_city {
    type: string
    sql: ${TABLE}.delivery_city ;;
  }

  dimension: delivery_country {
    type: string
    sql: ${TABLE}.delivery_country ;;
  }

  dimension: delivery_first_name {
    type: string
    sql: ${TABLE}.delivery_first_name ;;
  }

  dimension: delivery_floor {
    type: string
    sql: ${TABLE}.delivery_floor ;;
  }

  dimension: delivery_instruction {
    type: string
    sql: ${TABLE}.delivery_instruction ;;
  }

  dimension: delivery_last_name {
    type: string
    sql: ${TABLE}.delivery_last_name ;;
  }

  dimension: delivery_location_type {
    type: string
    sql: ${TABLE}.delivery_location_type ;;
  }

  dimension: delivery_name {
    type: string
    sql: ${TABLE}.delivery_name ;;
  }

  dimension: delivery_postcode {
    type: string
    sql: ${TABLE}.delivery_postcode ;;
  }

  dimension: delivery_state {
    type: string
    sql: ${TABLE}.delivery_state ;;
  }

  dimension: delivery_telephone {
    type: string
    sql: ${TABLE}.delivery_telephone ;;
  }

  dimension: discount_percent {
    type: number
    sql: ${TABLE}.discount_percent ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_status {
    type: string
    sql: ${TABLE}.email_status ;;
  }

  dimension: eta {
    type: string
    sql: ${TABLE}.eta ;;
  }

  dimension: fax_status {
    type: string
    sql: ${TABLE}.fax_status ;;
  }

  dimension: flagged {
    type: number
    sql: ${TABLE}.flagged ;;
  }

  dimension: force_total {
    type: number
    sql: ${TABLE}.force_total ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_modified ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: mypizza_fees {
    type: number
    sql: ${TABLE}.mypizza_fees ;;
  }

  dimension: orders_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.orders_id ;;
  }

  dimension: orders_status {
    type: number
    sql: ${TABLE}.orders_status ;;
  }

  dimension: payment_id {
    type: number
    sql: ${TABLE}.payment_id ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension: payment_status {
    type: string
    sql: ${TABLE}.payment_status ;;
  }

  dimension: placed_via {
    type: string
    sql: ${TABLE}.placed_via ;;
  }

  dimension: promo_code_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.promo_code_id ;;
  }

  dimension: promo_opt_in {
    type: number
    sql: ${TABLE}.promo_opt_in ;;
  }

  dimension: remote_hostname {
    type: string
    sql: ${TABLE}.remote_hostname ;;
  }

  dimension: remote_ip {
    type: string
    sql: ${TABLE}.remote_ip ;;
  }

  dimension_group: reviewed {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.reviewed_at ;;
  }

  dimension: saved_tax {
    type: number
    sql: ${TABLE}.saved_tax ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: shipping_type {
    type: string
    sql: ${TABLE}.shipping_type ;;
  }

  dimension: shop_id {
    type: number
    sql: ${TABLE}.shop_id ;;
  }

  dimension_group: shop_sent_order {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.shop_sent_order_at ;;
  }

  dimension: suspicious {
    type: number
    sql: ${TABLE}.suspicious ;;
  }

  dimension: tip_amount {
    type: number
    sql: ${TABLE}.tip_amount ;;
  }

  dimension: transmitted_by {
    type: string
    sql: ${TABLE}.transmitted_by ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: void_order {
    type: string
    sql: ${TABLE}.void_order ;;
  }

  dimension_group: voided {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.voided_at ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      delivery_name,
      remote_hostname,
      delivery_first_name,
      delivery_last_name,
      orders.orders_id,
      orders.delivery_name,
      orders.remote_hostname,
      orders.delivery_first_name,
      orders.delivery_last_name,
      promo_codes.id
    ]
  }
}
