SELECT
    'fpds'::TEXT as "system",
    usaspending.transaction_id,
    usaspending.detached_award_procurement_id AS "broker_surrogate_id",
    usaspending.detached_award_proc_unique AS "broker_derived_unique_key",
         (broker.piid IS DISTINCT FROM usaspending.piid) as piid,
         (broker.detached_award_proc_unique IS DISTINCT FROM usaspending.detached_award_proc_unique) as detached_award_proc_unique,
         (broker.agency_id IS DISTINCT FROM usaspending.agency_id) as agency_id,
         (broker.awarding_sub_tier_agency_c IS DISTINCT FROM usaspending.awarding_sub_tier_agency_c),
         (broker.awarding_sub_tier_agency_n IS DISTINCT FROM usaspending.awarding_sub_tier_agency_n),
         (broker.awarding_agency_code IS DISTINCT FROM usaspending.awarding_agency_code),
         (broker.awarding_agency_name IS DISTINCT FROM usaspending.awarding_agency_name),
         (broker.parent_award_id IS DISTINCT FROM usaspending.parent_award_id),
         (broker.award_modification_amendme IS DISTINCT FROM usaspending.award_modification_amendme),
         (broker.type_of_contract_pricing IS DISTINCT FROM usaspending.type_of_contract_pricing),
         (broker.type_of_contract_pric_desc IS DISTINCT FROM usaspending.type_of_contract_pric_desc),
         (broker.contract_award_type IS DISTINCT FROM usaspending.contract_award_type),
         (broker.contract_award_type_desc IS DISTINCT FROM usaspending.contract_award_type_desc),
         (broker.naics IS DISTINCT FROM usaspending.naics),
         (broker.naics_description IS DISTINCT FROM usaspending.naics_description),
         (broker.awardee_or_recipient_uniqu IS DISTINCT FROM usaspending.awardee_or_recipient_uniqu),
         (broker.ultimate_parent_legal_enti IS DISTINCT FROM usaspending.ultimate_parent_legal_enti),
         (broker.ultimate_parent_unique_ide IS DISTINCT FROM usaspending.ultimate_parent_unique_ide),
         (broker.award_description IS DISTINCT FROM usaspending.award_description),
         (broker.place_of_performance_zip4a IS DISTINCT FROM usaspending.place_of_performance_zip4a),
         (broker.place_of_perform_city_name IS DISTINCT FROM usaspending.place_of_perform_city_name),
         (broker.place_of_perform_county_na IS DISTINCT FROM usaspending.place_of_perform_county_na),
         (broker.place_of_performance_congr IS DISTINCT FROM usaspending.place_of_performance_congr),
         (broker.awardee_or_recipient_legal IS DISTINCT FROM usaspending.awardee_or_recipient_legal),
         (broker.legal_entity_city_name IS DISTINCT FROM usaspending.legal_entity_city_name),
         (broker.legal_entity_state_code IS DISTINCT FROM usaspending.legal_entity_state_code),
         (broker.legal_entity_state_descrip IS DISTINCT FROM usaspending.legal_entity_state_descrip),
         (broker.legal_entity_zip4 IS DISTINCT FROM usaspending.legal_entity_zip4),
         (broker.legal_entity_congressional IS DISTINCT FROM usaspending.legal_entity_congressional),
         (broker.legal_entity_address_line1 IS DISTINCT FROM usaspending.legal_entity_address_line1),
         (broker.legal_entity_address_line2 IS DISTINCT FROM usaspending.legal_entity_address_line2),
         (broker.legal_entity_address_line3 IS DISTINCT FROM usaspending.legal_entity_address_line3),
         (broker.legal_entity_country_code IS DISTINCT FROM usaspending.legal_entity_country_code),
         (broker.legal_entity_country_name IS DISTINCT FROM usaspending.legal_entity_country_name),
         (broker.period_of_performance_star IS DISTINCT FROM usaspending.period_of_performance_star),
         (broker.period_of_performance_curr IS DISTINCT FROM usaspending.period_of_performance_curr),
         (broker.period_of_perf_potential_e IS DISTINCT FROM usaspending.period_of_perf_potential_e),
         (broker.ordering_period_end_date IS DISTINCT FROM usaspending.ordering_period_end_date),
         (broker.action_date IS DISTINCT FROM usaspending.action_date),
         (broker.action_type IS DISTINCT FROM usaspending.action_type),
         (broker.action_type_description IS DISTINCT FROM usaspending.action_type_description),
         (broker.federal_action_obligation IS DISTINCT FROM usaspending.federal_action_obligation),
         (broker.current_total_value_award IS DISTINCT FROM usaspending.current_total_value_award),
         (broker.potential_total_value_awar IS DISTINCT FROM usaspending.potential_total_value_awar),
         (broker.funding_sub_tier_agency_co IS DISTINCT FROM usaspending.funding_sub_tier_agency_co),
         (broker.funding_sub_tier_agency_na IS DISTINCT FROM usaspending.funding_sub_tier_agency_na),
         (broker.funding_office_code IS DISTINCT FROM usaspending.funding_office_code),
         (broker.funding_office_name IS DISTINCT FROM usaspending.funding_office_name),
         (broker.awarding_office_code IS DISTINCT FROM usaspending.awarding_office_code),
         (broker.awarding_office_name IS DISTINCT FROM usaspending.awarding_office_name),
         (broker.referenced_idv_agency_iden IS DISTINCT FROM usaspending.referenced_idv_agency_iden),
         (broker.referenced_idv_agency_desc IS DISTINCT FROM usaspending.referenced_idv_agency_desc),
         (broker.funding_agency_code IS DISTINCT FROM usaspending.funding_agency_code),
         (broker.funding_agency_name IS DISTINCT FROM usaspending.funding_agency_name),
         (broker.place_of_performance_locat IS DISTINCT FROM usaspending.place_of_performance_locat),
         (broker.place_of_performance_state IS DISTINCT FROM usaspending.place_of_performance_state),
         (broker.place_of_perfor_state_desc IS DISTINCT FROM usaspending.place_of_perfor_state_desc),
         (broker.place_of_perform_country_c IS DISTINCT FROM usaspending.place_of_perform_country_c),
         (broker.place_of_perf_country_desc IS DISTINCT FROM usaspending.place_of_perf_country_desc),
         (broker.idv_type IS DISTINCT FROM usaspending.idv_type),
         (broker.idv_type_description IS DISTINCT FROM usaspending.idv_type_description),
         (broker.referenced_idv_type IS DISTINCT FROM usaspending.referenced_idv_type),
         (broker.referenced_idv_type_desc IS DISTINCT FROM usaspending.referenced_idv_type_desc),
         (broker.vendor_doing_as_business_n IS DISTINCT FROM usaspending.vendor_doing_as_business_n),
         (broker.vendor_phone_number IS DISTINCT FROM usaspending.vendor_phone_number),
         (broker.vendor_fax_number IS DISTINCT FROM usaspending.vendor_fax_number),
         (broker.multiple_or_single_award_i IS DISTINCT FROM usaspending.multiple_or_single_award_i),
         (broker.multiple_or_single_aw_desc IS DISTINCT FROM usaspending.multiple_or_single_aw_desc),
         (broker.referenced_mult_or_single IS DISTINCT FROM usaspending.referenced_mult_or_single),
         (broker.referenced_mult_or_si_desc IS DISTINCT FROM usaspending.referenced_mult_or_si_desc),
         (broker.type_of_idc IS DISTINCT FROM usaspending.type_of_idc),
         (broker.type_of_idc_description IS DISTINCT FROM usaspending.type_of_idc_description),
         (broker.a_76_fair_act_action IS DISTINCT FROM usaspending.a_76_fair_act_action),
         (broker.a_76_fair_act_action_desc IS DISTINCT FROM usaspending.a_76_fair_act_action_desc),
         (broker.dod_claimant_program_code IS DISTINCT FROM usaspending.dod_claimant_program_code),
         (broker.dod_claimant_prog_cod_desc IS DISTINCT FROM usaspending.dod_claimant_prog_cod_desc),
         (broker.clinger_cohen_act_planning IS DISTINCT FROM usaspending.clinger_cohen_act_planning),
         (broker.clinger_cohen_act_pla_desc IS DISTINCT FROM usaspending.clinger_cohen_act_pla_desc),
         (broker.commercial_item_acquisitio IS DISTINCT FROM usaspending.commercial_item_acquisitio),
         (broker.commercial_item_acqui_desc IS DISTINCT FROM usaspending.commercial_item_acqui_desc),
         (broker.commercial_item_test_progr IS DISTINCT FROM usaspending.commercial_item_test_progr),
         (broker.commercial_item_test_desc IS DISTINCT FROM usaspending.commercial_item_test_desc),
         (broker.consolidated_contract IS DISTINCT FROM usaspending.consolidated_contract),
         (broker.consolidated_contract_desc IS DISTINCT FROM usaspending.consolidated_contract_desc),
         (broker.contingency_humanitarian_o IS DISTINCT FROM usaspending.contingency_humanitarian_o),
         (broker.contingency_humanitar_desc IS DISTINCT FROM usaspending.contingency_humanitar_desc),
         (broker.contract_bundling IS DISTINCT FROM usaspending.contract_bundling),
         (broker.contract_bundling_descrip IS DISTINCT FROM usaspending.contract_bundling_descrip),
         (broker.contract_financing IS DISTINCT FROM usaspending.contract_financing),
         (broker.contract_financing_descrip IS DISTINCT FROM usaspending.contract_financing_descrip),
         (broker.contracting_officers_deter IS DISTINCT FROM usaspending.contracting_officers_deter),
         (broker.contracting_officers_desc IS DISTINCT FROM usaspending.contracting_officers_desc),
         (broker.cost_accounting_standards IS DISTINCT FROM usaspending.cost_accounting_standards),
         (broker.cost_accounting_stand_desc IS DISTINCT FROM usaspending.cost_accounting_stand_desc),
         (broker.cost_or_pricing_data IS DISTINCT FROM usaspending.cost_or_pricing_data),
         (broker.cost_or_pricing_data_desc IS DISTINCT FROM usaspending.cost_or_pricing_data_desc),
         (broker.country_of_product_or_serv IS DISTINCT FROM usaspending.country_of_product_or_serv),
         (broker.country_of_product_or_desc IS DISTINCT FROM usaspending.country_of_product_or_desc),
         (broker.construction_wage_rate_req IS DISTINCT FROM usaspending.construction_wage_rate_req),
         (broker.construction_wage_rat_desc IS DISTINCT FROM usaspending.construction_wage_rat_desc),
         (broker.evaluated_preference IS DISTINCT FROM usaspending.evaluated_preference),
         (broker.evaluated_preference_desc IS DISTINCT FROM usaspending.evaluated_preference_desc),
         (broker.extent_competed IS DISTINCT FROM usaspending.extent_competed),
         (broker.extent_compete_description IS DISTINCT FROM usaspending.extent_compete_description),
         (broker.fed_biz_opps IS DISTINCT FROM usaspending.fed_biz_opps),
         (broker.fed_biz_opps_description IS DISTINCT FROM usaspending.fed_biz_opps_description),
         (broker.foreign_funding IS DISTINCT FROM usaspending.foreign_funding),
         (broker.foreign_funding_desc IS DISTINCT FROM usaspending.foreign_funding_desc),
         (broker.government_furnished_prope IS DISTINCT FROM usaspending.government_furnished_prope),
         (broker.government_furnished_desc IS DISTINCT FROM usaspending.government_furnished_desc),
         (broker.information_technology_com IS DISTINCT FROM usaspending.information_technology_com),
         (broker.information_technolog_desc IS DISTINCT FROM usaspending.information_technolog_desc),
         (broker.interagency_contracting_au IS DISTINCT FROM usaspending.interagency_contracting_au),
         (broker.interagency_contract_desc IS DISTINCT FROM usaspending.interagency_contract_desc),
         (broker.local_area_set_aside IS DISTINCT FROM usaspending.local_area_set_aside),
         (broker.local_area_set_aside_desc IS DISTINCT FROM usaspending.local_area_set_aside_desc),
         (broker.major_program IS DISTINCT FROM usaspending.major_program),
         (broker.purchase_card_as_payment_m IS DISTINCT FROM usaspending.purchase_card_as_payment_m),
         (broker.purchase_card_as_paym_desc IS DISTINCT FROM usaspending.purchase_card_as_paym_desc),
         (broker.multi_year_contract IS DISTINCT FROM usaspending.multi_year_contract),
         (broker.multi_year_contract_desc IS DISTINCT FROM usaspending.multi_year_contract_desc),
         (broker.national_interest_action IS DISTINCT FROM usaspending.national_interest_action),
         (broker.national_interest_desc IS DISTINCT FROM usaspending.national_interest_desc),
         (broker.number_of_actions IS DISTINCT FROM usaspending.number_of_actions),
         (broker.number_of_offers_received IS DISTINCT FROM usaspending.number_of_offers_received),
         (broker.other_statutory_authority IS DISTINCT FROM usaspending.other_statutory_authority),
         (broker.performance_based_service IS DISTINCT FROM usaspending.performance_based_service),
         (broker.performance_based_se_desc IS DISTINCT FROM usaspending.performance_based_se_desc),
         (broker.place_of_manufacture IS DISTINCT FROM usaspending.place_of_manufacture),
         (broker.place_of_manufacture_desc IS DISTINCT FROM usaspending.place_of_manufacture_desc),
         (broker.price_evaluation_adjustmen IS DISTINCT FROM usaspending.price_evaluation_adjustmen),
         (broker.product_or_service_code IS DISTINCT FROM usaspending.product_or_service_code),
         (broker.product_or_service_co_desc IS DISTINCT FROM usaspending.product_or_service_co_desc),
         (broker.program_acronym IS DISTINCT FROM usaspending.program_acronym),
         (broker.other_than_full_and_open_c IS DISTINCT FROM usaspending.other_than_full_and_open_c),
         (broker.other_than_full_and_o_desc IS DISTINCT FROM usaspending.other_than_full_and_o_desc),
         (broker.recovered_materials_sustai IS DISTINCT FROM usaspending.recovered_materials_sustai),
         (broker.recovered_materials_s_desc IS DISTINCT FROM usaspending.recovered_materials_s_desc),
         (broker.research IS DISTINCT FROM usaspending.research),
         (broker.research_description IS DISTINCT FROM usaspending.research_description),
         (broker.sea_transportation IS DISTINCT FROM usaspending.sea_transportation),
         (broker.sea_transportation_desc IS DISTINCT FROM usaspending.sea_transportation_desc),
         (broker.labor_standards IS DISTINCT FROM usaspending.labor_standards),
         (broker.labor_standards_descrip IS DISTINCT FROM usaspending.labor_standards_descrip),
         (broker.small_business_competitive IS DISTINCT FROM usaspending.small_business_competitive),
         (broker.solicitation_identifier IS DISTINCT FROM usaspending.solicitation_identifier),
         (broker.solicitation_procedures IS DISTINCT FROM usaspending.solicitation_procedures),
         (broker.solicitation_procedur_desc IS DISTINCT FROM usaspending.solicitation_procedur_desc),
         (broker.fair_opportunity_limited_s IS DISTINCT FROM usaspending.fair_opportunity_limited_s),
         (broker.fair_opportunity_limi_desc IS DISTINCT FROM usaspending.fair_opportunity_limi_desc),
         (broker.subcontracting_plan IS DISTINCT FROM usaspending.subcontracting_plan),
         (broker.subcontracting_plan_desc IS DISTINCT FROM usaspending.subcontracting_plan_desc),
         (broker.program_system_or_equipmen IS DISTINCT FROM usaspending.program_system_or_equipmen),
         (broker.program_system_or_equ_desc IS DISTINCT FROM usaspending.program_system_or_equ_desc),
         (broker.type_set_aside IS DISTINCT FROM usaspending.type_set_aside),
         (broker.type_set_aside_description IS DISTINCT FROM usaspending.type_set_aside_description),
         (broker.epa_designated_product IS DISTINCT FROM usaspending.epa_designated_product),
         (broker.epa_designated_produc_desc IS DISTINCT FROM usaspending.epa_designated_produc_desc),
         (broker.materials_supplies_article IS DISTINCT FROM usaspending.materials_supplies_article),
         (broker.materials_supplies_descrip IS DISTINCT FROM usaspending.materials_supplies_descrip),
         (broker.transaction_number IS DISTINCT FROM usaspending.transaction_number),
         (broker.sam_exception IS DISTINCT FROM usaspending.sam_exception),
         (broker.sam_exception_description IS DISTINCT FROM usaspending.sam_exception_description),
         (broker.city_local_government IS DISTINCT FROM usaspending.city_local_government),
         (broker.county_local_government IS DISTINCT FROM usaspending.county_local_government),
         (broker.inter_municipal_local_gove IS DISTINCT FROM usaspending.inter_municipal_local_gove),
         (broker.local_government_owned IS DISTINCT FROM usaspending.local_government_owned),
         (broker.municipality_local_governm IS DISTINCT FROM usaspending.municipality_local_governm),
         (broker.school_district_local_gove IS DISTINCT FROM usaspending.school_district_local_gove),
         (broker.township_local_government IS DISTINCT FROM usaspending.township_local_government),
         (broker.us_state_government IS DISTINCT FROM usaspending.us_state_government),
         (broker.us_federal_government IS DISTINCT FROM usaspending.us_federal_government),
         (broker.federal_agency IS DISTINCT FROM usaspending.federal_agency),
         (broker.federally_funded_research IS DISTINCT FROM usaspending.federally_funded_research),
         (broker.us_tribal_government IS DISTINCT FROM usaspending.us_tribal_government),
         (broker.foreign_government IS DISTINCT FROM usaspending.foreign_government),
         (broker.community_developed_corpor IS DISTINCT FROM usaspending.community_developed_corpor),
         (broker.labor_surplus_area_firm IS DISTINCT FROM usaspending.labor_surplus_area_firm),
         (broker.corporate_entity_not_tax_e IS DISTINCT FROM usaspending.corporate_entity_not_tax_e),
         (broker.corporate_entity_tax_exemp IS DISTINCT FROM usaspending.corporate_entity_tax_exemp),
         (broker.partnership_or_limited_lia IS DISTINCT FROM usaspending.partnership_or_limited_lia),
         (broker.sole_proprietorship IS DISTINCT FROM usaspending.sole_proprietorship),
         (broker.small_agricultural_coopera IS DISTINCT FROM usaspending.small_agricultural_coopera),
         (broker.international_organization IS DISTINCT FROM usaspending.international_organization),
         (broker.us_government_entity IS DISTINCT FROM usaspending.us_government_entity),
         (broker.emerging_small_business IS DISTINCT FROM usaspending.emerging_small_business),
         (broker.c8a_program_participant IS DISTINCT FROM usaspending.c8a_program_participant),
         (broker.sba_certified_8_a_joint_ve IS DISTINCT FROM usaspending.sba_certified_8_a_joint_ve),
         (broker.dot_certified_disadvantage IS DISTINCT FROM usaspending.dot_certified_disadvantage),
         (broker.self_certified_small_disad IS DISTINCT FROM usaspending.self_certified_small_disad),
         (broker.historically_underutilized IS DISTINCT FROM usaspending.historically_underutilized),
         (broker.small_disadvantaged_busine IS DISTINCT FROM usaspending.small_disadvantaged_busine),
         (broker.the_ability_one_program IS DISTINCT FROM usaspending.the_ability_one_program),
         (broker.historically_black_college IS DISTINCT FROM usaspending.historically_black_college),
         (broker.c1862_land_grant_college IS DISTINCT FROM usaspending.c1862_land_grant_college),
         (broker.c1890_land_grant_college IS DISTINCT FROM usaspending.c1890_land_grant_college),
         (broker.c1994_land_grant_college IS DISTINCT FROM usaspending.c1994_land_grant_college),
         (broker.minority_institution IS DISTINCT FROM usaspending.minority_institution),
         (broker.private_university_or_coll IS DISTINCT FROM usaspending.private_university_or_coll),
         (broker.school_of_forestry IS DISTINCT FROM usaspending.school_of_forestry),
         (broker.state_controlled_instituti IS DISTINCT FROM usaspending.state_controlled_instituti),
         (broker.tribal_college IS DISTINCT FROM usaspending.tribal_college),
         (broker.veterinary_college IS DISTINCT FROM usaspending.veterinary_college),
         (broker.educational_institution IS DISTINCT FROM usaspending.educational_institution),
         (broker.alaskan_native_servicing_i IS DISTINCT FROM usaspending.alaskan_native_servicing_i),
         (broker.community_development_corp IS DISTINCT FROM usaspending.community_development_corp),
         (broker.native_hawaiian_servicing IS DISTINCT FROM usaspending.native_hawaiian_servicing),
         (broker.domestic_shelter IS DISTINCT FROM usaspending.domestic_shelter),
         (broker.manufacturer_of_goods IS DISTINCT FROM usaspending.manufacturer_of_goods),
         (broker.hospital_flag IS DISTINCT FROM usaspending.hospital_flag),
         (broker.veterinary_hospital IS DISTINCT FROM usaspending.veterinary_hospital),
         (broker.hispanic_servicing_institu IS DISTINCT FROM usaspending.hispanic_servicing_institu),
         (broker.foundation IS DISTINCT FROM usaspending.foundation),
         (broker.woman_owned_business IS DISTINCT FROM usaspending.woman_owned_business),
         (broker.minority_owned_business IS DISTINCT FROM usaspending.minority_owned_business),
         (broker.women_owned_small_business IS DISTINCT FROM usaspending.women_owned_small_business),
         (broker.economically_disadvantaged IS DISTINCT FROM usaspending.economically_disadvantaged),
         (broker.joint_venture_women_owned IS DISTINCT FROM usaspending.joint_venture_women_owned),
         (broker.joint_venture_economically IS DISTINCT FROM usaspending.joint_venture_economically),
         (broker.veteran_owned_business IS DISTINCT FROM usaspending.veteran_owned_business),
         (broker.service_disabled_veteran_o IS DISTINCT FROM usaspending.service_disabled_veteran_o),
         (broker.contracts IS DISTINCT FROM usaspending.contracts),
         (broker.grants IS DISTINCT FROM usaspending.grants),
         (broker.receives_contracts_and_gra IS DISTINCT FROM usaspending.receives_contracts_and_gra),
         (broker.airport_authority IS DISTINCT FROM usaspending.airport_authority),
         (broker.council_of_governments IS DISTINCT FROM usaspending.council_of_governments),
         (broker.housing_authorities_public IS DISTINCT FROM usaspending.housing_authorities_public),
         (broker.interstate_entity IS DISTINCT FROM usaspending.interstate_entity),
         (broker.planning_commission IS DISTINCT FROM usaspending.planning_commission),
         (broker.port_authority IS DISTINCT FROM usaspending.port_authority),
         (broker.transit_authority IS DISTINCT FROM usaspending.transit_authority),
         (broker.subchapter_s_corporation IS DISTINCT FROM usaspending.subchapter_s_corporation),
         (broker.limited_liability_corporat IS DISTINCT FROM usaspending.limited_liability_corporat),
         (broker.foreign_owned_and_located IS DISTINCT FROM usaspending.foreign_owned_and_located),
         (broker.american_indian_owned_busi IS DISTINCT FROM usaspending.american_indian_owned_busi),
         (broker.alaskan_native_owned_corpo IS DISTINCT FROM usaspending.alaskan_native_owned_corpo),
         (broker.indian_tribe_federally_rec IS DISTINCT FROM usaspending.indian_tribe_federally_rec),
         (broker.native_hawaiian_owned_busi IS DISTINCT FROM usaspending.native_hawaiian_owned_busi),
         (broker.tribally_owned_business IS DISTINCT FROM usaspending.tribally_owned_business),
         (broker.asian_pacific_american_own IS DISTINCT FROM usaspending.asian_pacific_american_own),
         (broker.black_american_owned_busin IS DISTINCT FROM usaspending.black_american_owned_busin),
         (broker.hispanic_american_owned_bu IS DISTINCT FROM usaspending.hispanic_american_owned_bu),
         (broker.native_american_owned_busi IS DISTINCT FROM usaspending.native_american_owned_busi),
         (broker.subcontinent_asian_asian_i IS DISTINCT FROM usaspending.subcontinent_asian_asian_i),
         (broker.other_minority_owned_busin IS DISTINCT FROM usaspending.other_minority_owned_busin),
         (broker.for_profit_organization IS DISTINCT FROM usaspending.for_profit_organization),
         (broker.nonprofit_organization IS DISTINCT FROM usaspending.nonprofit_organization),
         (broker.other_not_for_profit_organ IS DISTINCT FROM usaspending.other_not_for_profit_organ),
         (broker.us_local_government IS DISTINCT FROM usaspending.us_local_government),
         (broker.referenced_idv_modificatio IS DISTINCT FROM usaspending.referenced_idv_modificatio),
         (broker.undefinitized_action IS DISTINCT FROM usaspending.undefinitized_action),
         (broker.undefinitized_action_desc IS DISTINCT FROM usaspending.undefinitized_action_desc),
         (broker.domestic_or_foreign_entity IS DISTINCT FROM usaspending.domestic_or_foreign_entity),
         (broker.domestic_or_foreign_e_desc IS DISTINCT FROM usaspending.domestic_or_foreign_e_desc),
         (broker.pulled_from IS DISTINCT FROM usaspending.pulled_from),
         (broker.last_modified IS DISTINCT FROM usaspending.last_modified),
         (broker.annual_revenue IS DISTINCT FROM usaspending.annual_revenue),
         (broker.division_name IS DISTINCT FROM usaspending.division_name),
         (broker.division_number_or_office IS DISTINCT FROM usaspending.division_number_or_office),
         (broker.number_of_employees IS DISTINCT FROM usaspending.number_of_employees),
         (broker.vendor_alternate_name IS DISTINCT FROM usaspending.vendor_alternate_name),
         (broker.vendor_alternate_site_code IS DISTINCT FROM usaspending.vendor_alternate_site_code),
         (broker.vendor_enabled IS DISTINCT FROM usaspending.vendor_enabled),
         (broker.vendor_legal_org_name IS DISTINCT FROM usaspending.vendor_legal_org_name),
         (broker.vendor_location_disabled_f IS DISTINCT FROM usaspending.vendor_location_disabled_f),
         (broker.vendor_site_code IS DISTINCT FROM usaspending.vendor_site_code),
         (broker.initial_report_date IS DISTINCT FROM usaspending.initial_report_date),
         (broker.base_and_all_options_value IS DISTINCT FROM usaspending.base_and_all_options_value),
         (broker.base_exercised_options_val IS DISTINCT FROM usaspending.base_exercised_options_val),
         (broker.total_obligated_amount IS DISTINCT FROM usaspending.total_obligated_amount),
         (broker.place_of_perform_country_n IS DISTINCT FROM usaspending.place_of_perform_country_n),
         (broker.place_of_perform_state_nam IS DISTINCT FROM usaspending.place_of_perform_state_nam),
         (broker.referenced_idv_agency_name IS DISTINCT FROM usaspending.referenced_idv_agency_name),
         (broker.award_or_idv_flag IS DISTINCT FROM usaspending.award_or_idv_flag),
         (broker.legal_entity_county_code IS DISTINCT FROM usaspending.legal_entity_county_code),
         (broker.legal_entity_county_name IS DISTINCT FROM usaspending.legal_entity_county_name),
         (broker.legal_entity_zip5 IS DISTINCT FROM usaspending.legal_entity_zip5),
         (broker.legal_entity_zip_last4 IS DISTINCT FROM usaspending.legal_entity_zip_last4),
         (broker.place_of_perform_county_co IS DISTINCT FROM usaspending.place_of_perform_county_co),
         (broker.place_of_performance_zip5 IS DISTINCT FROM usaspending.place_of_performance_zip5),
         (broker.place_of_perform_zip_last4 IS DISTINCT FROM usaspending.place_of_perform_zip_last4),
         (broker.cage_code IS DISTINCT FROM usaspending.cage_code),
         (broker.inherently_government_func IS DISTINCT FROM usaspending.inherently_government_func),
         (broker.organizational_type IS DISTINCT FROM usaspending.organizational_type),
         (broker.inherently_government_desc IS DISTINCT FROM usaspending.inherently_government_desc),
         (broker.unique_award_key IS DISTINCT FROM usaspending.unique_award_key),
         (broker.high_comp_officer1_amount IS DISTINCT FROM usaspending.officer_1_amount),
         (broker.high_comp_officer1_full_na IS DISTINCT FROM usaspending.officer_1_name),
         (broker.high_comp_officer2_amount IS DISTINCT FROM usaspending.officer_2_amount),
         (broker.high_comp_officer2_full_na IS DISTINCT FROM usaspending.officer_2_name),
         (broker.high_comp_officer3_amount IS DISTINCT FROM usaspending.officer_3_amount),
         (broker.high_comp_officer3_full_na IS DISTINCT FROM usaspending.officer_3_name),
         (broker.high_comp_officer4_amount IS DISTINCT FROM usaspending.officer_4_amount),
         (broker.high_comp_officer4_full_na IS DISTINCT FROM usaspending.officer_4_name),
         (broker.high_comp_officer5_amount IS DISTINCT FROM usaspending.officer_5_amount),
         (broker.high_comp_officer5_full_na IS DISTINCT FROM usaspending.officer_5_name)
