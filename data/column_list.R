column_list<-list(
  ##ecoflora
  "height_max"=c("h_max","Maximum height","Ecoflora"),
  "height_min"=c("h_min","Minimum height","Ecoflora"),
  "leaf_area"=c("le_area","Leaf area","Ecoflora"),
  "leaf_longevity"=c("le_long","Leaf longevity","Ecoflora"),
  "Root_system"=c("root_system","Root system","Ecoflora"),
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

  ## "Life form"=c("li_form_B","Life form","BiolFlor"),
  ## "Life span"=c("li_span","Life span","BiolFlor"),
  ## "Rosettes"=c("ros","Rosettes","BiolFlor"),
  ## "Type of reproduction"=c("reprod_B","Type of reproduction","BiolFlor"),
  ## "Strategy type"=c("strategy","Strategy type","BiolFlor"),
  ## "Pollen vector"=c("poll_vect_B","Pollen vector","BiolFlor"),
  ## "Flower class after MUELLER"=c("flw_muell","Flower class after Mueller","BiolFlor"),
  ## "Flower type after KUGLER"=c("flw_kugler","Flower class after Kugler","BiolFlor"),
  ## "Self-sterility and self-incompatibility"=c("self-st","Self-sterility and self-incompatibility","BiolFlor"),
  ## "Breeding system"=c("Breeding_sys","Breeding system","BiolFlor"),
  ## "Type of apomixis"=c("apomixis","Type of apomixis","BiolFlor"),
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

  ## catminat

  ## "inflorescence_fr"=c("inflorescence_fr","Type of inflorescence","Catminat"),
  ## "sex_reprod_fr"=c("sex_reprod_fr","Type of sexual reproduction","Catminat"),
  ## "poll_vect_fr"=c("poll_vect_fr","Pollen vector","Catminat"),
  ## "fruit_type_fr"=c("fruit_type_fr","Type of fruit","Catminat"),
  ## "dissemination_fr"=c("dissemination_fr","Type of dissemination","Catminat"),
  ## "flower_colour_fr"=c("flower_colour_fr","Flower colour","Catminat"),
  ## "li_form_fr"=c("li_form_fr","Life form","Catminat"),
  ## "ell_L_fr"=c("ell_L_fr","Ellenberg values for Light","Catminat"),
  ## "ell_T_fr"=c("ell_T_fr","Ellenberg values for temperature","Catminat"),
  ## "ell_C_fr"=c("ell_C_fr","Ellenberg values for continentality","Catminat"),
  ## "ell_U_atm_fr"=c("ell_U_atm_fr","Ellenberg values for atmospheric moisture","Catminat"),
  ## "ell_U_fr"=c("ell_U_fr","Ellenberg values for moisture","Catminat"),
  ## "ell_R_fr"=c("ell_R_fr","Ellenberg values for soil reaction","Catminat"),
  ## "ell_N_fr"=c("ell_N_fr","Ellenberg values for nitrogen","Catminat"),
  ## "ell_S_fr"=c("ell_S_fr","Ellenberg values for salt","Catminat"),
  ## "Soil_texture_fr"=c("Soil_texture_fr","Type of soil texture","Catminat"),
  ## "organic_matter_fr"=c("organic_matter_fr","Organic matter in the soil","Catminat"),
  ## "beg_flow_fr"=c("beg_flow_fr","Beginning of flowering (month)","Catminat"),
  ## "end_flow_fr"=c("end_flow_fr","End of flowering (month)","Catminat"),
  ##"order_of_maturation"=c("order_of_maturation","","Catminat"),
  ##"macule"=c("macule","","Catminat"),
  ##"type_ligneux"=c("type_ligneux","","Catminat"),
  ##"TYPE_BIOLOGIQUE"=c("TYPE_BIOLOGIQUE","","Catminat"),

  ##Flora of California


  "high_el"=c("high_el","High elevation","EFlora_Cal"),
  "low_el"=c("low_el","Low elevation","EFlora_Cal"),
  "seed_mas_cal"=c("seed_mas_cal","Seed mass","EFlora_Cal"),
  "seed_pro_cal"=c("seed_pro_cal","Annual seed production per plant (c)","EFlora_Cal"),
  "blade_area"=c("blade_area","Blade area (c)","EFlora_Cal"),
  "leaf_to_sap_area"=c("leaf_to_sap_area","Leaf area to sapwood area","EFlora_Cal"),
  "leaf_N_area"=c("leaf_N_area","Leaf Narea","EFlora_Cal"),
  "leaf_N_mass"=c("leaf_N_mass","Leaf Nmass","EFlora_Cal"),
  "max_height_cal"=c("max_height_cal","Maximum height (c)","EFlora_Cal"),
  "sla_cal"=c("sla_cal","Specific leaf area","EFlora_Cal"),
  "wood_dens"=c("wood_dens","Wood density","EFlora_Cal"),
  "blade_length"=c("blade_length","Blade length (c)","EFlora_Cal"),
  "blade_width"=c("blade_width","Blade width (c)","EFlora_Cal"),
  "leaf_thick"=c("leaf_thick","Leaf thickness","EFlora_Cal"),
  "leaf_type"=c("leaf_type","Leaf type","EFlora_Cal"),


  ##brot

  "BudSource"=c("BudSource","BudSource","BROT"),
  "DispMode"=c("DispMode","DispMode","BROT"),
  "FruitType"=c("FruitType","FruitType","BROT"),
  "HeatStimGerm"=c("HeatStimGerm","HeatStimGerm","BROT"),
  "Height"=c("Height","Height","BROT"),
  "LeafPhenology"=c("LeafPhenology","LeafPhenology","BROT"),
  "LeafShape"=c("LeafShape","LeafShape","BROT"),
  "LeafSize"=c("LeafSize","LeafSize","BROT"),
  "MatResp"=c("MatResp","MatResp","BROT"),
  "MatSap"=c("MatSap","MatSap","BROT"),
  "OtherCues"=c("OtherCues","OtherCues","BROT"),
  "Propagule"=c("Propagule","Propagule","BROT"),
  "RespClip"=c("RespClip","RespClip","BROT"),
  "RespDist"=c("RespDist","RespDist","BROT"),
  "RespFire"=c("RespFire","RespFire","BROT"),
  "RootDepth"=c("RootDepth","RootDepth","BROT"),
  "SeedBank"=c("SeedBank","SeedBank","BROT"),
  "SeedBankLong"=c("SeedBankLong","SeedBankLong","BROT"),
  "SeedlEmerg"=c("SeedlEmerg","SeedlEmerg","BROT"),
  "SeedlSurv"=c("SeedlSurv","SeedlSurv","BROT"),
  "SeedMass"=c("SeedMass","SeedMass","BROT"),
  "SRR"=c("SRR","SRR","BROT"),

  ##PLANTS
  "Duration"=c("Duration","Duration","PLANTS"),
  "Growth.Habit"=c("Growth.Habit","Growth Habit","PLANTS"),
  "Native.Status"=c("Native.Status","Native Status","PLANTS"),
  "Federal.T.E.Status"=c("Federal.T.E.Status","Federal T E Status","PLANTS"),
  "National.Wetland.Indicator"=c("National.Wetland.Indicator","National Wetland Indicator","PLANTS"),
  "Active.Growth.Period"=c("Active.Growth.Period","Active Growth Period","PLANTS"),
  "After.Harvest.Regrowth.Rate"=c("After.Harvest.Regrowth.Rate","After Harvest Regrowth Rate","PLANTS"),
  "Bloat"=c("Bloat","Bloat","PLANTS"),
  "C.N.Ratio"=c("C.N.Ratio","C N Ratio","PLANTS"),
  "Coppice.Potential"=c("Coppice.Potential","Coppice Potential","PLANTS"),
  "Fall.Conspicuous"=c("Fall.Conspicuous","Fall Conspicuous","PLANTS"),
  "Fire.Resistant"=c("Fire.Resistant","Fire Resistant","PLANTS"),
  "Flower.Color"=c("Flower.Color","Flower Color","PLANTS"),
  "Flower.Conspicuous"=c("Flower.Conspicuous","Flower Conspicuous","PLANTS"),
  "Foliage.Color"=c("Foliage.Color","Foliage Color","PLANTS"),
  "Foliage.Porosity.Summer"=c("Foliage.Porosity.Summer","Foliage Porosity Summer","PLANTS"),
  "Foliage.Porosity.Winter"=c("Foliage.Porosity.Winter","Foliage Porosity Winter","PLANTS"),
  "Foliage.Texture"=c("Foliage.Texture","Foliage Texture","PLANTS"),
  "Fruit.Seed.Color"=c("Fruit.Seed.Color","Fruit Seed Color","PLANTS"),
  "Fruit.Seed.Conspicuous"=c("Fruit.Seed.Conspicuous","Fruit Seed Conspicuous","PLANTS"),
  "Growth.Form"=c("Growth.Form","Growth Form","PLANTS"),
  "Growth.Rate"=c("Growth.Rate","Growth Rate","PLANTS"),
  "Height.at.20.Years"=c("Height.at.20.Years","Height at 20 Years","PLANTS"),
  "Height..Mature"=c("Height..Mature","Height Mature","PLANTS"),
  "Known.Allelopath"=c("Known.Allelopath","Known Allelopath","PLANTS"),
  "Leaf.Retention"=c("Leaf.Retention","Leaf Retention","PLANTS"),
  "Lifespan"=c("Lifespan","Lifespan","PLANTS"),
  "Low.Growing.Grass"=c("Low.Growing.Grass","Low Growing Grass","PLANTS"),
  "Nitrogen.Fixation"=c("Nitrogen.Fixation","Nitrogen Fixation","PLANTS"),
  "Resprout.Ability"=c("Resprout.Ability","Resprout Ability","PLANTS"),
  "Shape.and.Orientation"=c("Shape.and.Orientation","Shape and Orientation","PLANTS"),
  "Toxicity"=c("Toxicity","Toxicity","PLANTS"),
  "Adapted.to.Coarse.Textured.Soils"=c("Adapted.to.Coarse.Textured.Soils","Adapted to Coarse Textured Soils","PLANTS"),
  "Adapted.to.Fine.Textured.Soils"=c("Adapted.to.Fine.Textured.Soils","Adapted to Fine Textured Soils","PLANTS"),
  "Adapted.to.Medium.Textured.Soils"=c("Adapted.to.Medium.Textured.Soils","Adapted to Medium Textured Soils","PLANTS"),
  "Anaerobic.Tolerance"=c("Anaerobic.Tolerance","Anaerobic Tolerance","PLANTS"),
  "CaCO3.Tolerance"=c("CaCO3.Tolerance","CaCO3 Tolerance","PLANTS"),
  "Cold.Stratification.Required"=c("Cold.Stratification.Required","Cold Stratification Required","PLANTS"),
  "Drought.Tolerance"=c("Drought.Tolerance","Drought Tolerance","PLANTS"),
  "Fertility.Requirement"=c("Fertility.Requirement","Fertility Requirement","PLANTS"),
  "Fire.Tolerance"=c("Fire.Tolerance","Fire Tolerance","PLANTS"),
  "Frost.Free.Days..Minimum"=c("Frost.Free.Days..Minimum","Frost Free Days Minimum","PLANTS"),
  "Hedge.Tolerance"=c("Hedge.Tolerance","Hedge Tolerance","PLANTS"),
  "Moisture.Use"=c("Moisture.Use","Moisture Use","PLANTS"),
  "pH..Minimum"=c("pH..Minimum","pH Minimum","PLANTS"),
  "pH..Maximum"=c("pH..Maximum","pH Maximum","PLANTS"),
  "Planting.Density.per.Acre..Minimum"=c("Planting.Density.per.Acre..Minimum","Planting Density per Acre Minimum","PLANTS"),
  "Planting.Density.per.Acre..Maximum"=c("Planting.Density.per.Acre..Maximum","Planting Density per Acre Maximum","PLANTS"),
  "Precipitation..Minimum"=c("Precipitation..Minimum","Precipitation Minimum","PLANTS"),
  "Precipitation..Maximum"=c("Precipitation..Maximum","Precipitation Maximum","PLANTS"),
  "Root.Depth..Minimum"=c("Root.Depth..Minimum","Root Depth Minimum","PLANTS"),
  "Salinity.Tolerance"=c("Salinity.Tolerance","Salinity Tolerance","PLANTS"),
  "Shade.Tolerance"=c("Shade.Tolerance","Shade Tolerance","PLANTS"),
  "Temperature..Minimum"=c("Temperature..Minimum","Temperature Minimum","PLANTS"),
  "Bloom.Period"=c("Bloom.Period","Bloom Period","PLANTS"),
  "Commercial.Availability"=c("Commercial.Availability","Commercial Availability","PLANTS"),
  "Fruit.Seed.Abundance"=c("Fruit.Seed.Abundance","Fruit Seed Abundance","PLANTS"),
  "Fruit.Seed.Period.Begin"=c("Fruit.Seed.Period.Begin","Fruit Seed Period Begin","PLANTS"),
  "Fruit.Seed.Period.End"=c("Fruit.Seed.Period.End","Fruit Seed Period End","PLANTS"),
  "Fruit.Seed.Persistence"=c("Fruit.Seed.Persistence","Fruit Seed Persistence","PLANTS"),
  "Propagated.by.Bare.Root"=c("Propagated.by.Bare.Root","Propagated by Bare Root","PLANTS"),
  "Propagated.by.Bulb"=c("Propagated.by.Bulb","Propagated by Bulb","PLANTS"),
  "Propagated.by.Container"=c("Propagated.by.Container","Propagated by Container","PLANTS"),
  "Propagated.by.Corm"=c("Propagated.by.Corm","Propagated by Corm","PLANTS"),
  "Propagated.by.Cuttings"=c("Propagated.by.Cuttings","Propagated by Cuttings","PLANTS"),
  "Propagated.by.Seed"=c("Propagated.by.Seed","Propagated by Seed","PLANTS"),
  "Propagated.by.Sod"=c("Propagated.by.Sod","Propagated by Sod","PLANTS"),
  "Propagated.by.Sprigs"=c("Propagated.by.Sprigs","Propagated by Sprigs","PLANTS"),
  "Propagated.by.Tubers"=c("Propagated.by.Tubers","Propagated by Tubers","PLANTS"),
  "Seed.per.Pound"=c("Seed.per.Pound","Seed per Pound","PLANTS"),
  "Seed.Spread.Rate"=c("Seed.Spread.Rate","Seed Spread Rate","PLANTS"),
  "Seedling.Vigor"=c("Seedling.Vigor","Seedling Vigor","PLANTS"),
  "Small.Grain"=c("Small.Grain","Small Grain","PLANTS"),
  "Vegetative.Spread.Rate"=c("Vegetative.Spread.Rate","Vegetative Spread Rate","PLANTS"),
  "Berry.Nut.Seed.Product"=c("Berry.Nut.Seed.Product","Berry Nut Seed Product","PLANTS"),
  "Christmas.Tree.Product"=c("Christmas.Tree.Product","Christmas Tree Product","PLANTS"),
  "Fodder.Product"=c("Fodder.Product","Fodder Product","PLANTS"),
  "Fuelwood.Product"=c("Fuelwood.Product","Fuelwood Product","PLANTS"),
  "Lumber.Product"=c("Lumber.Product","Lumber Product","PLANTS"),
  "Naval.Store.Product"=c("Naval.Store.Product","Naval Store Product","PLANTS"),
  "Nursery.Stock.Product"=c("Nursery.Stock.Product","Nursery Stock Product","PLANTS"),
  "Palatable.Browse.Animal"=c("Palatable.Browse.Animal","Palatable Browse Animal","PLANTS"),
  "Palatable.Graze.Animal"=c("Palatable.Graze.Animal","Palatable Graze Animal","PLANTS"),
  "Palatable.Human"=c("Palatable.Human","Palatable Human","PLANTS"),
  "Post.Product"=c("Post.Product","Post Product","PLANTS"),
  "Protein.Potential"=c("Protein.Potential","Protein Potential","PLANTS"),
  "Pulpwood.Product"=c("Pulpwood.Product","Pulpwood Product","PLANTS"),
  "Veneer.Product"=c("Veneer.Product","Veneer Product","PLANTS") #,
  ## Imkerbond
  ## "poll_q"=c("poll_q","Pollen quantity","Imkerbond"),
  ## "nectar_q"=c("nectar_q","Nectar quantity","Imkerbond")


)
