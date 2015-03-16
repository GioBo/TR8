column_list<-list(
    ##ecoflora
    "height_max"=c("h_max","Maximum height","Ecoflora"),
    "height_min"=c("h_min","Minimum height","Ecoflora"),
    "leaf_area"=c("le_area","Leaf area","Ecoflora"),
    "leaf_longevity"=c("le_long","Leaf longevity","Ecoflora"),
    "Photosynthetic_pathway"=c("phot_path","Photosynthetic pathway","Ecoflora"),
    "life_form"=c("li_form","Life form","Ecoflora"),
    "Vegetative_reprod_method"=c("reprod_meth","Vegetative reprod method","Ecoflora"),
    "Flowering_earliest_month"=c("flw_early","Flowering earliest month","Ecoflora"),
    "Flowering_latest_month"=c("flw_late","Flowering latest month","Ecoflora"),
    "Pollen_vector"=c("poll_vect","Pollen vector","Ecoflora"),
    "Seed_weight_mean"=c("seed_wght","Seed weight mean","Ecoflora"),
    "Method_of_propagation"=c("propag","Method of propagation","Ecoflora"),
    "Ellenberg_light_Eco"=c("ell_light_uk","Ellenberg light","Ecoflora"),
    "Ellenberg_moisture_Eco"=c("ell_moist_uk","Ellenberg moisture","Ecoflora"),
    "Ellenberg_pH_Eco"=c("ell_pH_uk","Ellenberg pH","Ecoflora"),
    "Ellenberg_nitrogen_Eco"=c("ell_N","Ellenberg nitrogen","Ecoflora"),
    "Ellenberg_salt_Eco"=c("ell_S","Ellenberg salt","Ecoflora"),

    ##LEDA
    "age_of_first_flowering"=c("age_first_flowering","Age of first flowering","LEDA"),
    "branching"=c("branching","Branching","LEDA"),
    "bud_bank_seasonality_soil"=c("bud_bank_seasonality_soil","Bud bank seasonality at soil level","LEDA"),
    "buoyancy"=c("buoyancy","Buoyancy","LEDA"),
    "canopy_height"=c("canopy_height","Mean canopy height","LEDA"),
    "dispersal"=c("dispersal","Dispersal type","LEDA"),
    "leaf_distribution"=c("leaf_distribution","Leaf distribution along the stem","LEDA"),
    "leaf_dmc"=c("leaf_dmc","Leaf dry matter content ","LEDA"),
    "leaf_mass"=c("leaf_mass","Leaf mass","LEDA"),
    "leaf_size"=c("leaf_size","Leaf size","LEDA"),
    "dispersal_morphology"=c("dispersal_morphology","Dispersal morphology","LEDA"),
    "growth_form"=c("growth_form","Growth form","LEDA"),
    "life_span"=c("life_span","Life span","LEDA"),
    "releasing_height"=c("releasing_height","Releasing height","LEDA"),
    "sbank"=c("sbank","Seed bank","LEDA"),
    "seed_mass"=c("seed_mass","Seed mass","LEDA"),
    "shoot_growth_form"=c("shoot_growth_form","Shoot growth form","LEDA"),
    "seed_number_per_shoot"=c("seed_number_per_shoot","Seed number per shoot","LEDA"),
    "woodiness"=c("woodiness","Woodiness","LEDA"),
    "terminal_velocity"=c("terminal_velocity","Terminal velocity","LEDA"),

    ## "canopy_height.m"=c("c_height","Canopy height in [m]","LEDA"),
    ## "mean.SLA..mm.2.mg."=c("SLA","Mean specific leaf area [mm^2 m-1]","LEDA"),
    ## "mean.SM..mg."=c("SM","Mean seed mass","LEDA"),
    ## "plant.growth.form"=c("g_form","Plant growth form","LEDA"),
    ## "dispersal.type"=c("disp_type","Plant dispersal type","LEDA"),

    

    
    ## BiolFlor

    "Life form"=c("li_form_B","Life form","BiolFlor"),
    "Life span"=c("li_span","Life span","BiolFlor"),
    "Rosettes"=c("ros","Rosettes","BiolFlor"),
    "Type of reproduction"=c("reprod_B","Type of reproduction","BiolFlor"),
    "Strategy type"=c("strategy","Strategy type","BiolFlor"),
    "Pollen vector"=c("poll_vect_B","Pollen vector","BiolFlor"),
    ## "Flower.class.after.MUELLER"=c("flw_muell","Flower class after MUELLER","BiolFlor"),
    ## "Begin.of.flowering..months."=c("flw_beg","Begin of flowering months.","BiolFlor"),
    ## "End.of.flowering..months."=c("flw_end","End of flowering months","BiolFlor"),
    ## "Duration.of.flowering..months."=c("flw_dur", "Duration of flowering months","BiolFlor"),
    ## "Number.of.flowering.phases"=c("flw_ph","Number of flowering phases","BiolFlor"),

    ##pignatti

    "L"=c("ell_L_it","Ellenberg value for light in Italy","Pignatti"),
    "T"=c("ell_T_it","Ellenberg value for temperature in Italy","Pignatti"),
    "C"=c("ell_C_it","Ellenberg value for continentality in Italy","Pignatti"),
    "U"=c("ell_U_it","Ellenberg value for humidity in Italy","Pignatti"),
    "R"=c("ell_R_it","Ellenberg value for soil reaction in Italy","Pignatti"),
    "N"=c("ell_N_it","Ellenberg value for nitrogen in Italy","Pignatti"),
    "S"=c("ell_S_it","Ellenberg value for salinity in Italy","Pignatti"),
    "life_form_P"=c("life_form_P","Life form for Italian Flora","Pignatti"),
    "corotipo"=c("distribution_p","Distributions of species for the Italian Flora","Pignatti"),
    ## Flowering italiano

#    "IT_flowering_months"=c("IT_flowering_months","Months in which the species is flowering","Pignatti")
     "IT_beg_flow"=c("IT_beg_flow","Beginning of flowering in Italy","Pignatti"),
    "IT_end_flow"=c("IT_end_flow","End of flowering in Italy","Pignatti"),
    ## AMF
    "Myco_infection"=c("Myco_infection","Infection of AMF according to Akhmetzhanova et al.", "AMF"),
    "MycoFlor"=c("MycoFlor","Infection of AMF according to MycoFlor", "AMF"),
    
###    "support.AMF"=c("support.AMF","Potential infection of AMF","Giovannetti")
    
    #catminat

    "inflorescence_fr"=c("inflorescence_fr","Type of inflorescence","Catminat"),
    "sex_reprod_fr"=c("sex_reprod_fr","Type of sexual reproduction","Catminat"),
    "poll_vect_fr"=c("poll_vect_fr","Pollen vector","Catminat"),
    "fruit_type_fr"=c("fruit_type_fr","Type of fruit","Catminat"),
    "dissemination_fr"=c("dissemination_fr","Type of dissemination","Catminat"),
    "flower_colour_fr"=c("flower_colour_fr","Flower colour","Catminat"),
    "ell_L_fr"=c("ell_L_fr","Ellenberg values for Light","Catminat"),
    "elle_T_fr"=c("elle_T_fr","Ellenberg values for temperature","Catminat"),
    "ell_C_fr"=c("ell_C_fr","Ellenberg values for continentality","Catminat"),
    "ell_U_atm_fr"=c("ell_U_atm_fr","Ellenberg values for atmospheric moisture","Catminat"),
    "ell_U_fr"=c("ell_U_fr","Ellenberg values for moisture","Catminat"),
    "ell_R_fr"=c("ell_R_fr","Ellenberg values for soil reaction","Catminat"),
    "ell_N_fr"=c("ell_N_fr","Ellenberg values for nitrogen","Catminat"),
    "ell_S_fr"=c("ell_S_fr","Ellenberg values for salt","Catminat"),
    "Soil_texture_fr"=c("Soil_texture_fr","Type of soil texture","Catminat"),
    "organic_matter_fr"=c("organic_matter_fr","Organic matter in the soil","Catminat"),
    "beg_flow_fr"=c("beg_flow_fr","Beginning of flowering (month)","Catminat"),
    "end_flow_fr"=c("end_flow_fr","End of flowering (month)","Catminat")
    ##"order_of_maturation"=c("order_of_maturation","","Catminat"),
    ##"macule"=c("macule","","Catminat"),
    ##"type_ligneux"=c("type_ligneux","","Catminat"),
    ##"TYPE_BIOLOGIQUE"=c("TYPE_BIOLOGIQUE","","Catminat"),

    )