FROM transaction_fpds AS usaspending
INNER JOIN transaction_normalized ON usaspending.transaction_id = transaction_normalized.id
INNER JOIN
(
    SELECT * FROM dblink (
        'broker_server',
        'SELECT
            created_at::TIMESTAMP WITHOUT TIME ZONE,
            updated_at::TIMESTAMP WITHOUT TIME ZONE,
            UPPER(piid) AS piid,
            detached_award_procurement_id,
            UPPER(detached_award_proc_unique) AS detached_award_proc_unique,
            UPPER(agency_id) AS agency_id,
            UPPER(awarding_sub_tier_agency_c) AS awarding_sub_tier_agency_c,
            UPPER(awarding_sub_tier_agency_n) AS awarding_sub_tier_agency_n,
            UPPER(awarding_agency_code) AS awarding_agency_code,
            UPPER(awarding_agency_name) AS awarding_agency_name,
            UPPER(parent_award_id) AS parent_award_id,
            UPPER(award_modification_amendme) AS award_modification_amendme,
            UPPER(type_of_contract_pricing) AS type_of_contract_pricing,
            UPPER(type_of_contract_pric_desc) AS type_of_contract_pric_desc,
            UPPER(contract_award_type) AS contract_award_type,
            UPPER(contract_award_type_desc) AS contract_award_type_desc,
            UPPER(naics) AS naics,
            UPPER(naics_description) AS naics_description,
            UPPER(awardee_or_recipient_uniqu) AS awardee_or_recipient_uniqu,
            UPPER(ultimate_parent_legal_enti) AS ultimate_parent_legal_enti,
            UPPER(ultimate_parent_unique_ide) AS ultimate_parent_unique_ide,
            UPPER(award_description) AS award_description,
            UPPER(REGEXP_REPLACE(place_of_performance_zip4a, E''\s{{2,}}'', '' '')) AS place_of_performance_zip4a,
            UPPER(REGEXP_REPLACE(place_of_perform_city_name, E''\s{{2,}}'', '' '')) AS place_of_perform_city_name,
            UPPER(REGEXP_REPLACE(place_of_perform_county_na, E''\s{{2,}}'', '' '')) AS place_of_perform_county_na,
            UPPER(REGEXP_REPLACE(place_of_performance_congr, E''\s{{2,}}'', '' '')) AS place_of_performance_congr,
            UPPER(awardee_or_recipient_legal) AS awardee_or_recipient_legal,
            UPPER(REGEXP_REPLACE(legal_entity_city_name, E''\s{{2,}}'', '' '')) AS legal_entity_city_name,
            UPPER(REGEXP_REPLACE(legal_entity_state_code, E''\s{{2,}}'', '' '')) AS legal_entity_state_code,
            UPPER(REGEXP_REPLACE(legal_entity_state_descrip, E''\s{{2,}}'', '' '')) AS legal_entity_state_descrip,
            UPPER(REGEXP_REPLACE(legal_entity_zip4, E''\s{{2,}}'', '' '')) AS legal_entity_zip4,
            UPPER(REGEXP_REPLACE(legal_entity_congressional, E''\s{{2,}}'', '' '')) AS legal_entity_congressional,
            UPPER(REGEXP_REPLACE(legal_entity_address_line1, E''\s{{2,}}'', '' '')) AS legal_entity_address_line1,
            UPPER(REGEXP_REPLACE(legal_entity_address_line2, E''\s{{2,}}'', '' '')) AS legal_entity_address_line2,
            UPPER(REGEXP_REPLACE(legal_entity_address_line3, E''\s{{2,}}'', '' '')) AS legal_entity_address_line3,
            UPPER(REGEXP_REPLACE(legal_entity_country_code, E''\s{{2,}}'', '' '')) AS legal_entity_country_code,
            UPPER(REGEXP_REPLACE(legal_entity_country_name, E''\s{{2,}}'', '' '')) AS legal_entity_country_name,
            UPPER(period_of_performance_star) AS period_of_performance_star,
            UPPER(period_of_performance_curr) AS period_of_performance_curr,
            UPPER(period_of_perf_potential_e) AS period_of_perf_potential_e,
            UPPER(ordering_period_end_date) AS ordering_period_end_date,
            UPPER(action_date) AS action_date,
            UPPER(action_type) AS action_type,
            UPPER(action_type_description) AS action_type_description,
            federal_action_obligation::numeric(23,2) AS federal_action_obligation,
            UPPER(current_total_value_award) AS current_total_value_award,
            UPPER(potential_total_value_awar) AS potential_total_value_awar,
            UPPER(funding_sub_tier_agency_co) AS funding_sub_tier_agency_co,
            UPPER(funding_sub_tier_agency_na) AS funding_sub_tier_agency_na,
            UPPER(funding_office_code) AS funding_office_code,
            UPPER(funding_office_name) AS funding_office_name,
            UPPER(awarding_office_code) AS awarding_office_code,
            UPPER(awarding_office_name) AS awarding_office_name,
            UPPER(referenced_idv_agency_iden) AS referenced_idv_agency_iden,
            UPPER(referenced_idv_agency_desc) AS referenced_idv_agency_desc,
            UPPER(funding_agency_code) AS funding_agency_code,
            UPPER(funding_agency_name) AS funding_agency_name,
            UPPER(REGEXP_REPLACE(place_of_performance_locat, E''\s{{2,}}'', '' '')) AS place_of_performance_locat,
            UPPER(REGEXP_REPLACE(place_of_performance_state, E''\s{{2,}}'', '' '')) AS place_of_performance_state,
            UPPER(REGEXP_REPLACE(place_of_perfor_state_desc, E''\s{{2,}}'', '' '')) AS place_of_perfor_state_desc,
            UPPER(REGEXP_REPLACE(place_of_perform_country_c, E''\s{{2,}}'', '' '')) AS place_of_perform_country_c,
            UPPER(REGEXP_REPLACE(place_of_perf_country_desc, E''\s{{2,}}'', '' '')) AS place_of_perf_country_desc,
            UPPER(idv_type) AS idv_type,
            UPPER(idv_type_description) AS idv_type_description,
            UPPER(referenced_idv_type) AS referenced_idv_type,
            UPPER(referenced_idv_type_desc) AS referenced_idv_type_desc,
            UPPER(vendor_doing_as_business_n) AS vendor_doing_as_business_n,
            UPPER(vendor_phone_number) AS vendor_phone_number,
            UPPER(vendor_fax_number) AS vendor_fax_number,
            UPPER(multiple_or_single_award_i) AS multiple_or_single_award_i,
            UPPER(multiple_or_single_aw_desc) AS multiple_or_single_aw_desc,
            UPPER(referenced_mult_or_single) AS referenced_mult_or_single,
            UPPER(referenced_mult_or_si_desc) AS referenced_mult_or_si_desc,
            UPPER(type_of_idc) AS type_of_idc,
            UPPER(type_of_idc_description) AS type_of_idc_description,
            UPPER(a_76_fair_act_action) AS a_76_fair_act_action,
            UPPER(a_76_fair_act_action_desc) AS a_76_fair_act_action_desc,
            UPPER(dod_claimant_program_code) AS dod_claimant_program_code,
            UPPER(dod_claimant_prog_cod_desc) AS dod_claimant_prog_cod_desc,
            UPPER(clinger_cohen_act_planning) AS clinger_cohen_act_planning,
            UPPER(clinger_cohen_act_pla_desc) AS clinger_cohen_act_pla_desc,
            UPPER(commercial_item_acquisitio) AS commercial_item_acquisitio,
            UPPER(commercial_item_acqui_desc) AS commercial_item_acqui_desc,
            UPPER(commercial_item_test_progr) AS commercial_item_test_progr,
            UPPER(commercial_item_test_desc) AS commercial_item_test_desc,
            UPPER(consolidated_contract) AS consolidated_contract,
            UPPER(consolidated_contract_desc) AS consolidated_contract_desc,
            UPPER(contingency_humanitarian_o) AS contingency_humanitarian_o,
            UPPER(contingency_humanitar_desc) AS contingency_humanitar_desc,
            UPPER(contract_bundling) AS contract_bundling,
            UPPER(contract_bundling_descrip) AS contract_bundling_descrip,
            UPPER(contract_financing) AS contract_financing,
            UPPER(contract_financing_descrip) AS contract_financing_descrip,
            UPPER(contracting_officers_deter) AS contracting_officers_deter,
            UPPER(contracting_officers_desc) AS contracting_officers_desc,
            UPPER(cost_accounting_standards) AS cost_accounting_standards,
            UPPER(cost_accounting_stand_desc) AS cost_accounting_stand_desc,
            UPPER(cost_or_pricing_data) AS cost_or_pricing_data,
            UPPER(cost_or_pricing_data_desc) AS cost_or_pricing_data_desc,
            UPPER(country_of_product_or_serv) AS country_of_product_or_serv,
            UPPER(country_of_product_or_desc) AS country_of_product_or_desc,
            UPPER(construction_wage_rate_req) AS construction_wage_rate_req,
            UPPER(construction_wage_rat_desc) AS construction_wage_rat_desc,
            UPPER(evaluated_preference) AS evaluated_preference,
            UPPER(evaluated_preference_desc) AS evaluated_preference_desc,
            UPPER(extent_competed) AS extent_competed,
            UPPER(extent_compete_description) AS extent_compete_description,
            UPPER(fed_biz_opps) AS fed_biz_opps,
            UPPER(fed_biz_opps_description) AS fed_biz_opps_description,
            UPPER(foreign_funding) AS foreign_funding,
            UPPER(foreign_funding_desc) AS foreign_funding_desc,
            UPPER(government_furnished_prope) AS government_furnished_prope,
            UPPER(government_furnished_desc) AS government_furnished_desc,
            UPPER(information_technology_com) AS information_technology_com,
            UPPER(information_technolog_desc) AS information_technolog_desc,
            UPPER(interagency_contracting_au) AS interagency_contracting_au,
            UPPER(interagency_contract_desc) AS interagency_contract_desc,
            UPPER(local_area_set_aside) AS local_area_set_aside,
            UPPER(local_area_set_aside_desc) AS local_area_set_aside_desc,
            UPPER(major_program) AS major_program,
            UPPER(purchase_card_as_payment_m) AS purchase_card_as_payment_m,
            UPPER(purchase_card_as_paym_desc) AS purchase_card_as_paym_desc,
            UPPER(multi_year_contract) AS multi_year_contract,
            UPPER(multi_year_contract_desc) AS multi_year_contract_desc,
            UPPER(national_interest_action) AS national_interest_action,
            UPPER(national_interest_desc) AS national_interest_desc,
            UPPER(number_of_actions) AS number_of_actions,
            UPPER(number_of_offers_received) AS number_of_offers_received,
            UPPER(other_statutory_authority) AS other_statutory_authority,
            UPPER(performance_based_service) AS performance_based_service,
            UPPER(performance_based_se_desc) AS performance_based_se_desc,
            UPPER(place_of_manufacture) AS place_of_manufacture,
            UPPER(place_of_manufacture_desc) AS place_of_manufacture_desc,
            UPPER(price_evaluation_adjustmen) AS price_evaluation_adjustmen,
            UPPER(product_or_service_code) AS product_or_service_code,
            UPPER(product_or_service_co_desc) AS product_or_service_co_desc,
            UPPER(program_acronym) AS program_acronym,
            UPPER(other_than_full_and_open_c) AS other_than_full_and_open_c,
            UPPER(other_than_full_and_o_desc) AS other_than_full_and_o_desc,
            UPPER(recovered_materials_sustai) AS recovered_materials_sustai,
            UPPER(recovered_materials_s_desc) AS recovered_materials_s_desc,
            UPPER(research) AS research,
            UPPER(research_description) AS research_description,
            UPPER(sea_transportation) AS sea_transportation,
            UPPER(sea_transportation_desc) AS sea_transportation_desc,
            UPPER(labor_standards) AS labor_standards,
            UPPER(labor_standards_descrip) AS labor_standards_descrip,
            COALESCE(small_business_competitive::boolean, False) AS small_business_competitive,
            UPPER(solicitation_identifier) AS solicitation_identifier,
            UPPER(solicitation_procedures) AS solicitation_procedures,
            UPPER(solicitation_procedur_desc) AS solicitation_procedur_desc,
            UPPER(fair_opportunity_limited_s) AS fair_opportunity_limited_s,
            UPPER(fair_opportunity_limi_desc) AS fair_opportunity_limi_desc,
            UPPER(subcontracting_plan) AS subcontracting_plan,
            UPPER(subcontracting_plan_desc) AS subcontracting_plan_desc,
            UPPER(program_system_or_equipmen) AS program_system_or_equipmen,
            UPPER(program_system_or_equ_desc) AS program_system_or_equ_desc,
            UPPER(type_set_aside) AS type_set_aside,
            UPPER(type_set_aside_description) AS type_set_aside_description,
            UPPER(epa_designated_product) AS epa_designated_product,
            UPPER(epa_designated_produc_desc) AS epa_designated_produc_desc,
            UPPER(materials_supplies_article) AS materials_supplies_article,
            UPPER(materials_supplies_descrip) AS materials_supplies_descrip,
            UPPER(transaction_number) AS transaction_number,
            UPPER(sam_exception) AS sam_exception,
            UPPER(sam_exception_description) AS sam_exception_description,
            COALESCE(city_local_government::boolean, False) AS city_local_government,
            COALESCE(county_local_government::boolean, False) AS county_local_government,
            COALESCE(inter_municipal_local_gove::boolean, False) AS inter_municipal_local_gove,
            COALESCE(local_government_owned::boolean, False) AS local_government_owned,
            COALESCE(municipality_local_governm::boolean, False) AS municipality_local_governm,
            COALESCE(school_district_local_gove::boolean, False) AS school_district_local_gove,
            COALESCE(township_local_government::boolean, False) AS township_local_government,
            COALESCE(us_state_government::boolean, False) AS us_state_government,
            COALESCE(us_federal_government::boolean, False) AS us_federal_government,
            COALESCE(federal_agency::boolean, False) AS federal_agency,
            COALESCE(federally_funded_research::boolean, False) AS federally_funded_research,
            COALESCE(us_tribal_government::boolean, False) AS us_tribal_government,
            COALESCE(foreign_government::boolean, False) AS foreign_government,
            COALESCE(community_developed_corpor::boolean, False) AS community_developed_corpor,
            COALESCE(labor_surplus_area_firm::boolean, False) AS labor_surplus_area_firm,
            COALESCE(corporate_entity_not_tax_e::boolean, False) AS corporate_entity_not_tax_e,
            COALESCE(corporate_entity_tax_exemp::boolean, False) AS corporate_entity_tax_exemp,
            COALESCE(partnership_or_limited_lia::boolean, False) AS partnership_or_limited_lia,
            COALESCE(sole_proprietorship::boolean, False) AS sole_proprietorship,
            COALESCE(small_agricultural_coopera::boolean, False) AS small_agricultural_coopera,
            COALESCE(international_organization::boolean, False) AS international_organization,
            COALESCE(us_government_entity::boolean, False) AS us_government_entity,
            COALESCE(emerging_small_business::boolean, False) AS emerging_small_business,
            COALESCE(c8a_program_participant::boolean, False) AS c8a_program_participant,
            COALESCE(sba_certified_8_a_joint_ve::boolean, False) AS sba_certified_8_a_joint_ve,
            COALESCE(dot_certified_disadvantage::boolean, False) AS dot_certified_disadvantage,
            COALESCE(self_certified_small_disad::boolean, False) AS self_certified_small_disad,
            COALESCE(historically_underutilized::boolean, False) AS historically_underutilized,
            COALESCE(small_disadvantaged_busine::boolean, False) AS small_disadvantaged_busine,
            COALESCE(the_ability_one_program::boolean, False) AS the_ability_one_program,
            COALESCE(historically_black_college::boolean, False) AS historically_black_college,
            COALESCE(c1862_land_grant_college::boolean, False) AS c1862_land_grant_college,
            COALESCE(c1890_land_grant_college::boolean, False) AS c1890_land_grant_college,
            COALESCE(c1994_land_grant_college::boolean, False) AS c1994_land_grant_college,
            COALESCE(minority_institution::boolean, False) AS minority_institution,
            COALESCE(private_university_or_coll::boolean, False) AS private_university_or_coll,
            COALESCE(school_of_forestry::boolean, False) AS school_of_forestry,
            COALESCE(state_controlled_instituti::boolean, False) AS state_controlled_instituti,
            COALESCE(tribal_college::boolean, False) AS tribal_college,
            COALESCE(veterinary_college::boolean, False) AS veterinary_college,
            COALESCE(educational_institution::boolean, False) AS educational_institution,
            COALESCE(alaskan_native_servicing_i::boolean, False) AS alaskan_native_servicing_i,
            COALESCE(community_development_corp::boolean, False) AS community_development_corp,
            COALESCE(native_hawaiian_servicing::boolean, False) AS native_hawaiian_servicing,
            COALESCE(domestic_shelter::boolean, False) AS domestic_shelter,
            COALESCE(manufacturer_of_goods::boolean, False) AS manufacturer_of_goods,
            COALESCE(hospital_flag::boolean, False) AS hospital_flag,
            COALESCE(veterinary_hospital::boolean, False) AS veterinary_hospital,
            COALESCE(hispanic_servicing_institu::boolean, False) AS hispanic_servicing_institu,
            COALESCE(foundation::boolean, False) AS foundation,
            COALESCE(woman_owned_business::boolean, False) AS woman_owned_business,
            COALESCE(minority_owned_business::boolean, False) AS minority_owned_business,
            COALESCE(women_owned_small_business::boolean, False) AS women_owned_small_business,
            COALESCE(economically_disadvantaged::boolean, False) AS economically_disadvantaged,
            COALESCE(joint_venture_women_owned::boolean, False) AS joint_venture_women_owned,
            COALESCE(joint_venture_economically::boolean, False) AS joint_venture_economically,
            COALESCE(veteran_owned_business::boolean, False) AS veteran_owned_business,
            COALESCE(service_disabled_veteran_o::boolean, False) AS service_disabled_veteran_o,
            COALESCE(contracts::boolean, False) AS contracts,
            COALESCE(grants::boolean, False) AS grants,
            COALESCE(receives_contracts_and_gra::boolean, False) AS receives_contracts_and_gra,
            COALESCE(airport_authority::boolean, False) AS airport_authority,
            COALESCE(council_of_governments::boolean, False) AS council_of_governments,
            COALESCE(housing_authorities_public::boolean, False) AS housing_authorities_public,
            COALESCE(interstate_entity::boolean, False) AS interstate_entity,
            COALESCE(planning_commission::boolean, False) AS planning_commission,
            COALESCE(port_authority::boolean, False) AS port_authority,
            COALESCE(transit_authority::boolean, False) AS transit_authority,
            COALESCE(subchapter_s_corporation::boolean, False) AS subchapter_s_corporation,
            COALESCE(limited_liability_corporat::boolean, False) AS limited_liability_corporat,
            COALESCE(foreign_owned_and_located::boolean, False) AS foreign_owned_and_located,
            COALESCE(american_indian_owned_busi::boolean, False) AS american_indian_owned_busi,
            COALESCE(alaskan_native_owned_corpo::boolean, False) AS alaskan_native_owned_corpo,
            COALESCE(indian_tribe_federally_rec::boolean, False) AS indian_tribe_federally_rec,
            COALESCE(native_hawaiian_owned_busi::boolean, False) AS native_hawaiian_owned_busi,
            COALESCE(tribally_owned_business::boolean, False) AS tribally_owned_business,
            COALESCE(asian_pacific_american_own::boolean, False) AS asian_pacific_american_own,
            COALESCE(black_american_owned_busin::boolean, False) AS black_american_owned_busin,
            COALESCE(hispanic_american_owned_bu::boolean, False) AS hispanic_american_owned_bu,
            COALESCE(native_american_owned_busi::boolean, False) AS native_american_owned_busi,
            COALESCE(subcontinent_asian_asian_i::boolean, False) AS subcontinent_asian_asian_i,
            COALESCE(other_minority_owned_busin::boolean, False) AS other_minority_owned_busin,
            COALESCE(for_profit_organization::boolean, False) AS for_profit_organization,
            COALESCE(nonprofit_organization::boolean, False) AS nonprofit_organization,
            COALESCE(other_not_for_profit_organ::boolean, False) AS other_not_for_profit_organ,
            COALESCE(us_local_government::boolean, False) AS us_local_government,
            referenced_idv_modificatio AS referenced_idv_modificatio,
            UPPER(undefinitized_action) AS undefinitized_action,
            UPPER(undefinitized_action_desc) AS undefinitized_action_desc,
            UPPER(domestic_or_foreign_entity) AS domestic_or_foreign_entity,
            UPPER(domestic_or_foreign_e_desc) AS domestic_or_foreign_e_desc,
            UPPER(pulled_from) AS pulled_from,
            UPPER(last_modified) AS last_modified,
            UPPER(annual_revenue) AS annual_revenue,
            UPPER(division_name) AS division_name,
            UPPER(division_number_or_office) AS division_number_or_office,
            UPPER(number_of_employees) AS number_of_employees,
            UPPER(vendor_alternate_name) AS vendor_alternate_name,
            UPPER(vendor_alternate_site_code) AS vendor_alternate_site_code,
            UPPER(vendor_enabled) AS vendor_enabled,
            UPPER(vendor_legal_org_name) AS vendor_legal_org_name,
            UPPER(vendor_location_disabled_f) AS vendor_location_disabled_f,
            UPPER(vendor_site_code) AS vendor_site_code,
            UPPER(initial_report_date) AS initial_report_date,
            UPPER(base_and_all_options_value) AS base_and_all_options_value,
            UPPER(base_exercised_options_val) AS base_exercised_options_val,
            UPPER(total_obligated_amount) AS total_obligated_amount,
            UPPER(place_of_perform_country_n) AS place_of_perform_country_n,
            UPPER(place_of_perform_state_nam) AS place_of_perform_state_nam,
            UPPER(referenced_idv_agency_name) AS referenced_idv_agency_name,
            UPPER(award_or_idv_flag) AS award_or_idv_flag,
            UPPER(REGEXP_REPLACE(legal_entity_county_code, E''\s{{2,}}'', '' '')) AS legal_entity_county_code,
            UPPER(REGEXP_REPLACE(legal_entity_county_name, E''\s{{2,}}'', '' '')) AS legal_entity_county_name,
            UPPER(REGEXP_REPLACE(legal_entity_zip5, E''\s{{2,}}'', '' '')) AS legal_entity_zip5,
            UPPER(REGEXP_REPLACE(legal_entity_zip_last4, E''\s{{2,}}'', '' '')) AS legal_entity_zip_last4,
            UPPER(REGEXP_REPLACE(place_of_perform_county_co, E''\s{{2,}}'', '' '')) AS place_of_perform_county_co,
            UPPER(REGEXP_REPLACE(place_of_performance_zip5, E''\s{{2,}}'', '' '')) AS place_of_performance_zip5,
            UPPER(REGEXP_REPLACE(place_of_perform_zip_last4, E''\s{{2,}}'', '' '')) AS place_of_perform_zip_last4,
            UPPER(cage_code) AS cage_code,
            UPPER(inherently_government_func) AS inherently_government_func,
            UPPER(organizational_type) AS organizational_type,
            UPPER(inherently_government_desc) AS inherently_government_desc,
            UPPER(unique_award_key) AS unique_award_key,
            UPPER(additional_reporting) AS additional_reporting,
            high_comp_officer1_amount::numeric(23,2),
            UPPER(high_comp_officer1_full_na) AS high_comp_officer1_full_na,
            high_comp_officer2_amount::numeric(23,2),
            UPPER(high_comp_officer2_full_na) AS high_comp_officer2_full_na,
            high_comp_officer3_amount::numeric(23,2),
            UPPER(high_comp_officer3_full_na) AS high_comp_officer3_full_na,
            high_comp_officer4_amount::numeric(23,2),
            UPPER(high_comp_officer4_full_na) AS high_comp_officer4_full_na,
            high_comp_officer5_amount::numeric(23,2),
            UPPER(high_comp_officer5_full_na) AS high_comp_officer5_full_na
        FROM detached_award_procurement
        WHERE detached_award_procurement_id BETWEEN {minid} AND {maxid}'
    ) AS broker (
        created_at TIMESTAMP WITHOUT time ZONE,
        updated_at TIMESTAMP WITHOUT time ZONE,
        piid text,
        detached_award_procurement_id int,
        detached_award_proc_unique text,
        agency_id text,
        awarding_sub_tier_agency_c text,
        awarding_sub_tier_agency_n text,
        awarding_agency_code text,
        awarding_agency_name text,
        parent_award_id text,
        award_modification_amendme text,
        type_of_contract_pricing text,
        type_of_contract_pric_desc text,
        contract_award_type text,
        contract_award_type_desc text,
        naics text,
        naics_description text,
        awardee_or_recipient_uniqu text,
        ultimate_parent_legal_enti text,
        ultimate_parent_unique_ide text,
        award_description text,
        place_of_performance_zip4a text,
        place_of_perform_city_name text,
        place_of_perform_county_na text,
        place_of_performance_congr text,
        awardee_or_recipient_legal text,
        legal_entity_city_name text,
        legal_entity_state_code text,
        legal_entity_state_descrip text,
        legal_entity_zip4 text,
        legal_entity_congressional text,
        legal_entity_address_line1 text,
        legal_entity_address_line2 text,
        legal_entity_address_line3 text,
        legal_entity_country_code text,
        legal_entity_country_name text,
        period_of_performance_star text,
        period_of_performance_curr text,
        period_of_perf_potential_e text,
        ordering_period_end_date text,
        action_date text,
        action_type text,
        action_type_description text,
        federal_action_obligation numeric(23,2),
        current_total_value_award text,
        potential_total_value_awar text,
        funding_sub_tier_agency_co text,
        funding_sub_tier_agency_na text,
        funding_office_code text,
        funding_office_name text,
        awarding_office_code text,
        awarding_office_name text,
        referenced_idv_agency_iden text,
        referenced_idv_agency_desc text,
        funding_agency_code text,
        funding_agency_name text,
        place_of_performance_locat text,
        place_of_performance_state text,
        place_of_perfor_state_desc text,
        place_of_perform_country_c text,
        place_of_perf_country_desc text,
        idv_type text,
        idv_type_description text,
        referenced_idv_type text,
        referenced_idv_type_desc text,
        vendor_doing_as_business_n text,
        vendor_phone_number text,
        vendor_fax_number text,
        multiple_or_single_award_i text,
        multiple_or_single_aw_desc text,
        referenced_mult_or_single text,
        referenced_mult_or_si_desc text,
        type_of_idc text,
        type_of_idc_description text,
        a_76_fair_act_action text,
        a_76_fair_act_action_desc text,
        dod_claimant_program_code text,
        dod_claimant_prog_cod_desc text,
        clinger_cohen_act_planning text,
        clinger_cohen_act_pla_desc text,
        commercial_item_acquisitio text,
        commercial_item_acqui_desc text,
        commercial_item_test_progr text,
        commercial_item_test_desc text,
        consolidated_contract text,
        consolidated_contract_desc text,
        contingency_humanitarian_o text,
        contingency_humanitar_desc text,
        contract_bundling text,
        contract_bundling_descrip text,
        contract_financing text,
        contract_financing_descrip text,
        contracting_officers_deter text,
        contracting_officers_desc text,
        cost_accounting_standards text,
        cost_accounting_stand_desc text,
        cost_or_pricing_data text,
        cost_or_pricing_data_desc text,
        country_of_product_or_serv text,
        country_of_product_or_desc text,
        construction_wage_rate_req text,
        construction_wage_rat_desc text,
        evaluated_preference text,
        evaluated_preference_desc text,
        extent_competed text,
        extent_compete_description text,
        fed_biz_opps text,
        fed_biz_opps_description text,
        foreign_funding text,
        foreign_funding_desc text,
        government_furnished_prope text,
        government_furnished_desc text,
        information_technology_com text,
        information_technolog_desc text,
        interagency_contracting_au text,
        interagency_contract_desc text,
        local_area_set_aside text,
        local_area_set_aside_desc text,
        major_program text,
        purchase_card_as_payment_m text,
        purchase_card_as_paym_desc text,
        multi_year_contract text,
        multi_year_contract_desc text,
        national_interest_action text,
        national_interest_desc text,
        number_of_actions text,
        number_of_offers_received text,
        other_statutory_authority text,
        performance_based_service text,
        performance_based_se_desc text,
        place_of_manufacture text,
        place_of_manufacture_desc text,
        price_evaluation_adjustmen text,
        product_or_service_code text,
        product_or_service_co_desc text,
        program_acronym text,
        other_than_full_and_open_c text,
        other_than_full_and_o_desc text,
        recovered_materials_sustai text,
        recovered_materials_s_desc text,
        research text,
        research_description text,
        sea_transportation text,
        sea_transportation_desc text,
        labor_standards text,
        labor_standards_descrip text,
        small_business_competitive boolean,
        solicitation_identifier text,
        solicitation_procedures text,
        solicitation_procedur_desc text,
        fair_opportunity_limited_s text,
        fair_opportunity_limi_desc text,
        subcontracting_plan text,
        subcontracting_plan_desc text,
        program_system_or_equipmen text,
        program_system_or_equ_desc text,
        type_set_aside text,
        type_set_aside_description text,
        epa_designated_product text,
        epa_designated_produc_desc text,
        materials_supplies_article text,
        materials_supplies_descrip text,
        transaction_number text,
        sam_exception text,
        sam_exception_description text,
        city_local_government boolean,
        county_local_government boolean,
        inter_municipal_local_gove boolean,
        local_government_owned boolean,
        municipality_local_governm boolean,
        school_district_local_gove boolean,
        township_local_government boolean,
        us_state_government boolean,
        us_federal_government boolean,
        federal_agency boolean,
        federally_funded_research boolean,
        us_tribal_government boolean,
        foreign_government boolean,
        community_developed_corpor boolean,
        labor_surplus_area_firm boolean,
        corporate_entity_not_tax_e boolean,
        corporate_entity_tax_exemp boolean,
        partnership_or_limited_lia boolean,
        sole_proprietorship boolean,
        small_agricultural_coopera boolean,
        international_organization boolean,
        us_government_entity boolean,
        emerging_small_business boolean,
        c8a_program_participant boolean,
        sba_certified_8_a_joint_ve boolean,
        dot_certified_disadvantage boolean,
        self_certified_small_disad boolean,
        historically_underutilized boolean,
        small_disadvantaged_busine boolean,
        the_ability_one_program boolean,
        historically_black_college boolean,
        c1862_land_grant_college boolean,
        c1890_land_grant_college boolean,
        c1994_land_grant_college boolean,
        minority_institution boolean,
        private_university_or_coll boolean,
        school_of_forestry boolean,
        state_controlled_instituti boolean,
        tribal_college boolean,
        veterinary_college boolean,
        educational_institution boolean,
        alaskan_native_servicing_i boolean,
        community_development_corp boolean,
        native_hawaiian_servicing boolean,
        domestic_shelter boolean,
        manufacturer_of_goods boolean,
        hospital_flag boolean,
        veterinary_hospital boolean,
        hispanic_servicing_institu boolean,
        foundation boolean,
        woman_owned_business boolean,
        minority_owned_business boolean,
        women_owned_small_business boolean,
        economically_disadvantaged boolean,
        joint_venture_women_owned boolean,
        joint_venture_economically boolean,
        veteran_owned_business boolean,
        service_disabled_veteran_o boolean,
        contracts boolean,
        grants boolean,
        receives_contracts_and_gra boolean,
        airport_authority boolean,
        council_of_governments boolean,
        housing_authorities_public boolean,
        interstate_entity boolean,
        planning_commission boolean,
        port_authority boolean,
        transit_authority boolean,
        subchapter_s_corporation boolean,
        limited_liability_corporat boolean,
        foreign_owned_and_located boolean,
        american_indian_owned_busi boolean,
        alaskan_native_owned_corpo boolean,
        indian_tribe_federally_rec boolean,
        native_hawaiian_owned_busi boolean,
        tribally_owned_business boolean,
        asian_pacific_american_own boolean,
        black_american_owned_busin boolean,
        hispanic_american_owned_bu boolean,
        native_american_owned_busi boolean,
        subcontinent_asian_asian_i boolean,
        other_minority_owned_busin boolean,
        for_profit_organization boolean,
        nonprofit_organization boolean,
        other_not_for_profit_organ boolean,
        us_local_government boolean,
        referenced_idv_modificatio text,
        undefinitized_action text,
        undefinitized_action_desc text,
        domestic_or_foreign_entity text,
        domestic_or_foreign_e_desc text,
        pulled_from text,
        last_modified text,
        annual_revenue text,
        division_name text,
        division_number_or_office text,
        number_of_employees text,
        vendor_alternate_name text,
        vendor_alternate_site_code text,
        vendor_enabled text,
        vendor_legal_org_name text,
        vendor_location_disabled_f text,
        vendor_site_code text,
        initial_report_date text,
        base_and_all_options_value text,
        base_exercised_options_val text,
        total_obligated_amount text,
        place_of_perform_country_n text,
        place_of_perform_state_nam text,
        referenced_idv_agency_name text,
        award_or_idv_flag text,
        legal_entity_county_code text,
        legal_entity_county_name text,
        legal_entity_zip5 text,
        legal_entity_zip_last4 text,
        place_of_perform_county_co text,
        place_of_performance_zip5 text,
        place_of_perform_zip_last4 text,
        cage_code text,
        inherently_government_func text,
        organizational_type text,
        inherently_government_desc text,
        unique_award_key text,
        additional_reporting text,
        high_comp_officer1_amount numeric(23,2),
        high_comp_officer1_full_na text,
        high_comp_officer2_amount numeric(23,2),
        high_comp_officer2_full_na text,
        high_comp_officer3_amount numeric(23,2),
        high_comp_officer3_full_na text,
        high_comp_officer4_amount numeric(23,2),
        high_comp_officer4_full_na text,
        high_comp_officer5_amount numeric(23,2),
        high_comp_officer5_full_na text
    )
) AS broker ON (
    (broker.detached_award_procurement_id = usaspending.detached_award_procurement_id)
    AND (
        (broker.created_at IS DISTINCT FROM usaspending.created_at::TIMESTAMP WITHOUT TIME ZONE)
        OR (broker.updated_at IS DISTINCT FROM usaspending.updated_at::TIMESTAMP WITHOUT TIME ZONE)
        OR (broker.piid IS DISTINCT FROM usaspending.piid)
        OR (broker.detached_award_proc_unique IS DISTINCT FROM usaspending.detached_award_proc_unique)
        OR (broker.agency_id IS DISTINCT FROM usaspending.agency_id)
        OR (broker.awarding_sub_tier_agency_c IS DISTINCT FROM usaspending.awarding_sub_tier_agency_c)
        OR (broker.awarding_sub_tier_agency_n IS DISTINCT FROM usaspending.awarding_sub_tier_agency_n)
        OR (broker.awarding_agency_code IS DISTINCT FROM usaspending.awarding_agency_code)
        OR (broker.awarding_agency_name IS DISTINCT FROM usaspending.awarding_agency_name)
        OR (broker.parent_award_id IS DISTINCT FROM usaspending.parent_award_id)
        OR (broker.award_modification_amendme IS DISTINCT FROM usaspending.award_modification_amendme)
        OR (broker.type_of_contract_pricing IS DISTINCT FROM usaspending.type_of_contract_pricing)
        OR (broker.type_of_contract_pric_desc IS DISTINCT FROM usaspending.type_of_contract_pric_desc)
        OR (broker.contract_award_type IS DISTINCT FROM usaspending.contract_award_type)
        OR (broker.contract_award_type_desc IS DISTINCT FROM usaspending.contract_award_type_desc)
        OR (broker.naics IS DISTINCT FROM usaspending.naics)
        OR (broker.naics_description IS DISTINCT FROM usaspending.naics_description)
        OR (broker.awardee_or_recipient_uniqu IS DISTINCT FROM usaspending.awardee_or_recipient_uniqu)
        OR (broker.ultimate_parent_legal_enti IS DISTINCT FROM usaspending.ultimate_parent_legal_enti)
        OR (broker.ultimate_parent_unique_ide IS DISTINCT FROM usaspending.ultimate_parent_unique_ide)
        OR (broker.award_description IS DISTINCT FROM usaspending.award_description)
        OR (broker.place_of_performance_zip4a IS DISTINCT FROM usaspending.place_of_performance_zip4a)
        OR (broker.place_of_perform_city_name IS DISTINCT FROM usaspending.place_of_perform_city_name)
        OR (broker.place_of_perform_county_na IS DISTINCT FROM usaspending.place_of_perform_county_na)
        OR (broker.place_of_performance_congr IS DISTINCT FROM usaspending.place_of_performance_congr)
        OR (broker.awardee_or_recipient_legal IS DISTINCT FROM usaspending.awardee_or_recipient_legal)
        OR (broker.legal_entity_city_name IS DISTINCT FROM usaspending.legal_entity_city_name)
        OR (broker.legal_entity_state_code IS DISTINCT FROM usaspending.legal_entity_state_code)
        OR (broker.legal_entity_state_descrip IS DISTINCT FROM usaspending.legal_entity_state_descrip)
        OR (broker.legal_entity_zip4 IS DISTINCT FROM usaspending.legal_entity_zip4)
        OR (broker.legal_entity_congressional IS DISTINCT FROM usaspending.legal_entity_congressional)
        OR (broker.legal_entity_address_line1 IS DISTINCT FROM usaspending.legal_entity_address_line1)
        OR (broker.legal_entity_address_line2 IS DISTINCT FROM usaspending.legal_entity_address_line2)
        OR (broker.legal_entity_address_line3 IS DISTINCT FROM usaspending.legal_entity_address_line3)
        OR (broker.legal_entity_country_code IS DISTINCT FROM usaspending.legal_entity_country_code)
        OR (broker.legal_entity_country_name IS DISTINCT FROM usaspending.legal_entity_country_name)
        OR (broker.period_of_performance_star IS DISTINCT FROM usaspending.period_of_performance_star)
        OR (broker.period_of_performance_curr IS DISTINCT FROM usaspending.period_of_performance_curr)
        OR (broker.period_of_perf_potential_e IS DISTINCT FROM usaspending.period_of_perf_potential_e)
        OR (broker.ordering_period_end_date IS DISTINCT FROM usaspending.ordering_period_end_date)
        OR (broker.action_date IS DISTINCT FROM usaspending.action_date)
        OR (broker.action_type IS DISTINCT FROM usaspending.action_type)
        OR (broker.action_type_description IS DISTINCT FROM usaspending.action_type_description)
        OR (broker.federal_action_obligation IS DISTINCT FROM usaspending.federal_action_obligation)
        OR (broker.current_total_value_award IS DISTINCT FROM usaspending.current_total_value_award)
        OR (broker.potential_total_value_awar IS DISTINCT FROM usaspending.potential_total_value_awar)
        OR (broker.funding_sub_tier_agency_co IS DISTINCT FROM usaspending.funding_sub_tier_agency_co)
        OR (broker.funding_sub_tier_agency_na IS DISTINCT FROM usaspending.funding_sub_tier_agency_na)
        OR (broker.funding_office_code IS DISTINCT FROM usaspending.funding_office_code)
        OR (broker.funding_office_name IS DISTINCT FROM usaspending.funding_office_name)
        OR (broker.awarding_office_code IS DISTINCT FROM usaspending.awarding_office_code)
        OR (broker.awarding_office_name IS DISTINCT FROM usaspending.awarding_office_name)
        OR (broker.referenced_idv_agency_iden IS DISTINCT FROM usaspending.referenced_idv_agency_iden)
        OR (broker.referenced_idv_agency_desc IS DISTINCT FROM usaspending.referenced_idv_agency_desc)
        OR (broker.funding_agency_code IS DISTINCT FROM usaspending.funding_agency_code)
        OR (broker.funding_agency_name IS DISTINCT FROM usaspending.funding_agency_name)
        OR (broker.place_of_performance_locat IS DISTINCT FROM usaspending.place_of_performance_locat)
        OR (broker.place_of_performance_state IS DISTINCT FROM usaspending.place_of_performance_state)
        OR (broker.place_of_perfor_state_desc IS DISTINCT FROM usaspending.place_of_perfor_state_desc)
        OR (broker.place_of_perform_country_c IS DISTINCT FROM usaspending.place_of_perform_country_c)
        OR (broker.place_of_perf_country_desc IS DISTINCT FROM usaspending.place_of_perf_country_desc)
        OR (broker.idv_type IS DISTINCT FROM usaspending.idv_type)
        OR (broker.idv_type_description IS DISTINCT FROM usaspending.idv_type_description)
        OR (broker.referenced_idv_type IS DISTINCT FROM usaspending.referenced_idv_type)
        OR (broker.referenced_idv_type_desc IS DISTINCT FROM usaspending.referenced_idv_type_desc)
        OR (broker.vendor_doing_as_business_n IS DISTINCT FROM usaspending.vendor_doing_as_business_n)
        OR (broker.vendor_phone_number IS DISTINCT FROM usaspending.vendor_phone_number)
        OR (broker.vendor_fax_number IS DISTINCT FROM usaspending.vendor_fax_number)
        OR (broker.multiple_or_single_award_i IS DISTINCT FROM usaspending.multiple_or_single_award_i)
        OR (broker.multiple_or_single_aw_desc IS DISTINCT FROM usaspending.multiple_or_single_aw_desc)
        OR (broker.referenced_mult_or_single IS DISTINCT FROM usaspending.referenced_mult_or_single)
        OR (broker.referenced_mult_or_si_desc IS DISTINCT FROM usaspending.referenced_mult_or_si_desc)
        OR (broker.type_of_idc IS DISTINCT FROM usaspending.type_of_idc)
        OR (broker.type_of_idc_description IS DISTINCT FROM usaspending.type_of_idc_description)
        OR (broker.a_76_fair_act_action IS DISTINCT FROM usaspending.a_76_fair_act_action)
        OR (broker.a_76_fair_act_action_desc IS DISTINCT FROM usaspending.a_76_fair_act_action_desc)
        OR (broker.dod_claimant_program_code IS DISTINCT FROM usaspending.dod_claimant_program_code)
        OR (broker.dod_claimant_prog_cod_desc IS DISTINCT FROM usaspending.dod_claimant_prog_cod_desc)
        OR (broker.clinger_cohen_act_planning IS DISTINCT FROM usaspending.clinger_cohen_act_planning)
        OR (broker.clinger_cohen_act_pla_desc IS DISTINCT FROM usaspending.clinger_cohen_act_pla_desc)
        OR (broker.commercial_item_acquisitio IS DISTINCT FROM usaspending.commercial_item_acquisitio)
        OR (broker.commercial_item_acqui_desc IS DISTINCT FROM usaspending.commercial_item_acqui_desc)
        OR (broker.commercial_item_test_progr IS DISTINCT FROM usaspending.commercial_item_test_progr)
        OR (broker.commercial_item_test_desc IS DISTINCT FROM usaspending.commercial_item_test_desc)
        OR (broker.consolidated_contract IS DISTINCT FROM usaspending.consolidated_contract)
        OR (broker.consolidated_contract_desc IS DISTINCT FROM usaspending.consolidated_contract_desc)
        OR (broker.contingency_humanitarian_o IS DISTINCT FROM usaspending.contingency_humanitarian_o)
        OR (broker.contingency_humanitar_desc IS DISTINCT FROM usaspending.contingency_humanitar_desc)
        OR (broker.contract_bundling IS DISTINCT FROM usaspending.contract_bundling)
        OR (broker.contract_bundling_descrip IS DISTINCT FROM usaspending.contract_bundling_descrip)
        OR (broker.contract_financing IS DISTINCT FROM usaspending.contract_financing)
        OR (broker.contract_financing_descrip IS DISTINCT FROM usaspending.contract_financing_descrip)
        OR (broker.contracting_officers_deter IS DISTINCT FROM usaspending.contracting_officers_deter)
        OR (broker.contracting_officers_desc IS DISTINCT FROM usaspending.contracting_officers_desc)
        OR (broker.cost_accounting_standards IS DISTINCT FROM usaspending.cost_accounting_standards)
        OR (broker.cost_accounting_stand_desc IS DISTINCT FROM usaspending.cost_accounting_stand_desc)
        OR (broker.cost_or_pricing_data IS DISTINCT FROM usaspending.cost_or_pricing_data)
        OR (broker.cost_or_pricing_data_desc IS DISTINCT FROM usaspending.cost_or_pricing_data_desc)
        OR (broker.country_of_product_or_serv IS DISTINCT FROM usaspending.country_of_product_or_serv)
        OR (broker.country_of_product_or_desc IS DISTINCT FROM usaspending.country_of_product_or_desc)
        OR (broker.construction_wage_rate_req IS DISTINCT FROM usaspending.construction_wage_rate_req)
        OR (broker.construction_wage_rat_desc IS DISTINCT FROM usaspending.construction_wage_rat_desc)
        OR (broker.evaluated_preference IS DISTINCT FROM usaspending.evaluated_preference)
        OR (broker.evaluated_preference_desc IS DISTINCT FROM usaspending.evaluated_preference_desc)
        OR (broker.extent_competed IS DISTINCT FROM usaspending.extent_competed)
        OR (broker.extent_compete_description IS DISTINCT FROM usaspending.extent_compete_description)
        OR (broker.fed_biz_opps IS DISTINCT FROM usaspending.fed_biz_opps)
        OR (broker.fed_biz_opps_description IS DISTINCT FROM usaspending.fed_biz_opps_description)
        OR (broker.foreign_funding IS DISTINCT FROM usaspending.foreign_funding)
        OR (broker.foreign_funding_desc IS DISTINCT FROM usaspending.foreign_funding_desc)
        OR (broker.government_furnished_prope IS DISTINCT FROM usaspending.government_furnished_prope)
        OR (broker.government_furnished_desc IS DISTINCT FROM usaspending.government_furnished_desc)
        OR (broker.information_technology_com IS DISTINCT FROM usaspending.information_technology_com)
        OR (broker.information_technolog_desc IS DISTINCT FROM usaspending.information_technolog_desc)
        OR (broker.interagency_contracting_au IS DISTINCT FROM usaspending.interagency_contracting_au)
        OR (broker.interagency_contract_desc IS DISTINCT FROM usaspending.interagency_contract_desc)
        OR (broker.local_area_set_aside IS DISTINCT FROM usaspending.local_area_set_aside)
        OR (broker.local_area_set_aside_desc IS DISTINCT FROM usaspending.local_area_set_aside_desc)
        OR (broker.major_program IS DISTINCT FROM usaspending.major_program)
        OR (broker.purchase_card_as_payment_m IS DISTINCT FROM usaspending.purchase_card_as_payment_m)
        OR (broker.purchase_card_as_paym_desc IS DISTINCT FROM usaspending.purchase_card_as_paym_desc)
        OR (broker.multi_year_contract IS DISTINCT FROM usaspending.multi_year_contract)
        OR (broker.multi_year_contract_desc IS DISTINCT FROM usaspending.multi_year_contract_desc)
        OR (broker.national_interest_action IS DISTINCT FROM usaspending.national_interest_action)
        OR (broker.national_interest_desc IS DISTINCT FROM usaspending.national_interest_desc)
        OR (broker.number_of_actions IS DISTINCT FROM usaspending.number_of_actions)
        OR (broker.number_of_offers_received IS DISTINCT FROM usaspending.number_of_offers_received)
        OR (broker.other_statutory_authority IS DISTINCT FROM usaspending.other_statutory_authority)
        OR (broker.performance_based_service IS DISTINCT FROM usaspending.performance_based_service)
        OR (broker.performance_based_se_desc IS DISTINCT FROM usaspending.performance_based_se_desc)
        OR (broker.place_of_manufacture IS DISTINCT FROM usaspending.place_of_manufacture)
        OR (broker.place_of_manufacture_desc IS DISTINCT FROM usaspending.place_of_manufacture_desc)
        OR (broker.price_evaluation_adjustmen IS DISTINCT FROM usaspending.price_evaluation_adjustmen)
        OR (broker.product_or_service_code IS DISTINCT FROM usaspending.product_or_service_code)
        OR (broker.product_or_service_co_desc IS DISTINCT FROM usaspending.product_or_service_co_desc)
        OR (broker.program_acronym IS DISTINCT FROM usaspending.program_acronym)
        OR (broker.other_than_full_and_open_c IS DISTINCT FROM usaspending.other_than_full_and_open_c)
        OR (broker.other_than_full_and_o_desc IS DISTINCT FROM usaspending.other_than_full_and_o_desc)
        OR (broker.recovered_materials_sustai IS DISTINCT FROM usaspending.recovered_materials_sustai)
        OR (broker.recovered_materials_s_desc IS DISTINCT FROM usaspending.recovered_materials_s_desc)
        OR (broker.research IS DISTINCT FROM usaspending.research)
        OR (broker.research_description IS DISTINCT FROM usaspending.research_description)
        OR (broker.sea_transportation IS DISTINCT FROM usaspending.sea_transportation)
        OR (broker.sea_transportation_desc IS DISTINCT FROM usaspending.sea_transportation_desc)
        OR (broker.labor_standards IS DISTINCT FROM usaspending.labor_standards)
        OR (broker.labor_standards_descrip IS DISTINCT FROM usaspending.labor_standards_descrip)
        OR (broker.small_business_competitive IS DISTINCT FROM usaspending.small_business_competitive)
        OR (broker.solicitation_identifier IS DISTINCT FROM usaspending.solicitation_identifier)
        OR (broker.solicitation_procedures IS DISTINCT FROM usaspending.solicitation_procedures)
        OR (broker.solicitation_procedur_desc IS DISTINCT FROM usaspending.solicitation_procedur_desc)
        OR (broker.fair_opportunity_limited_s IS DISTINCT FROM usaspending.fair_opportunity_limited_s)
        OR (broker.fair_opportunity_limi_desc IS DISTINCT FROM usaspending.fair_opportunity_limi_desc)
        OR (broker.subcontracting_plan IS DISTINCT FROM usaspending.subcontracting_plan)
        OR (broker.subcontracting_plan_desc IS DISTINCT FROM usaspending.subcontracting_plan_desc)
        OR (broker.program_system_or_equipmen IS DISTINCT FROM usaspending.program_system_or_equipmen)
        OR (broker.program_system_or_equ_desc IS DISTINCT FROM usaspending.program_system_or_equ_desc)
        OR (broker.type_set_aside IS DISTINCT FROM usaspending.type_set_aside)
        OR (broker.type_set_aside_description IS DISTINCT FROM usaspending.type_set_aside_description)
        OR (broker.epa_designated_product IS DISTINCT FROM usaspending.epa_designated_product)
        OR (broker.epa_designated_produc_desc IS DISTINCT FROM usaspending.epa_designated_produc_desc)
        OR (broker.materials_supplies_article IS DISTINCT FROM usaspending.materials_supplies_article)
        OR (broker.materials_supplies_descrip IS DISTINCT FROM usaspending.materials_supplies_descrip)
        OR (broker.transaction_number IS DISTINCT FROM usaspending.transaction_number)
        OR (broker.sam_exception IS DISTINCT FROM usaspending.sam_exception)
        OR (broker.sam_exception_description IS DISTINCT FROM usaspending.sam_exception_description)
        OR (broker.city_local_government IS DISTINCT FROM usaspending.city_local_government)
        OR (broker.county_local_government IS DISTINCT FROM usaspending.county_local_government)
        OR (broker.inter_municipal_local_gove IS DISTINCT FROM usaspending.inter_municipal_local_gove)
        OR (broker.local_government_owned IS DISTINCT FROM usaspending.local_government_owned)
        OR (broker.municipality_local_governm IS DISTINCT FROM usaspending.municipality_local_governm)
        OR (broker.school_district_local_gove IS DISTINCT FROM usaspending.school_district_local_gove)
        OR (broker.township_local_government IS DISTINCT FROM usaspending.township_local_government)
        OR (broker.us_state_government IS DISTINCT FROM usaspending.us_state_government)
        OR (broker.us_federal_government IS DISTINCT FROM usaspending.us_federal_government)
        OR (broker.federal_agency IS DISTINCT FROM usaspending.federal_agency)
        OR (broker.federally_funded_research IS DISTINCT FROM usaspending.federally_funded_research)
        OR (broker.us_tribal_government IS DISTINCT FROM usaspending.us_tribal_government)
        OR (broker.foreign_government IS DISTINCT FROM usaspending.foreign_government)
        OR (broker.community_developed_corpor IS DISTINCT FROM usaspending.community_developed_corpor)
        OR (broker.labor_surplus_area_firm IS DISTINCT FROM usaspending.labor_surplus_area_firm)
        OR (broker.corporate_entity_not_tax_e IS DISTINCT FROM usaspending.corporate_entity_not_tax_e)
        OR (broker.corporate_entity_tax_exemp IS DISTINCT FROM usaspending.corporate_entity_tax_exemp)
        OR (broker.partnership_or_limited_lia IS DISTINCT FROM usaspending.partnership_or_limited_lia)
        OR (broker.sole_proprietorship IS DISTINCT FROM usaspending.sole_proprietorship)
        OR (broker.small_agricultural_coopera IS DISTINCT FROM usaspending.small_agricultural_coopera)
        OR (broker.international_organization IS DISTINCT FROM usaspending.international_organization)
        OR (broker.us_government_entity IS DISTINCT FROM usaspending.us_government_entity)
        OR (broker.emerging_small_business IS DISTINCT FROM usaspending.emerging_small_business)
        OR (broker.c8a_program_participant IS DISTINCT FROM usaspending.c8a_program_participant)
        OR (broker.sba_certified_8_a_joint_ve IS DISTINCT FROM usaspending.sba_certified_8_a_joint_ve)
        OR (broker.dot_certified_disadvantage IS DISTINCT FROM usaspending.dot_certified_disadvantage)
        OR (broker.self_certified_small_disad IS DISTINCT FROM usaspending.self_certified_small_disad)
        OR (broker.historically_underutilized IS DISTINCT FROM usaspending.historically_underutilized)
        OR (broker.small_disadvantaged_busine IS DISTINCT FROM usaspending.small_disadvantaged_busine)
        OR (broker.the_ability_one_program IS DISTINCT FROM usaspending.the_ability_one_program)
        OR (broker.historically_black_college IS DISTINCT FROM usaspending.historically_black_college)
        OR (broker.c1862_land_grant_college IS DISTINCT FROM usaspending.c1862_land_grant_college)
        OR (broker.c1890_land_grant_college IS DISTINCT FROM usaspending.c1890_land_grant_college)
        OR (broker.c1994_land_grant_college IS DISTINCT FROM usaspending.c1994_land_grant_college)
        OR (broker.minority_institution IS DISTINCT FROM usaspending.minority_institution)
        OR (broker.private_university_or_coll IS DISTINCT FROM usaspending.private_university_or_coll)
        OR (broker.school_of_forestry IS DISTINCT FROM usaspending.school_of_forestry)
        OR (broker.state_controlled_instituti IS DISTINCT FROM usaspending.state_controlled_instituti)
        OR (broker.tribal_college IS DISTINCT FROM usaspending.tribal_college)
        OR (broker.veterinary_college IS DISTINCT FROM usaspending.veterinary_college)
        OR (broker.educational_institution IS DISTINCT FROM usaspending.educational_institution)
        OR (broker.alaskan_native_servicing_i IS DISTINCT FROM usaspending.alaskan_native_servicing_i)
        OR (broker.community_development_corp IS DISTINCT FROM usaspending.community_development_corp)
        OR (broker.native_hawaiian_servicing IS DISTINCT FROM usaspending.native_hawaiian_servicing)
        OR (broker.domestic_shelter IS DISTINCT FROM usaspending.domestic_shelter)
        OR (broker.manufacturer_of_goods IS DISTINCT FROM usaspending.manufacturer_of_goods)
        OR (broker.hospital_flag IS DISTINCT FROM usaspending.hospital_flag)
        OR (broker.veterinary_hospital IS DISTINCT FROM usaspending.veterinary_hospital)
        OR (broker.hispanic_servicing_institu IS DISTINCT FROM usaspending.hispanic_servicing_institu)
        OR (broker.foundation IS DISTINCT FROM usaspending.foundation)
        OR (broker.woman_owned_business IS DISTINCT FROM usaspending.woman_owned_business)
        OR (broker.minority_owned_business IS DISTINCT FROM usaspending.minority_owned_business)
        OR (broker.women_owned_small_business IS DISTINCT FROM usaspending.women_owned_small_business)
        OR (broker.economically_disadvantaged IS DISTINCT FROM usaspending.economically_disadvantaged)
        OR (broker.joint_venture_women_owned IS DISTINCT FROM usaspending.joint_venture_women_owned)
        OR (broker.joint_venture_economically IS DISTINCT FROM usaspending.joint_venture_economically)
        OR (broker.veteran_owned_business IS DISTINCT FROM usaspending.veteran_owned_business)
        OR (broker.service_disabled_veteran_o IS DISTINCT FROM usaspending.service_disabled_veteran_o)
        OR (broker.contracts IS DISTINCT FROM usaspending.contracts)
        OR (broker.grants IS DISTINCT FROM usaspending.grants)
        OR (broker.receives_contracts_and_gra IS DISTINCT FROM usaspending.receives_contracts_and_gra)
        OR (broker.airport_authority IS DISTINCT FROM usaspending.airport_authority)
        OR (broker.council_of_governments IS DISTINCT FROM usaspending.council_of_governments)
        OR (broker.housing_authorities_public IS DISTINCT FROM usaspending.housing_authorities_public)
        OR (broker.interstate_entity IS DISTINCT FROM usaspending.interstate_entity)
        OR (broker.planning_commission IS DISTINCT FROM usaspending.planning_commission)
        OR (broker.port_authority IS DISTINCT FROM usaspending.port_authority)
        OR (broker.transit_authority IS DISTINCT FROM usaspending.transit_authority)
        OR (broker.subchapter_s_corporation IS DISTINCT FROM usaspending.subchapter_s_corporation)
        OR (broker.limited_liability_corporat IS DISTINCT FROM usaspending.limited_liability_corporat)
        OR (broker.foreign_owned_and_located IS DISTINCT FROM usaspending.foreign_owned_and_located)
        OR (broker.american_indian_owned_busi IS DISTINCT FROM usaspending.american_indian_owned_busi)
        OR (broker.alaskan_native_owned_corpo IS DISTINCT FROM usaspending.alaskan_native_owned_corpo)
        OR (broker.indian_tribe_federally_rec IS DISTINCT FROM usaspending.indian_tribe_federally_rec)
        OR (broker.native_hawaiian_owned_busi IS DISTINCT FROM usaspending.native_hawaiian_owned_busi)
        OR (broker.tribally_owned_business IS DISTINCT FROM usaspending.tribally_owned_business)
        OR (broker.asian_pacific_american_own IS DISTINCT FROM usaspending.asian_pacific_american_own)
        OR (broker.black_american_owned_busin IS DISTINCT FROM usaspending.black_american_owned_busin)
        OR (broker.hispanic_american_owned_bu IS DISTINCT FROM usaspending.hispanic_american_owned_bu)
        OR (broker.native_american_owned_busi IS DISTINCT FROM usaspending.native_american_owned_busi)
        OR (broker.subcontinent_asian_asian_i IS DISTINCT FROM usaspending.subcontinent_asian_asian_i)
        OR (broker.other_minority_owned_busin IS DISTINCT FROM usaspending.other_minority_owned_busin)
        OR (broker.for_profit_organization IS DISTINCT FROM usaspending.for_profit_organization)
        OR (broker.nonprofit_organization IS DISTINCT FROM usaspending.nonprofit_organization)
        OR (broker.other_not_for_profit_organ IS DISTINCT FROM usaspending.other_not_for_profit_organ)
        OR (broker.us_local_government IS DISTINCT FROM usaspending.us_local_government)
        OR (broker.referenced_idv_modificatio IS DISTINCT FROM usaspending.referenced_idv_modificatio)
        OR (broker.undefinitized_action IS DISTINCT FROM usaspending.undefinitized_action)
        OR (broker.undefinitized_action_desc IS DISTINCT FROM usaspending.undefinitized_action_desc)
        OR (broker.domestic_or_foreign_entity IS DISTINCT FROM usaspending.domestic_or_foreign_entity)
        OR (broker.domestic_or_foreign_e_desc IS DISTINCT FROM usaspending.domestic_or_foreign_e_desc)
        OR (broker.pulled_from IS DISTINCT FROM usaspending.pulled_from)
        OR (broker.last_modified IS DISTINCT FROM usaspending.last_modified)
        OR (broker.annual_revenue IS DISTINCT FROM usaspending.annual_revenue)
        OR (broker.division_name IS DISTINCT FROM usaspending.division_name)
        OR (broker.division_number_or_office IS DISTINCT FROM usaspending.division_number_or_office)
        OR (broker.number_of_employees IS DISTINCT FROM usaspending.number_of_employees)
        OR (broker.vendor_alternate_name IS DISTINCT FROM usaspending.vendor_alternate_name)
        OR (broker.vendor_alternate_site_code IS DISTINCT FROM usaspending.vendor_alternate_site_code)
        OR (broker.vendor_enabled IS DISTINCT FROM usaspending.vendor_enabled)
        OR (broker.vendor_legal_org_name IS DISTINCT FROM usaspending.vendor_legal_org_name)
        OR (broker.vendor_location_disabled_f IS DISTINCT FROM usaspending.vendor_location_disabled_f)
        OR (broker.vendor_site_code IS DISTINCT FROM usaspending.vendor_site_code)
        OR (broker.initial_report_date IS DISTINCT FROM usaspending.initial_report_date)
        OR (broker.base_and_all_options_value IS DISTINCT FROM usaspending.base_and_all_options_value)
        OR (broker.base_exercised_options_val IS DISTINCT FROM usaspending.base_exercised_options_val)
        OR (broker.total_obligated_amount IS DISTINCT FROM usaspending.total_obligated_amount)
        OR (broker.place_of_perform_country_n IS DISTINCT FROM usaspending.place_of_perform_country_n)
        OR (broker.place_of_perform_state_nam IS DISTINCT FROM usaspending.place_of_perform_state_nam)
        OR (broker.referenced_idv_agency_name IS DISTINCT FROM usaspending.referenced_idv_agency_name)
        OR (broker.award_or_idv_flag IS DISTINCT FROM usaspending.award_or_idv_flag)
        OR (broker.legal_entity_county_code IS DISTINCT FROM usaspending.legal_entity_county_code)
        OR (broker.legal_entity_county_name IS DISTINCT FROM usaspending.legal_entity_county_name)
        OR (broker.legal_entity_zip5 IS DISTINCT FROM usaspending.legal_entity_zip5)
        OR (broker.legal_entity_zip_last4 IS DISTINCT FROM usaspending.legal_entity_zip_last4)
        OR (broker.place_of_perform_county_co IS DISTINCT FROM usaspending.place_of_perform_county_co)
        OR (broker.place_of_performance_zip5 IS DISTINCT FROM usaspending.place_of_performance_zip5)
        OR (broker.place_of_perform_zip_last4 IS DISTINCT FROM usaspending.place_of_perform_zip_last4)
        OR (broker.cage_code IS DISTINCT FROM usaspending.cage_code)
        OR (broker.inherently_government_func IS DISTINCT FROM usaspending.inherently_government_func)
        OR (broker.organizational_type IS DISTINCT FROM usaspending.organizational_type)
        OR (broker.inherently_government_desc IS DISTINCT FROM usaspending.inherently_government_desc)
        OR (broker.unique_award_key IS DISTINCT FROM usaspending.unique_award_key)
        OR (broker.high_comp_officer1_amount IS DISTINCT FROM usaspending.officer_1_amount)
        OR (broker.high_comp_officer1_full_na IS DISTINCT FROM usaspending.officer_1_name)
        OR (broker.high_comp_officer2_amount IS DISTINCT FROM usaspending.officer_2_amount)
        OR (broker.high_comp_officer2_full_na IS DISTINCT FROM usaspending.officer_2_name)
        OR (broker.high_comp_officer3_amount IS DISTINCT FROM usaspending.officer_3_amount)
        OR (broker.high_comp_officer3_full_na IS DISTINCT FROM usaspending.officer_3_name)
        OR (broker.high_comp_officer4_amount IS DISTINCT FROM usaspending.officer_4_amount)
        OR (broker.high_comp_officer4_full_na IS DISTINCT FROM usaspending.officer_4_name)
        OR (broker.high_comp_officer5_amount IS DISTINCT FROM usaspending.officer_5_amount)
        OR (broker.high_comp_officer5_full_na IS DISTINCT FROM usaspending.officer_5_name)
    )
)