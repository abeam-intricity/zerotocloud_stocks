connection: "ztcsnowflake"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: ztcstocks_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ztcstocks_default_datagroup

explore: stock_data {}

explore: twitter_hashtag {}

explore: zero_to_cloud_js {}

explore: customer {
  join: customer_demographics {
    type: left_outer
    relationship: one_to_one
    sql_on: ${customer.c_customer_sk} = ${customer_demographics.cd_demo_sk} ;;
  }
}
