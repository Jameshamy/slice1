view: shop_master {
  sql_table_name: mypizza.shop_master ;;

  dimension: accepts_cards {
    type: number
    sql: ${TABLE}.accepts_cards ;;
  }

  dimension: accepts_cash {
    type: number
    sql: ${TABLE}.accepts_cash ;;
  }

  dimension: ad_locations {
    type: string
    sql: ${TABLE}.ad_locations ;;
  }

  dimension: ad_name {
    type: string
    sql: ${TABLE}.ad_name ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: admin_banner {
    type: string
    sql: ${TABLE}.admin_banner ;;
  }

  dimension: admin_group {
    type: string
    sql: ${TABLE}.admin_group ;;
  }

  dimension: admin_id {
    type: number
    sql: ${TABLE}.admin_id ;;
  }

  dimension: alt_domain_name {
    type: string
    sql: ${TABLE}.alt_domain_name ;;
  }

  dimension: balance_due {
    type: number
    sql: ${TABLE}.balance_due ;;
  }

  dimension: banner_text {
    type: string
    sql: ${TABLE}.banner_text ;;
  }

  dimension: categories_order {
    type: string
    sql: ${TABLE}.categories_order ;;
  }

  dimension: cc_order_emails {
    type: string
    sql: ${TABLE}.cc_order_emails ;;
  }

  dimension: chain_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.chain_id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: confirmation_phone {
    type: string
    sql: ${TABLE}.confirmation_phone ;;
  }

  dimension: contact_email {
    type: string
    sql: ${TABLE}.contact_email ;;
  }

  dimension: contact_name {
    type: string
    sql: ${TABLE}.contact_name ;;
  }

  dimension: contact_phone {
    type: string
    sql: ${TABLE}.contact_phone ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: current_sign_in {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.current_sign_in_at ;;
  }

  dimension: current_sign_in_ip {
    type: string
    sql: ${TABLE}.current_sign_in_ip ;;
  }

  dimension: default_fax_provider {
    type: string
    sql: ${TABLE}.default_fax_provider ;;
  }

  dimension: default_transmission_method {
    type: string
    sql: ${TABLE}.default_transmission_method ;;
  }

  dimension: delevery_desc {
    type: string
    sql: ${TABLE}.delevery_desc ;;
  }

  dimension: delivery_estimate {
    type: string
    sql: ${TABLE}.delivery_estimate ;;
  }

  dimension: delivery_fee {
    type: string
    sql: ${TABLE}.delivery_fee ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: disable_scheduled_orders {
    type: number
    sql: ${TABLE}.disable_scheduled_orders ;;
  }

  dimension_group: disabled {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.disabled_at ;;
  }

  dimension: discount_percent {
    type: number
    sql: ${TABLE}.discount_percent ;;
  }

  dimension: domain_name {
    type: string
    sql: ${TABLE}.domain_name ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: encrypted_password {
    type: string
    sql: ${TABLE}.encrypted_password ;;
  }

  dimension: favoritables_count {
    type: number
    sql: ${TABLE}.favoritables_count ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension: fee_amount_per_order {
    type: number
    sql: ${TABLE}.fee_amount_per_order ;;
  }

  dimension: fee_per_call {
    type: number
    sql: ${TABLE}.fee_per_call ;;
  }

  dimension: fee_per_month {
    type: number
    sql: ${TABLE}.fee_per_month ;;
  }

  dimension: fee_per_order {
    type: number
    sql: ${TABLE}.fee_per_order ;;
  }

  dimension: fee_percentage_per_cc_order {
    type: number
    sql: ${TABLE}.fee_percentage_per_cc_order ;;
  }

  dimension: fee_percentage_per_order {
    type: number
    sql: ${TABLE}.fee_percentage_per_order ;;
  }

  dimension: force_closed {
    type: number
    sql: ${TABLE}.force_closed ;;
  }

  dimension_group: force_closed {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.force_closed_at ;;
  }

  dimension: force_open {
    type: number
    sql: ${TABLE}.force_open ;;
  }

  dimension: google_owner {
    type: string
    sql: ${TABLE}.google_owner ;;
  }

  dimension: google_password {
    type: string
    sql: ${TABLE}.google_password ;;
  }

  dimension: google_status {
    type: string
    sql: ${TABLE}.google_status ;;
  }

  dimension: holidays {
    type: string
    sql: ${TABLE}.holidays ;;
  }

  dimension: landing_page_desktop_content_type {
    type: string
    sql: ${TABLE}.landing_page_desktop_content_type ;;
  }

  dimension: landing_page_desktop_file_name {
    type: string
    sql: ${TABLE}.landing_page_desktop_file_name ;;
  }

  dimension: landing_page_desktop_file_size {
    type: number
    sql: ${TABLE}.landing_page_desktop_file_size ;;
  }

  dimension_group: landing_page_desktop_updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.landing_page_desktop_updated_at ;;
  }

  dimension: landing_page_image_file_name {
    type: string
    sql: ${TABLE}.landing_page_image_file_name ;;
  }

  dimension: landing_page_mobile_content_type {
    type: string
    sql: ${TABLE}.landing_page_mobile_content_type ;;
  }

  dimension: landing_page_mobile_file_name {
    type: string
    sql: ${TABLE}.landing_page_mobile_file_name ;;
  }

  dimension: landing_page_mobile_file_size {
    type: number
    sql: ${TABLE}.landing_page_mobile_file_size ;;
  }

  dimension_group: landing_page_mobile_updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.landing_page_mobile_updated_at ;;
  }

  dimension_group: last_sign_in {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_sign_in_at ;;
  }

  dimension: last_sign_in_ip {
    type: string
    sql: ${TABLE}.last_sign_in_ip ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: login_email {
    type: string
    sql: ${TABLE}.login_email ;;
  }

  dimension: logo_dimensions {
    type: string
    sql: ${TABLE}.logo_dimensions ;;
  }

  dimension: logo_file_name {
    type: string
    sql: ${TABLE}.logo_file_name ;;
  }

  dimension: metatag {
    type: string
    sql: ${TABLE}.metatag ;;
  }

  dimension: min_delevery_order {
    type: number
    sql: ${TABLE}.min_delevery_order ;;
  }

  dimension: min_pickup_order {
    type: number
    sql: ${TABLE}.min_pickup_order ;;
  }

  dimension: mypizza_issued_email {
    type: string
    sql: ${TABLE}.mypizza_issued_email ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: order_online_owner {
    type: string
    sql: ${TABLE}.order_online_owner ;;
  }

  dimension: order_online_status {
    type: string
    sql: ${TABLE}.order_online_status ;;
  }

  dimension: passphrase {
    type: string
    sql: ${TABLE}.passphrase ;;
  }

  dimension: payout_check_address {
    type: string
    sql: ${TABLE}.payout_check_address ;;
  }

  dimension: payout_check_amount {
    type: string
    sql: ${TABLE}.payout_check_amount ;;
  }

  dimension: payout_check_city {
    type: string
    sql: ${TABLE}.payout_check_city ;;
  }

  dimension: payout_check_lob_id {
    type: string
    sql: ${TABLE}.payout_check_lob_id ;;
  }

  dimension: payout_check_name {
    type: string
    sql: ${TABLE}.payout_check_name ;;
  }

  dimension: payout_check_state {
    type: string
    sql: ${TABLE}.payout_check_state ;;
  }

  dimension: payout_check_zip {
    type: string
    sql: ${TABLE}.payout_check_zip ;;
  }

  dimension: payout_frequency {
    type: string
    sql: ${TABLE}.payout_frequency ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: pickup_estimate {
    type: string
    sql: ${TABLE}.pickup_estimate ;;
  }

  dimension: ratings_count {
    type: number
    sql: ${TABLE}.ratings_count ;;
  }

  dimension: receives_daily_report {
    type: number
    sql: ${TABLE}.receives_daily_report ;;
  }

  dimension_group: remember_created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.remember_created_at ;;
  }

  dimension_group: reset_password_sent {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.reset_password_sent_at ;;
  }

  dimension: reset_password_token {
    type: string
    sql: ${TABLE}.reset_password_token ;;
  }

  dimension: shop_id {
    type: number
    sql: ${TABLE}.shop_id ;;
  }

  dimension: sign_in_count {
    type: number
    sql: ${TABLE}.sign_in_count ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: sold_by {
    type: number
    sql: ${TABLE}.sold_by ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: statement_order_detail {
    type: number
    sql: ${TABLE}.statement_order_detail ;;
  }

  dimension: statement_type {
    type: string
    sql: ${TABLE}.statement_type ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: stripe_id {
    type: string
    sql: ${TABLE}.stripe_id ;;
  }

  dimension: tax_delivery_fee {
    type: number
    sql: ${TABLE}.tax_delivery_fee ;;
  }

  dimension: tax_rate {
    type: string
    sql: ${TABLE}.tax_rate ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: twilio_phone {
    type: string
    sql: ${TABLE}.twilio_phone ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at ;;
  }

  dimension_group: updated_menu {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_menu_at ;;
  }

  dimension: uses_api_phone {
    type: number
    sql: ${TABLE}.uses_api_phone ;;
  }

  dimension: uses_cross_street {
    type: number
    sql: ${TABLE}.uses_cross_street ;;
  }

  dimension: zipcode {
    type: string
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      name,
      domain_name,
      ad_name,
      alt_domain_name,
      contact_name,
      logo_file_name,
      payout_check_name,
      landing_page_image_file_name,
      landing_page_desktop_file_name,
      landing_page_mobile_file_name,
      chains.id,
      chains.name,
      chains.domain_name
    ]
  }
}
