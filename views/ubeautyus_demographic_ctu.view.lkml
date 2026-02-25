view: ubeautyus_demographic_ctu {
  sql_table_name: consumer.custom.ubeautyus_demographic_ctu ;;

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: address_line1 {
    type: string
    sql: ${TABLE}.address_line1 ;;
  }
  dimension: city_name {
    type: string
    sql: ${TABLE}.city_name ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }
  dimension: tsp_type_of_match_enhanced {
    type: string
    sql: ${TABLE}.tsp_type_of_match_enhanced ;;
  }
  dimension: gender_code__person_1 {
    type: string
    sql: ${TABLE}.gender_code__person_1 ;;
  }
  dimension: advantage_household_marital_status {
    type: string
    sql: ${TABLE}.advantage_household_marital_status ;;
  }
  dimension: advantage_household_age_enhanced {
    type: string
    sql: ${TABLE}.advantage_household_age_enhanced ;;
  }
  dimension: advantage_household_education_enhanced {
    type: string
    sql: ${TABLE}.advantage_household_education_enhanced ;;
  }
  dimension: advantage_target_income_40 {
    type: string
    sql: ${TABLE}.advantage_target_income_40 ;;
  }
  dimension: discretionary_spending_income {
    type: string
    sql: ${TABLE}.discretionary_spending_income ;;
  }
}
