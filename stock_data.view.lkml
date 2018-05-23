view: stock_data {
  sql_table_name: ZTC.STOCK_DATA ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: stock_value {
    type: number
    sql: ${TABLE}.STOCK_AVG ;;
  }

  dimension: stock_symbol {
    type: string
    sql: ${TABLE}.STOCK_SYMBOL ;;
  }

  dimension: stock_time {
    type: string
    sql: ${TABLE}.STOCK_TIME ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: sum {
    type: sum
    sql: ${stock_value} ;;
  }
}
