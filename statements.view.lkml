view: statements {
  sql_table_name: mypizza.statements ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: adjustment_amount {
    type: number
    sql: ${TABLE}.adjustment_amount ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: chargeback_amount {
    type: number
    sql: ${TABLE}.chargeback_amount ;;
  }

  dimension: courtesy_credits {
    type: number
    sql: ${TABLE}.courtesy_credits ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension: delivered_status {
    type: string
    sql: ${TABLE}.delivered_status ;;
  }

  dimension: emailed_to {
    type: string
    sql: ${TABLE}.emailed_to ;;
  }

  dimension: estimated_phone_sales {
    type: number
    sql: ${TABLE}.estimated_phone_sales ;;
  }

  dimension: fax_remote_id {
    type: string
    sql: ${TABLE}.fax_remote_id ;;
  }

  dimension_group: from {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.from_date ;;
  }

  dimension: mypizza_fees {
    type: number
    sql: ${TABLE}.mypizza_fees ;;
  }

  dimension: mypizza_phone_fees {
    type: number
    sql: ${TABLE}.mypizza_phone_fees ;;
  }

  dimension: mypizza_processing_fees {
    type: number
    sql: ${TABLE}.mypizza_processing_fees ;;
  }

  dimension: paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.paid ;;
  }

  dimension: past_due {
    type: number
    sql: ${TABLE}.past_due ;;
  }

  dimension: payout_amount {
    type: number
    sql: ${TABLE}.payout_amount ;;
  }

  dimension: promo_codes_amount {
    type: number
    sql: ${TABLE}.promo_codes_amount ;;
  }

  dimension: shop_id {
    type: number
    sql: ${TABLE}.shop_id ;;
  }

  dimension: statement_file_name {
    type: string
    sql: ${TABLE}.statement_file_name ;;
  }

  dimension_group: to {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.to_date ;;
  }

  dimension: total_cash {
    type: number
    sql: ${TABLE}.total_cash ;;
  }

  dimension: total_cash_sales {
    type: number
    sql: ${TABLE}.total_cash_sales ;;
  }

  dimension: total_credit {
    type: number
    sql: ${TABLE}.total_credit ;;
  }

  dimension: total_credit_sales {
    type: number
    sql: ${TABLE}.total_credit_sales ;;
  }

  dimension: total_phone {
    type: number
    sql: ${TABLE}.total_phone ;;
  }

  dimension: total_sales {
    type: number
    sql: ${TABLE}.total_sales ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, statement_file_name, acts_as_account_postings.count, payouts.count]
  }
}
