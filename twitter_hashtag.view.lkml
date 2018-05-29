view: twitter_hashtag {
  sql_table_name: ZTC.TWITTER_HASHTAG ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: _metadata__timestamp {
    type: string
    sql: ${TABLE}._METADATA__TIMESTAMP ;;
  }

  dimension: _metadata__uuid {
    type: string
    sql: ${TABLE}._METADATA__UUID ;;
  }

  dimension: _metadata_base_url {
    type: string
    sql: ${TABLE}._METADATA_BASE_URL ;;
  }

  dimension: _metadata_pulled_at {
    type: string
    sql: ${TABLE}._METADATA_PULLED_AT ;;
  }

  dimension: _metadata_snapshot_number {
    type: number
    sql: ${TABLE}._METADATA_SNAPSHOT_NUMBER ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: favorite_count {
    type: number
    sql: ${TABLE}.FAVORITE_COUNT ;;
  }

  dimension: hashtags {
    type: string
    sql: ${TABLE}.HASHTAGS ;;
  }

  dimension: id_str {
    type: number
    sql: ${TABLE}.ID_STR ;;
  }

  dimension: in_reply_to_screen_name {
    type: string
    sql: ${TABLE}.IN_REPLY_TO_SCREEN_NAME ;;
  }

  dimension: in_reply_to_status_id {
    type: number
    sql: ${TABLE}.IN_REPLY_TO_STATUS_ID ;;
  }

  dimension: in_reply_to_user_id {
    type: string
    sql: ${TABLE}.IN_REPLY_TO_USER_ID ;;
  }

  dimension: lang {
    type: string
    sql: ${TABLE}.LANG ;;
  }

  dimension: media {
    type: string
    sql: ${TABLE}.MEDIA ;;
  }

  dimension: retweet_count {
    type: number
    sql: ${TABLE}.RETWEET_COUNT ;;
  }

  dimension: retweeted_status {
    type: string
    sql: ${TABLE}.RETWEETED_STATUS ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.TEXT ;;
  }

  dimension: truncated {
    type: yesno
    sql: ${TABLE}.TRUNCATED ;;
  }

  dimension: urls {
    type: string
    sql: ${TABLE}.URLS ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."USER" ;;
  }

  dimension: user_mentions {
    type: string
    sql: ${TABLE}.USER_MENTIONS ;;
  }

  measure: count {
    type: count
    drill_fields: [id, in_reply_to_screen_name]
  }
}
