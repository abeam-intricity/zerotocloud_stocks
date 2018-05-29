view: zero_to_cloud_js {
  sql_table_name: ZTC.zero_to_cloud_js ;;

  dimension: _metadata__parent_uuid {
    type: string
    sql: ${TABLE}._METADATA__PARENT_UUID ;;
  }

  dimension: _metadata__timestamp {
    type: string
    sql: ${TABLE}._METADATA__TIMESTAMP ;;
  }

  dimension: _metadata__uuid {
    type: string
    sql: ${TABLE}._METADATA__UUID ;;
  }

  dimension: _metadata__version {
    type: number
    sql: ${TABLE}._METADATA__VERSION ;;
  }

  dimension: _metadata_client_ip {
    type: string
    sql: ${TABLE}._METADATA_CLIENT_IP ;;
  }

  dimension: _metadata_client_name {
    type: string
    sql: ${TABLE}._METADATA_CLIENT_NAME ;;
  }

  dimension: _metadata_event_type {
    type: string
    sql: ${TABLE}._METADATA_EVENT_TYPE ;;
  }

  dimension: _metadata_input_label {
    type: string
    sql: ${TABLE}._METADATA_INPUT_LABEL ;;
  }

  dimension: _metadata_input_type {
    type: string
    sql: ${TABLE}._METADATA_INPUT_TYPE ;;
  }

  dimension: _metadata_restream_count {
    type: number
    sql: ${TABLE}._METADATA_RESTREAM_COUNT ;;
  }

  dimension: _metadata_token {
    type: string
    sql: ${TABLE}._METADATA_TOKEN ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.EVENT ;;
  }

  dimension: properties {
    type: string
    sql: ${TABLE}.PROPERTIES ;;
  }

  measure: count {
    type: count
    drill_fields: [_metadata_client_name]
  }
}
