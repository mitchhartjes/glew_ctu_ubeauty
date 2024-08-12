view: ubeautyus_demographic_ctu {
  sql_table_name: consumer.custom.ubeautyus_demographic_ctu ;;

  dimension: address_line1 {
    type: string
    sql: ${TABLE}.address_line1 ;;
  }
  dimension: advantage_household_age_enhanced {
    type: string
    sql: ${TABLE}.advantage_household_age_enhanced ;;
  }
  dimension: advantage_household_age_indicator_enhanced {
    type: string
    sql: ${TABLE}.advantage_household_age_indicator_enhanced ;;
  }
  dimension: advantage_household_education_enhanced {
    type: string
    sql: ${TABLE}.advantage_household_education_enhanced ;;
  }
  dimension: advantage_household_education_indicator_enhanced {
    type: string
    sql: ${TABLE}.advantage_household_education_indicator_enhanced ;;
  }
  dimension: advantage_household_marital_status {
    type: string
    sql: ${TABLE}.advantage_household_marital_status ;;
  }
  dimension: advantage_household_marital_status_indicator {
    type: string
    sql: ${TABLE}.advantage_household_marital_status_indicator ;;
  }
  dimension: advantage_target_income_40 {
    type: string
    sql: ${TABLE}.advantage_target_income_40 ;;
  }
  dimension: advantage_target_income_indicator_40 {
    type: string
    sql: ${TABLE}.advantage_target_income_indicator_40 ;;
  }
  dimension: city_name {
    type: string
    sql: ${TABLE}.city_name ;;
  }
  dimension: discretionary_spending_income {
    type: string
    sql: ${TABLE}.discretionary_spending_income ;;
  }
  dimension: dpv_code {
    type: string
    sql: ${TABLE}.dpv_code ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: gender_code__person_1 {
    type: string
    sql: ${TABLE}.gender_code__person_1 ;;
  }
  dimension: given_name_of_person_may_include_blanks__person_1 {
    type: string
    sql: ${TABLE}.given_name_of_person_may_include_blanks__person_1 ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: match_code {
    type: string
    sql: ${TABLE}.match_code ;;
  }
  dimension: middle_initial__person_1 {
    type: string
    sql: ${TABLE}.middle_initial__person_1 ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: surname_suffix__person_1 {
    type: string
    sql: ${TABLE}.surname_suffix__person_1 ;;
  }
  dimension: title_code__person_1 {
    type: string
    sql: ${TABLE}.title_code__person_1 ;;
  }
  dimension: tsp_type_of_match_enhanced {
    type: string
    sql: ${TABLE}.tsp_type_of_match_enhanced ;;
  }
  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }
}
