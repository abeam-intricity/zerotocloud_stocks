view: customer {
  sql_table_name: ZTC.CUSTOMER ;;

  dimension: c_customer_id {
    type: string
    sql: ${TABLE}.C_CUSTOMER_ID ;;
  }

  dimension: _metadata__timestamp {
    type: string
    sql: ${TABLE}._METADATA__TIMESTAMP ;;
  }

  dimension: _metadata__uuid {
    type: string
    sql: ${TABLE}._METADATA__UUID ;;
  }

  dimension: _metadata_snapshot_id {
    type: number
    sql: ${TABLE}._METADATA_SNAPSHOT_ID ;;
  }

  dimension: _metadata_snapshot_size {
    type: number
    sql: ${TABLE}._METADATA_SNAPSHOT_SIZE ;;
  }

  dimension: c_birth_country {
    type: string
    sql: ${TABLE}.C_BIRTH_COUNTRY ;;
  }

  dimension: c_birth_day {
    type: number
    sql: ${TABLE}.C_BIRTH_DAY ;;
  }

  dimension: c_birth_month {
    type: number
    sql: ${TABLE}.C_BIRTH_MONTH ;;
  }

  dimension: c_birth_year {
    type: number
    sql: ${TABLE}.C_BIRTH_YEAR ;;
  }

  dimension: c_current_addr_sk {
    type: number
    sql: ${TABLE}.C_CURRENT_ADDR_SK ;;
  }

  dimension: c_current_cdemo_sk {
    type: number
    sql: ${TABLE}.C_CURRENT_CDEMO_SK ;;
  }

  dimension: c_current_hdemo_sk {
    type: number
    sql: ${TABLE}.C_CURRENT_HDEMO_SK ;;
  }

  dimension: c_customer_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.C_CUSTOMER_SK ;;
  }

  dimension: c_email_address {
    type: string
    sql: ${TABLE}.C_EMAIL_ADDRESS ;;
  }

  dimension: c_first_name {
    type: string
    sql: ${TABLE}.C_FIRST_NAME ;;
  }

  dimension: c_first_sales_date_sk {
    type: number
    sql: ${TABLE}.C_FIRST_SALES_DATE_SK ;;
  }

  dimension: c_first_shipto_date_sk {
    type: number
    sql: ${TABLE}.C_FIRST_SHIPTO_DATE_SK ;;
  }

  dimension: c_last_name {
    type: string
    sql: ${TABLE}.C_LAST_NAME ;;
  }

  dimension: c_last_review_date {
    type: string
    sql: ${TABLE}.C_LAST_REVIEW_DATE ;;
  }

  dimension: c_login {
    type: string
    sql: ${TABLE}.C_LOGIN ;;
  }

  dimension: c_preferred_cust_flag {
    type: string
    sql: ${TABLE}.C_PREFERRED_CUST_FLAG ;;
  }

  dimension: c_salutation {
    type: string
    sql: ${TABLE}.C_SALUTATION ;;
  }

  measure: count {
    type: count
    drill_fields: [c_customer_id, c_first_name, c_last_name]
  }
}
