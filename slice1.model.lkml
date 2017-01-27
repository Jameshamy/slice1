connection: "redshift_veritas"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: acts_as_account_accounts {}

explore: acts_as_account_global_accounts {}

explore: acts_as_account_journals {}

explore: acts_as_account_postings {
  join: statements {
    type: left_outer
    sql_on: ${acts_as_account_postings.statement_id} = ${statements.id} ;;
    relationship: many_to_one
  }
}

explore: addon_attribute {}

explore: addon_master {}

explore: addresses {
  join: users {
    type: left_outer
    sql_on: ${addresses.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: admin_events {}

explore: analytics_customers {}

explore: attendance_records {}

explore: awsdms_apply_exceptions {}

explore: batches {}

explore: blocked_ip_addresses {}

explore: blocked_locations {}

explore: categories {}

explore: categorizations {}

explore: chains {}

explore: cities {}

explore: consolidated_orders {}

explore: coupon_conditions {
  join: coupons {
    type: left_outer
    sql_on: ${coupon_conditions.coupon_id} = ${coupons.id} ;;
    relationship: many_to_one
  }
}

explore: coupons {}

explore: coupons_orders {
  join: coupons {
    type: left_outer
    sql_on: ${coupons_orders.coupon_id} = ${coupons.id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${coupons_orders.order_id} = ${orders.orders_id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: analytics_customers {
    type: left_outer
    sql_on: ${orders.analytics_customer_id} = ${analytics_customers.id} ;;
    relationship: many_to_one
  }
}

explore: customer_contact_events {}

explore: delayed_jobs {}

explore: delivery_zones {}

explore: favoritables {
  join: users {
    type: left_outer
    sql_on: ${favoritables.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: favorite {
  join: users {
    type: left_outer
    sql_on: ${favorite.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: faxes {
  join: orders {
    type: left_outer
    sql_on: ${faxes.order_id} = ${orders.orders_id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: analytics_customers {
    type: left_outer
    sql_on: ${orders.analytics_customer_id} = ${analytics_customers.id} ;;
    relationship: many_to_one
  }
}

explore: flipper_features {}

explore: flipper_gates {}

explore: lhmn_orders {
  join: orders {
    type: left_outer
    sql_on: ${lhmn_orders.orders_id} = ${orders.orders_id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${lhmn_orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: analytics_customers {
    type: left_outer
    sql_on: ${orders.analytics_customer_id} = ${analytics_customers.id} ;;
    relationship: many_to_one
  }
}

explore: locations {}

explore: marketing_recipients {}

explore: openings {}

explore: operating_expenses {}

explore: order_adjustments {
  join: orders {
    type: left_outer
    sql_on: ${order_adjustments.order_id} = ${orders.orders_id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: analytics_customers {
    type: left_outer
    sql_on: ${orders.analytics_customer_id} = ${analytics_customers.id} ;;
    relationship: many_to_one
  }
}

explore: order_approval_scores {
  join: orders {
    type: left_outer
    sql_on: ${order_approval_scores.order_id} = ${orders.orders_id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: analytics_customers {
    type: left_outer
    sql_on: ${orders.analytics_customer_id} = ${analytics_customers.id} ;;
    relationship: many_to_one
  }
}

explore: order_transactions {
  join: orders {
    type: left_outer
    sql_on: ${order_transactions.order_id} = ${orders.orders_id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: analytics_customers {
    type: left_outer
    sql_on: ${orders.analytics_customer_id} = ${analytics_customers.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: analytics_customers {
    type: left_outer
    sql_on: ${orders.analytics_customer_id} = ${analytics_customers.id} ;;
    relationship: many_to_one
  }
}

explore: orders_products {
  join: orders {
    type: left_outer
    sql_on: ${orders_products.orders_id} = ${orders.orders_id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: analytics_customers {
    type: left_outer
    sql_on: ${orders.analytics_customer_id} = ${analytics_customers.id} ;;
    relationship: many_to_one
  }
}

explore: orders_products_attributes {
  join: orders {
    type: left_outer
    sql_on: ${orders_products_attributes.orders_id} = ${orders.orders_id} ;;
    relationship: many_to_one
  }

  join: orders_products {
    type: left_outer
    sql_on: ${orders_products_attributes.orders_products_id} = ${orders_products.orders_products_id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: analytics_customers {
    type: left_outer
    sql_on: ${orders.analytics_customer_id} = ${analytics_customers.id} ;;
    relationship: many_to_one
  }
}

explore: payment_methods {
  join: users {
    type: left_outer
    sql_on: ${payment_methods.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: payouts {
  join: statements {
    type: left_outer
    sql_on: ${payouts.statement_id} = ${statements.id} ;;
    relationship: many_to_one
  }
}

explore: product_master {
  join: categorizations {
    type: left_outer
    sql_on: ${product_master.categorization_id} = ${categorizations.id} ;;
    relationship: many_to_one
  }
}

explore: product_type {}

explore: promo_codes {}

explore: ratings {
  join: users {
    type: left_outer
    sql_on: ${ratings.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${ratings.order_id} = ${orders.orders_id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: analytics_customers {
    type: left_outer
    sql_on: ${orders.analytics_customer_id} = ${analytics_customers.id} ;;
    relationship: many_to_one
  }
}

explore: received_calls {}

explore: schema_migrations {}

explore: session_summaries {}

explore: session_visits {
  join: users {
    type: left_outer
    sql_on: ${session_visits.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${session_visits.order_id} = ${orders.orders_id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: analytics_customers {
    type: left_outer
    sql_on: ${orders.analytics_customer_id} = ${analytics_customers.id} ;;
    relationship: many_to_one
  }
}

explore: shop_master {
  join: chains {
    type: left_outer
    sql_on: ${shop_master.chain_id} = ${chains.id} ;;
    relationship: many_to_one
  }
}

explore: single_platform_visits {
  join: orders {
    type: left_outer
    sql_on: ${single_platform_visits.order_id} = ${orders.orders_id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: analytics_customers {
    type: left_outer
    sql_on: ${orders.analytics_customer_id} = ${analytics_customers.id} ;;
    relationship: many_to_one
  }
}

explore: statements {}

explore: team_members {}

explore: tickets {
  join: orders {
    type: left_outer
    sql_on: ${tickets.order_id} = ${orders.orders_id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: analytics_customers {
    type: left_outer
    sql_on: ${orders.analytics_customer_id} = ${analytics_customers.id} ;;
    relationship: many_to_one
  }
}

explore: uploads {
  join: tickets {
    type: left_outer
    sql_on: ${uploads.ticket_id} = ${tickets.id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${tickets.order_id} = ${orders.orders_id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: analytics_customers {
    type: left_outer
    sql_on: ${orders.analytics_customer_id} = ${analytics_customers.id} ;;
    relationship: many_to_one
  }
}

explore: users {}

explore: vanity_conversions {
  join: vanity_experiments {
    type: left_outer
    sql_on: ${vanity_conversions.vanity_experiment_id} = ${vanity_experiments.id} ;;
    relationship: many_to_one
  }
}

explore: vanity_experiments {}

explore: vanity_metric_values {
  join: vanity_metrics {
    type: left_outer
    sql_on: ${vanity_metric_values.vanity_metric_id} = ${vanity_metrics.id} ;;
    relationship: many_to_one
  }
}

explore: vanity_metrics {}

explore: vanity_participants {}
