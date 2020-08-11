#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('COVID19Biobank_DATA_2020-08-10_1426.csv')
#Setting Labels

label(data$record_id)="Study ID"
label(data$redcap_repeat_instrument)="Repeat Instrument"
label(data$redcap_repeat_instance)="Repeat Instance"
label(data$redcap_survey_identifier)="Survey Identifier"
label(data$registration_timestamp)="Survey Timestamp"
label(data$registration_name)="Name:"
label(data$phone_number)="Phone Number:"
label(data$email)="Email:"
label(data$registration_complete)="Complete?"
label(data$covidconsent_timestamp)="Survey Timestamp"
label(data$first_name)="First Name:"
label(data$last_name)="Last Name:"
label(data$dob)="Date of Birth:"
label(data$phone_number2)="Phone Number:"
label(data$email2)="Email Address:"
label(data$blood_samples)="I agree to allow additional blood samples to be collected, now and/or in the future to be used for research purposes."
label(data$throat_swabs)="I agree to allow oropharygeal (throat) samples to be collected, now and/or in the future to be used for research purposes."
label(data$trach_samples)="I agree to allow tracheal aspirate (fluid and mucus from a breathing tube) samples to be collected, now and/or in the future to be used for research purposes."
label(data$gen_samples)="I agree for my samples obtained as part of this study to be used study for genetic research now and/or in the future. "
label(data$tissue_samples)="I agree my tissue samples may be collected and used for research.  This includes autopsy samples, if my family agrees to have an autopsy performed.  This will include tissue samples collected in the past and future. "
label(data$leftover_samples)="I agree for my leftover samples (cells and fluids) from procedures done as part of my routine care to be used collected and used for research. "
label(data$initials)="Please initial to confirm your selections above:"
label(data$relationship)="Relationship to patient in this study:"
label(data$name)="Name:"
label(data$relationship_type)="Relationship:"
label(data$describe)="Please describe relationship to patient:"
label(data$your_name)="Your name:"
label(data$agreement)="I agree to participate in this study.  My participation is voluntary and I do not have to agree to participate if I do not want to be part of this research study."
label(data$provider_name)="Name of research coordinator confirming consent:"
label(data$investigator_signature)="I have explained to [first_name] [last_name] the nature and purpose of the study and the risks involved.  I have answered and will answer all questions to the best of my ability.  I will email, mail, or give a copy of the consent form to the subject. "
label(data$date_and_timeprovider)="Date and Time:"
label(data$name_of_investigator_physi)="Name of Investigator/Physician:"
label(data$principal_investigator_dr)="Signature of Investigator/Physician:"
label(data$date_and_time_md)="Date and Time:"
label(data$paper_consent_status)="Paper Consent Status:"
label(data$samples_agreed_to_verbally)="Samples Agreed to Verbally:"
label(data$paper_consent_attachment)="Paper Consent Attachment:"
label(data$paper_consent_sample_agree___1)="Paper Consent Sample Agreements: (choice=Blood Samples)"
label(data$paper_consent_sample_agree___2)="Paper Consent Sample Agreements: (choice=OP Swabs)"
label(data$paper_consent_sample_agree___3)="Paper Consent Sample Agreements: (choice=Tracheal Aspirates)"
label(data$paper_consent_sample_agree___4)="Paper Consent Sample Agreements: (choice=Genetic Research)"
label(data$paper_consent_sample_agree___5)="Paper Consent Sample Agreements: (choice=Tissue Samples)"
label(data$paper_consent_sample_agree___6)="Paper Consent Sample Agreements: (choice=Leftover Clinical Samples)"
label(data$willing_to_participate_in)="Willing to participate in ICU follow-up study?"
label(data$covidconsent_complete)="Complete?"
label(data$new_biobank_consent_timestamp)="Survey Timestamp"
label(data$first_name_8cf583)="First Name:"
label(data$last_name_75a968)="Last Name:"
label(data$date_of_birth)="Date of Birth:"
label(data$phone)="Phone Number:"
label(data$email_1a0cff)="Email Address:"
label(data$agree_all)="I agree to have all listed sample types collected (for adults: blood, nose or throat swabs, saliva, mucus from a breathing tube, stool, and leftover material from clinical tests; for children: blood and saliva).  "
label(data$adult_child)="This consent is for an:"
label(data$leftover_blood_cells_and_f)="Leftover blood, cells and fluid from routine clinical procedures"
label(data$blood)="Blood samples"
label(data$throat_or_nose_swabs)="Throat or nose swabs"
label(data$saliva)="Saliva"
label(data$mucus_from_a_breathing_tub)="Mucus from a breathing tube (tracheal aspirate)"
label(data$stool_sample)="Stool samples"
label(data$child_blood_samples)="Blood samples"
label(data$child_saliva)="Saliva"
label(data$circadian)="I agree to participate in the circadian rhythm part of the study, where spit will be collected every 4 hours from 6 AM to 10 PM for 4 days."
label(data$genetic_research)="I agree for my samples obtained as part of this study to be used for genetic research now and/or in the future. "
label(data$initial)="Please initial to confirm your selections above:"
label(data$relationship_a73244)="Relationship to patient in this study:"
label(data$your_name_c8a9fb)="Your name:"
label(data$describe_d195c0)="Relationship to Patient:"
label(data$address)="Address: "
label(data$telephone)="Telephone:"
label(data$surrogate_signature)="The subject on whose behalf I consent has no legally authorized representative or that person is unavailable despite efforts to contact him/her.  I believe my proxy decision on behalf of the subject conforms as closely as possible to what the subject would have done or intended under the circumstances.  This decision takes into account what I believe are the subjects personal, philosophical, religious and/or moral beliefs and ethical values relative to the purpose of life, sickness, medical procedures, suffering and death.  As soon as is possible, the subject will be made aware of his/her involvement in this research protocol.  These issues have been discussed by the doctors directing this research and myself."
label(data$agreement_b34d47)="The research project and the procedures associated with it have been explained to me.  The experimental procedures have been identified and no guarantee has been given about the possible results. I will receive a signed copy of this consent form for my records.  I agree to participate in this study.  My participation is voluntary and I do not have to sign this form if I do not want to be part of this research study. "
label(data$parent_signature)="I give my permission for my child/relative/person I represent to participate in the above described research project."
label(data$provider_name_e61bfb)="Name of research coordinator confirming consent:"
label(data$investigator_signature_1411cb)="I have explained to [first_name] [last_name] the nature and purpose of the study and the risks involved. I have answered and will answer all questions to the best of my ability.  I will give a signed copy of the consent form to the subject. I will give a signed copy of the consent form to the subject or family. "
label(data$date_and_timeprovider_6d5410)="Date and Time:"
label(data$name_of_investigator_physi_891ede)="Name of Investigator/Physician:"
label(data$principal_investigator_dr_d1c31c)="Signature of Investigator/Physician:"
label(data$date_and_time_md2)="Date and Time:"
label(data$paper_consent_status_0aabae)="Paper Consent Status:"
label(data$samples_agreed_to_verbal)="Samples Agreed to Verbally:"
label(data$paper_consent_sample___1)="Paper Consent Sample Agreements: (choice=Leftover clinical samples)"
label(data$paper_consent_sample___2)="Paper Consent Sample Agreements: (choice=Blood samples)"
label(data$paper_consent_sample___3)="Paper Consent Sample Agreements: (choice=Throat or nose swabs)"
label(data$paper_consent_sample___4)="Paper Consent Sample Agreements: (choice=Saliva)"
label(data$paper_consent_sample___5)="Paper Consent Sample Agreements: (choice=Mucus from a breathing tube (tracheal aspirate))"
label(data$paper_consent_sample___6)="Paper Consent Sample Agreements: (choice=Stool samples)"
label(data$paper_consent_sample___7)="Paper Consent Sample Agreements: (choice=Genetic research)"
label(data$paper_consent_attachment_8f3742)="Paper Consent Attachment:"
label(data$icu_followup)="Willing to participate in ICU follow-up study?"
label(data$new_biobank_consent_complete)="Complete?"
label(data$date_of_symptom_survey)="Date of COVID-19 Symptom Onset:"
label(data$symptoms_present_survey___1)="Symptoms Present: (choice=Congestion)"
label(data$symptoms_present_survey___2)="Symptoms Present: (choice=Runny Nose)"
label(data$symptoms_present_survey___3)="Symptoms Present: (choice=Cough)"
label(data$symptoms_present_survey___4)="Symptoms Present: (choice=SOB)"
label(data$symptoms_present_survey___5)="Symptoms Present: (choice=DOE)"
label(data$symptoms_present_survey___6)="Symptoms Present: (choice=Headache)"
label(data$symptoms_present_survey___7)="Symptoms Present: (choice=Fever)"
label(data$symptoms_present_survey___8)="Symptoms Present: (choice=Nausea/Vomiting)"
label(data$symptoms_present_survey___9)="Symptoms Present: (choice=Diarrhea)"
label(data$symptoms_present_survey___10)="Symptoms Present: (choice=Muscle Aches)"
label(data$symptoms_present_survey___11)="Symptoms Present: (choice=Other)"
label(data$other_symptoms_survey)="Other Symptoms:"
label(data$covid_test)="Did you have a clinical COVID-19 test?"
label(data$test_date_survey)="Test Date:"
label(data$test_result)="Test Result:"
label(data$seek_med_attention)="Did you seek medical attention for COVID-19?"
label(data$hospitalized_days)="How many days were you hospitalized?"
label(data$supplemental_oxygen)="Did you receive supplemental oxygen?"
label(data$icu)="Were you in the intensive care unit while hospitalized?"
label(data$clinical_survey_complete)="Complete?"
label(data$mrn)="MRN:"
label(data$study_recruitment_method)="Study Recruitment Method:"
label(data$ctc_id)="CTC ID:"
label(data$past_medical_history___1)="Past Medical History: (choice=HTN (on meds))"
label(data$past_medical_history___2)="Past Medical History: (choice=CAD)"
label(data$past_medical_history___3)="Past Medical History: (choice=PAD)"
label(data$past_medical_history___4)="Past Medical History: (choice=CHF)"
label(data$past_medical_history___5)="Past Medical History: (choice=COPD)"
label(data$past_medical_history___6)="Past Medical History: (choice=Asthma)"
label(data$past_medical_history___7)="Past Medical History: (choice=Pulmonary HTN)"
label(data$past_medical_history___8)="Past Medical History: (choice=OSA)"
label(data$past_medical_history___9)="Past Medical History: (choice=Diabetes)"
label(data$past_medical_history___10)="Past Medical History: (choice=Rheum Diseases)"
label(data$past_medical_history___11)="Past Medical History: (choice=Cancer)"
label(data$past_medical_history___13)="Past Medical History: (choice=ESRD)"
label(data$past_medical_history___14)="Past Medical History: (choice=Dementia)"
label(data$past_medical_history___12)="Past Medical History: (choice=Other)"
label(data$rheum_diseases)="Rheum Diseases:"
label(data$cancer)="Cancer:"
label(data$other)="Other:"
label(data$date_of_covid_symptom_onse)="Date of COVID Symptom Onset:"
label(data$symptoms_present_in_hpi___1)="Symptoms Present in HPI: (choice=Congestion)"
label(data$symptoms_present_in_hpi___2)="Symptoms Present in HPI: (choice=Runny Nose)"
label(data$symptoms_present_in_hpi___3)="Symptoms Present in HPI: (choice=Cough)"
label(data$symptoms_present_in_hpi___4)="Symptoms Present in HPI: (choice=SOB)"
label(data$symptoms_present_in_hpi___5)="Symptoms Present in HPI: (choice=DOE)"
label(data$symptoms_present_in_hpi___6)="Symptoms Present in HPI: (choice=Headache)"
label(data$symptoms_present_in_hpi___7)="Symptoms Present in HPI: (choice=Fever)"
label(data$symptoms_present_in_hpi___8)="Symptoms Present in HPI: (choice=Nausea/Vomiting)"
label(data$symptoms_present_in_hpi___9)="Symptoms Present in HPI: (choice=Diarrhea)"
label(data$symptoms_present_in_hpi___10)="Symptoms Present in HPI: (choice=Myalgia)"
label(data$symptoms_present_in_hpi___11)="Symptoms Present in HPI: (choice=Other)"
label(data$other_symptoms)="Other Symptoms:"
label(data$admission)="Admitted?"
label(data$covid_related_admission1)="COVID-Related Admission?"
label(data$admission_date)="Admission Date:"
label(data$days_from_diagnosis_to_adm)="Days from diagnosis to admission:"
label(data$days_since_admission)="Days since admission:"
label(data$location)="Room Number:"
label(data$max_o2_requirement)="Max O2 requirement:"
label(data$max_o2_date)="First Date of Max O2 Requirement:"
label(data$max_crp_mg_l)="Max CRP (mg/L):"
label(data$date_of_max_crp)="Date of Max CRP:"
label(data$transferred_to_icu)="Transferred to ICU?"
label(data$icu_transfer_date)="Enter ICU Date:"
label(data$days_from_diagnosis_to_icu)="Days from diagnosis to ICU:"
label(data$days_from_admission_to_icu)="Days from admission to ICU:"
label(data$out_of_icu_date)="Leave ICU Date:"
label(data$length_of_icu_stay)="Length of ICU stay:"
label(data$intubated)="Intubated?"
label(data$intubation_date)="Intubation Date:"
label(data$days_from_diagnosis_to_int)="Days from diagnosis to intubation:"
label(data$days_from_admission_to_int)="Days from admission to intubation:"
label(data$extubation_date)="Extubation date:"
label(data$length_of_intubation)="Length of intubation:"
label(data$current_inpatient)="Current Inpatient?"
label(data$discharge_date)="Discharge Date:"
label(data$length_of_hospitalization)="Length of hospitalization:"
label(data$days_from_diagnosis_to_dis)="Days from diagnosis to discharge:"
label(data$death_date)="Death Date:"
label(data$days_from_admission_to_dea)="Days from admission to death:"
label(data$days_from_diagnosis_to_dea)="Days from diagnosis to death:"
label(data$clinical_course)="Clinical Course:"
label(data$special_group_population)="Special Group/Population:"
label(data$disease_severity)="Disease Severity:"
label(data$clinical_information_complete)="Complete?"
label(data$symptoms_in_hpi___1)="Symptoms Present in HPI: (choice=Congestion)"
label(data$symptoms_in_hpi___2)="Symptoms Present in HPI: (choice=Runny Nose)"
label(data$symptoms_in_hpi___3)="Symptoms Present in HPI: (choice=Cough)"
label(data$symptoms_in_hpi___4)="Symptoms Present in HPI: (choice=SOB)"
label(data$symptoms_in_hpi___5)="Symptoms Present in HPI: (choice=DOE)"
label(data$symptoms_in_hpi___6)="Symptoms Present in HPI: (choice=Headache)"
label(data$symptoms_in_hpi___7)="Symptoms Present in HPI: (choice=Fever)"
label(data$symptoms_in_hpi___8)="Symptoms Present in HPI: (choice=Nausea/Vomiting)"
label(data$symptoms_in_hpi___9)="Symptoms Present in HPI: (choice=Diarrhea)"
label(data$symptoms_in_hpi___10)="Symptoms Present in HPI: (choice=Myalgia)"
label(data$symptoms_in_hpi___11)="Symptoms Present in HPI: (choice=Other)"
label(data$other_symptoms2)="Other Symptoms:"
label(data$admission_v2)="Admitted?"
label(data$covid_related_admission2)="COVID-Related Admission?"
label(data$admission_date_v2)="Admission Date:"
label(data$days_from_diagnosis_to_adm_v2)="Days from diagnosis to admission:"
label(data$days_since_admission_v2)="Days since admission:"
label(data$location_v2)="Room Number:"
label(data$max_o2_requirement_v2)="Max O2 requirement:"
label(data$first_date_of_max_o2_req)="First Date of Max O2 Requirement:"
label(data$max_crp)="Max CRP (mg/L):"
label(data$date_max_crp)="Date of Max CRP:"
label(data$transferred_to_icu_v2)="Transferred to ICU?"
label(data$icu_transfer_date_v2)="Enter ICU Date:"
label(data$days_from_diagnosis_to_icu_v2)="Days from diagnosis to ICU:"
label(data$days_from_admission_to_icu_v2)="Days from admission to ICU:"
label(data$out_of_icu_date_v2)="Leave ICU Date:"
label(data$length_of_icu_stay_v2)="Length of ICU stay:"
label(data$intubated_v2)="Intubated?"
label(data$intubation_date_v2)="Intubation Date:"
label(data$days_from_diagnosis_to_int_v2)="Days from diagnosis to intubation:"
label(data$days_from_admission_to_int_v2)="Days from admission to intubation:"
label(data$extubation_date_v2)="Extubation date:"
label(data$length_of_intubation_v2)="Length of intubation:"
label(data$current_inpatient_v2)="Current Inpatient?"
label(data$discharge_date_v2)="Discharge Date:"
label(data$length_of_hospitalization_v2)="Length of hospitalization:"
label(data$days_from_diagnosis_to_dis_v2)="Days from diagnosis to discharge:"
label(data$death_date_v2)="Death Date:"
label(data$days_from_admission_to_dea_v2)="Days from admission to death:"
label(data$days_from_diagnosis_to_dea_v2)="Days from diagnosis to death:"
label(data$clinical_course2)="Clinical Course:"
label(data$special_group_population2)="Special Group/Population:"
label(data$disease_severity2)="Disease Severity:"
label(data$readmission_information_complete)="Complete?"
label(data$mrn_third)="MRN:"
label(data$symptoms_present_in_hpi_third___1)="Symptoms Present in HPI: (choice=Congestion)"
label(data$symptoms_present_in_hpi_third___2)="Symptoms Present in HPI: (choice=Runny Nose)"
label(data$symptoms_present_in_hpi_third___3)="Symptoms Present in HPI: (choice=Cough)"
label(data$symptoms_present_in_hpi_third___4)="Symptoms Present in HPI: (choice=SOB)"
label(data$symptoms_present_in_hpi_third___5)="Symptoms Present in HPI: (choice=DOE)"
label(data$symptoms_present_in_hpi_third___6)="Symptoms Present in HPI: (choice=Headache)"
label(data$symptoms_present_in_hpi_third___7)="Symptoms Present in HPI: (choice=Fever)"
label(data$symptoms_present_in_hpi_third___8)="Symptoms Present in HPI: (choice=Nausea/Vomiting)"
label(data$symptoms_present_in_hpi_third___9)="Symptoms Present in HPI: (choice=Diarrhea)"
label(data$symptoms_present_in_hpi_third___10)="Symptoms Present in HPI: (choice=Myalgia)"
label(data$symptoms_present_in_hpi_third___11)="Symptoms Present in HPI: (choice=Other)"
label(data$other_symptoms_third)="Other Symptoms:"
label(data$admission_third)="Admitted?"
label(data$covid_related_admission3)="COVID-Related Admission?"
label(data$admission_date_third)="Admission Date:"
label(data$days_from_diagnosis_to_adm_third)="Days from diagnosis to admission:"
label(data$days_since_admission_third)="Days since admission:"
label(data$location_third)="Room Number:"
label(data$max_o2_requirement_third)="Max O2 requirement:"
label(data$max_o2_date_third)="First Date of Max O2 Requirement:"
label(data$max_crp_mg_l_third)="Max CRP (mg/L):"
label(data$date_of_max_crp_third)="Date of Max CRP:"
label(data$transferred_to_icu_third)="Transferred to ICU?"
label(data$icu_transfer_date_third)="Enter ICU Date:"
label(data$days_from_diagnosis_to_icu_third)="Days from diagnosis to ICU:"
label(data$days_from_admission_to_icu_third)="Days from admission to ICU:"
label(data$out_of_icu_date_third)="Leave ICU Date:"
label(data$length_of_icu_stay_third)="Length of ICU stay:"
label(data$intubated_third)="Intubated?"
label(data$intubation_date_third)="Intubation Date:"
label(data$days_from_diagnosis_to_int_third)="Days from diagnosis to intubation:"
label(data$days_from_admission_to_int_third)="Days from admission to intubation:"
label(data$extubation_date_third)="Extubation date:"
label(data$length_of_intubation_third)="Length of intubation:"
label(data$current_inpatient_third)="Current Inpatient?"
label(data$discharge_date_third)="Discharge Date:"
label(data$length_of_hospitalization_third)="Length of hospitalization:"
label(data$days_from_diagnosis_to_dis_third)="Days from diagnosis to discharge:"
label(data$death_date_third)="Death Date:"
label(data$days_from_admission_to_dea_third)="Days from admission to death:"
label(data$days_from_diagnosis_to_dea_third)="Days from diagnosis to death:"
label(data$clinical_course_third)="Clinical Course:"
label(data$special_group_population_third)="Special Group/Population:"
label(data$disease_severity_third)="Disease Severity:"
label(data$third_admission_clinical_information_complete)="Complete?"
label(data$date_therapy)="Start Date:"
label(data$therapy_name)="Therapy Name:"
label(data$antibiotic)="Antibiotic:"
label(data$therapy_name_other)="Therapy Name:"
label(data$antibiotic_name)="Antibiotic:"
label(data$irb)="IRB:"
label(data$irb_other)="IRB:"
label(data$patient_id)="Patient ID:"
label(data$dose)="Dose (mg):"
label(data$day_1_dose_if_different_mg)="Day 1 dose if different (mg):"
label(data$dose_mg_kg)="Dose (mg/kg):"
label(data$day_1_dose_if_different_kg)="Day 1 dose if different (mg/kg):"
label(data$days_of_treatment_course)="Days of treatment course:"
label(data$therapy_complete)="Complete?"
label(data$blood_date)="Blood Collection Date:"
label(data$blood_received_date)="Blood Received Date:"
label(data$thaw_for_blood___1)="Thaw For: (choice=Germline DNA)"
label(data$thaw_for_blood___2)="Thaw For: (choice=ELISA)"
label(data$thaw_for_blood___3)="Thaw For: (choice=Luminex)"
label(data$thaw_for_blood___4)="Thaw For: (choice=MSD 4-Plex)"
label(data$thaw_for_blood___11)="Thaw For: (choice=MSD 11-Plex)"
label(data$thaw_for_blood___5)="Thaw For: (choice=Point of Care Antibody Testing)"
label(data$thaw_for_blood___6)="Thaw For: (choice=Vitamin D)"
label(data$thaw_for_blood___7)="Thaw For: (choice=Butyrate)"
label(data$thaw_for_blood___8)="Thaw For: (choice=Flow Cytometry)"
label(data$thaw_for_blood___9)="Thaw For: (choice=ELISPOT)"
label(data$thaw_for_blood___10)="Thaw For: (choice=RNA Sequencing)"
label(data$gdna_tube)="Germline DNA Tube?"
label(data$germline_dna_sample_id)="Germline DNA Sample ID:"
label(data$germline_dna_storage_locat)="Germline DNA Storage Location:"
label(data$germline_dna_processing_da)="Germline DNA Isolation Date:"
label(data$germline_dna_concentration)="Germline DNA Concentration (ng/uL):"
label(data$germline_dna_sequencing_su)="Germline DNA Sequencing Submission Date:"
label(data$germline_dna_volume_remain)="Germline DNA Volume Remaining (uL):"
label(data$number_of_smart_buffer)="Number of Smart Buffer Tubes:"
label(data$smart_buffer_tube_labels)="Smart Buffer Tube Labels:"
label(data$smart_buffer_tube_storage)="Smart Buffer Tube Storage Location:"
label(data$thaw_for_flow)="Thaw for Flow?"
label(data$flow_date)="Flow Date:"
label(data$number_of_serum_vials)="Number of Serum Vials:"
label(data$volume_per_vial_ul_serum)="Serum Volume Per Vial (uL):"
label(data$serum_label)="Serum Label:"
label(data$serum_storage_location)="Serum Storage Location:"
label(data$serum_testing___1)="Serum Testing: (choice=ELISA)"
label(data$serum_testing___2)="Serum Testing: (choice=Luminex)"
label(data$serum_testing___3)="Serum Testing: (choice=MSD 4-Plex)"
label(data$serum_testing___8)="Serum Testing: (choice=MSD 11-Plex)"
label(data$serum_testing___4)="Serum Testing: (choice=Point of Care Antibody Testing)"
label(data$serum_testing___5)="Serum Testing: (choice=Vitamin D)"
label(data$serum_testing___6)="Serum Testing: (choice=Butyrate)"
label(data$serum_testing___7)="Serum Testing: (choice=Other)"
label(data$serum_processing_date)="ELISA Date:"
label(data$serum_thaw_position)="Serum Thaw Position:"
label(data$msd_4_plex_date)="MSD 4-Plex Date:"
label(data$msd_11_plex_date_blood)="MSD 11-Plex Date:"
label(data$serum_other)="Other Serum Testing:"
label(data$serum_vials_remaining)="Serum Vials Remaining:"
label(data$number_of_plasma_vials)="Number of Plasma Vials:"
label(data$volume_per_vial_plasma)="Plasma Volume Per Vial (mL):"
label(data$plasma_label)="Plasma Label:"
label(data$plasma_storage_location)="Plasma Storage Location:"
label(data$plasma_note)="Plasma Note:"
label(data$plasma_thaw_date)="Plasma Thaw Date:"
label(data$plasma_vials_remaining)="Plasma Vials Remaining:"
label(data$number_of_pbmc_vials)="Number of PBMC Vials:"
label(data$pbmc_volume_per_vial_ml)="PBMC Volume Per Vial (mL):"
label(data$pbmc_viability)="PBMC Viability (%):"
label(data$pbmc_count_x10_6)="PBMC Live Cell Count (x10^6)"
label(data$pbmc_label)="PBMC Label:"
label(data$pbmc_storage_location)="PBMC Storage Location:"
label(data$pbmc_tests___1)="PBMC Testing: (choice=Flow cytometry)"
label(data$pbmc_tests___2)="PBMC Testing: (choice=RNA sequencing)"
label(data$pbmc_tests___3)="PBMC Testing: (choice=ELISPOT)"
label(data$pbmc_tests___4)="PBMC Testing: (choice=Other)"
label(data$flow_processing_date)="Flow Processing Date:"
label(data$took_from_location)="Took from Location:"
label(data$rna_sequencing_pbmc)="RNA Sequencing Submission Date:"
label(data$functional_assays)="ELISPOT Date:"
label(data$other_pbmc_testing)="Other PBMC Testing:"
label(data$pbmc_vials_remaining)="PBMC Vials Remaining:"
label(data$blood_sample_complete)="Complete?"
label(data$blood_date_cbc)="CBC Collection Date:"
label(data$accession_number_cbc)="Accession Number:"
label(data$sample_present_cbc)="Sample present in clinical lab?"
label(data$blood_received_date_cbc)="CBC Received Date:"
label(data$thaw_for_gdna)="Thaw for Germline DNA Sequencing?"
label(data$storage_location_20)="Storage Location (-20):"
label(data$germline_dna_processing_da_cbc)="Germline DNA Isolation Date:"
label(data$germline_dna_vol_cbc)="Germline DNA Volume (uL):"
label(data$germline_dna_concentration_cbc)="Germline DNA Concentration (ng/uL):"
label(data$germline_dna_sample_id_cbc)="Germline DNA Sample ID:"
label(data$germline_dna_storage_locat_cbc)="Germline DNA Storage Location:"
label(data$germline_dna_sequencing_su_cbc)="Germline DNA Sequencing Submission Date:"
label(data$leftover_cbc_complete)="Complete?"
label(data$blood_date_bmp)="BMP Collection Date:"
label(data$accession_number_bmp)="Accession Number:"
label(data$sample_present_bmp)="Sample present in clinical lab?"
label(data$blood_received_date_bmp)="BMP Received Date:"
label(data$thaw_for_bmp___1)="Thaw For: (choice=ELISA)"
label(data$thaw_for_bmp___2)="Thaw For: (choice=Luminex)"
label(data$thaw_for_bmp___3)="Thaw For: (choice=MSD 4-Plex)"
label(data$thaw_for_bmp___7)="Thaw For: (choice=MSD 11-Plex)"
label(data$thaw_for_bmp___4)="Thaw For: (choice=Point of Care Antibody Testing)"
label(data$thaw_for_bmp___5)="Thaw For: (choice=Vitamin D)"
label(data$thaw_for_bmp___6)="Thaw For: (choice=Butyrate)"
label(data$number_of_serum_vials_bmp)="Number of Plasma Vials:"
label(data$volume_per_vial_ul)="Volume Per Vial (uL):"
label(data$plasma_label_bmp)="Plasma Label:"
label(data$serum_storage_location_bmp)="Plasma Storage Location:"
label(data$plasma_thaw_position)="Plasma Thaw Position:"
label(data$serum_testing_bmp___1)="Plasma Testing: (choice=ELISA)"
label(data$serum_testing_bmp___2)="Plasma Testing: (choice=Luminex)"
label(data$serum_testing_bmp___3)="Plasma Testing: (choice=MSD 4-Plex)"
label(data$serum_testing_bmp___8)="Plasma Testing: (choice=MSD 11-Plex)"
label(data$serum_testing_bmp___4)="Plasma Testing: (choice=Point of Care Antibody Testing)"
label(data$serum_testing_bmp___5)="Plasma Testing: (choice=Vitamin D)"
label(data$serum_testing_bmp___6)="Plasma Testing: (choice=Butyrate)"
label(data$serum_testing_bmp___7)="Plasma Testing: (choice=Other)"
label(data$serum_processing_date_bmp)="ELISA Date:"
label(data$bmp_plex_date)="MSD 4-Plex Date:"
label(data$msd_11_plex_date_bmp)="MSD 11-Plex Date:"
label(data$serum_other_bmp)="Other Plasma Testing:"
label(data$serum_volume_remaining_ul_bmp)="Plasma Vials Remaining:"
label(data$leftover_bmp_complete)="Complete?"
label(data$diagnostic_swab_date)="Swab Collection Date:"
label(data$swab_type)="Swab Type:"
label(data$covid_19_status)="COVID-19 Status:"
label(data$np_swab_accession_number)="Swab Accession Number:"
label(data$np_swab_received_date)="Swab Received Date:"
label(data$thaw_for_diagnostic___1)="Thaw For: (choice=Viral RNA)"
label(data$thaw_for_diagnostic___2)="Thaw For: (choice=Microbiome)"
label(data$thaw_for_diagnostic___3)="Thaw For: (choice=gDNA)"
label(data$np_swab_concentration)="RNA Concentration (ng/uL):"
label(data$np_swab_volume)="RNA Volume (uL):"
label(data$rna_sample_id_np)="RNA Sample ID:"
label(data$rna_storage_location)="RNA Storage Location:"
label(data$dna_sample_id_np)="DNA Sample ID:"
label(data$dna_storage_location)="DNA Storage Location:"
label(data$rna_processing_date_np)="RNA Isolation Date:"
label(data$rna_analysis_date_np)="RNA Analysis Date:"
label(data$rna_volume_remaining_np)="RNA Volume Remaining (uL):"
label(data$dna_processing_date_np)="DNA Isolation Date:"
label(data$dna_concentration_np)="DNA Concentration (ng/uL):"
label(data$gdna_sequencing_date_np)="gDNA Sequencing Submission Date:"
label(data$microbiome_sequencing_np)="Microbiome Sequencing Submission Date:"
label(data$dna_volume_remaining_ul)="DNA Volume Remaining (uL):"
label(data$diagnostic_sample_complete)="Complete?"
label(data$swab_type_research)="Swab Type:"
label(data$op_swab_date)="Swab Collection Date:"
label(data$op_swab_received_date)="Swab Received Date:"
label(data$thaw_for___1)="Thaw For: (choice=Viral RNA)"
label(data$thaw_for___2)="Thaw For: (choice=Microbiome)"
label(data$thaw_for___3)="Thaw For: (choice=gDNA)"
label(data$op_swab_volume)="RNA Volume (uL):"
label(data$op_swab_concentration)="RNA Concentration (ng/uL):"
label(data$rna_sample_id_op)="RNA Sample ID:"
label(data$rna_storage_location_op)="RNA Storage Location:"
label(data$dna_sample_id_op)="DNA Sample ID:"
label(data$dna_storage_location_op)="DNA Storage Location:"
label(data$rna_processing_date_op)="RNA Isolation Date:"
label(data$rna_analysis_date_op)="RNA Analysis Date:"
label(data$rna_volume_remaining_op)="RNA Volume Remaining (uL):"
label(data$dna_processing_date_op)="DNA Isolation Date:"
label(data$dna_concentration_op)="DNA Concentration (ng/uL):"
label(data$gdna_sequencing_date_op)="gDNA Sequencing Submission Date:"
label(data$microbiome_sequencing_op)="Microbiome Sequencing Submission Date:"
label(data$dna_volume_remaining_op)="DNA Volume Remaining (uL):"
label(data$op_swab_complete)="Complete?"
label(data$ta_date)="Tracheal Aspirate Collection Date:"
label(data$ta_received_date)="Tracheal Aspirate Received Date:"
label(data$thaw_for_ta___1)="Thaw For: (choice=Viral RNA)"
label(data$thaw_for_ta___2)="Thaw For: (choice=Microbiome)"
label(data$thaw_for_ta___3)="Thaw For: (choice=RNA Sequencing)"
label(data$rna_sample_id_ta)="RNA Sample ID:"
label(data$rna_storage_location_ta)="RNA Storage Location (2 mL):"
label(data$rna_storage_location_15_ta)="RNA Storage Location (15 mL):"
label(data$dna_sample_id_ta)="DNA Sample ID:"
label(data$dna_storage_location_ta)="DNA Storage Location:"
label(data$rna_processing_date_ta)="RNA Isolation Date:"
label(data$rna_concentration_ta)="RNA Concentration (ng/uL):"
label(data$rna_analysis_date_ta)="RNA Analysis Date:"
label(data$rna_volume_remaining_ta)="RNA Volume Remaining (uL):"
label(data$dna_processing_date_ta)="DNA Isolation Date:"
label(data$dna_concentration_ta)="DNA Concentration (ng/uL):"
label(data$microbiome_seq_ta)="Microbiome Sequencing Submission Date:"
label(data$dna_volume_remaining_ta)="DNA Volume Remaining (uL):"
label(data$rna_seq_concentration_ta)="RNA Concentration (ng/uL):"
label(data$rna_seq_ta)="RNA Sequencing Submission Date:"
label(data$rnaseq_volume_remaining_ta)="RNA Volume Remaining (uL):"
label(data$tracheal_aspirate_complete)="Complete?"
label(data$ow_date)="Oral Wash Collection Date:"
label(data$ow_received_date)="Oral Wash Received Date:"
label(data$dna_sample_id_opow)="Oral Wash Sample ID:"
label(data$dna_storage_location_ow)="Oral Wash Storage Location:"
label(data$oral_wash_complete)="Complete?"
label(data$ow_date_saliva)="Saliva Collection Date:"
label(data$ow_received_date_saliva)="Saliva Received Date:"
label(data$sample_id_saliva)="Saliva Sample ID:"
label(data$dna_sample_id_opow_saliva)="Saliva Storage Location:"
label(data$saliva_complete)="Complete?"
label(data$ow_date_stool)="Stool Collection Date:"
label(data$ow_received_date_stool)="Stool Received Date:"
label(data$thaw_for_microbiome)="Thaw for Microbiome Sequencing?"
label(data$dna_sample_id_opow_stool)="DNA Sample ID:"
label(data$dna_storage_location_ow_stool)="DNA Storage Location (2 mL):"
label(data$dna_storage_location_15_ow_stool)="DNA Storage Location (15 mL):"
label(data$dna_processing_date_ow_stool)="DNA Processing Date:"
label(data$dna_concentration_opow_stool)="DNA Concentration (ng/uL):"
label(data$microbiome_sequencing_ow_stool)="Microbiome Sequencing Submission Date:"
label(data$dna_volume_remaining_opow_stool)="DNA Volume Remaining (uL):"
label(data$stool_complete)="Complete?"
label(data$sample_type)="Sample Type:"
label(data$sample_collection_date)="Sample Collection Date:"
label(data$sample_received_date)="Sample Received Date:"
label(data$sample_id)="Sample ID:"
label(data$sample_storage_location)="Sample Storage Location:"
label(data$additional_samples_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$redcap_repeat_instrument.factor = factor(data$redcap_repeat_instrument,levels=c("therapy","blood_sample","leftover_cbc","leftover_bmp","diagnostic_sample","op_swab","tracheal_aspirate","oral_wash"))
data$registration_complete.factor = factor(data$registration_complete,levels=c("0","1","2"))
data$blood_samples.factor = factor(data$blood_samples,levels=c("1","0"))
data$throat_swabs.factor = factor(data$throat_swabs,levels=c("1","0"))
data$trach_samples.factor = factor(data$trach_samples,levels=c("1","0"))
data$gen_samples.factor = factor(data$gen_samples,levels=c("1","0"))
data$tissue_samples.factor = factor(data$tissue_samples,levels=c("1","0"))
data$leftover_samples.factor = factor(data$leftover_samples,levels=c("1","0"))
data$relationship.factor = factor(data$relationship,levels=c("1","2","3"))
data$relationship_type.factor = factor(data$relationship_type,levels=c("1","2","3","4","5","6","7","8"))
data$paper_consent_status.factor = factor(data$paper_consent_status,levels=c("1","4","5","2","3"))
data$paper_consent_sample_agree___1.factor = factor(data$paper_consent_sample_agree___1,levels=c("0","1"))
data$paper_consent_sample_agree___2.factor = factor(data$paper_consent_sample_agree___2,levels=c("0","1"))
data$paper_consent_sample_agree___3.factor = factor(data$paper_consent_sample_agree___3,levels=c("0","1"))
data$paper_consent_sample_agree___4.factor = factor(data$paper_consent_sample_agree___4,levels=c("0","1"))
data$paper_consent_sample_agree___5.factor = factor(data$paper_consent_sample_agree___5,levels=c("0","1"))
data$paper_consent_sample_agree___6.factor = factor(data$paper_consent_sample_agree___6,levels=c("0","1"))
data$willing_to_participate_in.factor = factor(data$willing_to_participate_in,levels=c("1","0"))
data$covidconsent_complete.factor = factor(data$covidconsent_complete,levels=c("0","1","2"))
data$agree_all.factor = factor(data$agree_all,levels=c("1","0"))
data$adult_child.factor = factor(data$adult_child,levels=c("1","2"))
data$leftover_blood_cells_and_f.factor = factor(data$leftover_blood_cells_and_f,levels=c("1","2"))
data$blood.factor = factor(data$blood,levels=c("1","2"))
data$throat_or_nose_swabs.factor = factor(data$throat_or_nose_swabs,levels=c("1","2"))
data$saliva.factor = factor(data$saliva,levels=c("1","2"))
data$mucus_from_a_breathing_tub.factor = factor(data$mucus_from_a_breathing_tub,levels=c("1","2"))
data$stool_sample.factor = factor(data$stool_sample,levels=c("1","2"))
data$child_blood_samples.factor = factor(data$child_blood_samples,levels=c("1","2"))
data$child_saliva.factor = factor(data$child_saliva,levels=c("1","2"))
data$circadian.factor = factor(data$circadian,levels=c("1","2"))
data$genetic_research.factor = factor(data$genetic_research,levels=c("1","0"))
data$relationship_a73244.factor = factor(data$relationship_a73244,levels=c("1","2","3"))
data$paper_consent_status_0aabae.factor = factor(data$paper_consent_status_0aabae,levels=c("1","2","3","4","5"))
data$paper_consent_sample___1.factor = factor(data$paper_consent_sample___1,levels=c("0","1"))
data$paper_consent_sample___2.factor = factor(data$paper_consent_sample___2,levels=c("0","1"))
data$paper_consent_sample___3.factor = factor(data$paper_consent_sample___3,levels=c("0","1"))
data$paper_consent_sample___4.factor = factor(data$paper_consent_sample___4,levels=c("0","1"))
data$paper_consent_sample___5.factor = factor(data$paper_consent_sample___5,levels=c("0","1"))
data$paper_consent_sample___6.factor = factor(data$paper_consent_sample___6,levels=c("0","1"))
data$paper_consent_sample___7.factor = factor(data$paper_consent_sample___7,levels=c("0","1"))
data$icu_followup.factor = factor(data$icu_followup,levels=c("1","0"))
data$new_biobank_consent_complete.factor = factor(data$new_biobank_consent_complete,levels=c("0","1","2"))
data$symptoms_present_survey___1.factor = factor(data$symptoms_present_survey___1,levels=c("0","1"))
data$symptoms_present_survey___2.factor = factor(data$symptoms_present_survey___2,levels=c("0","1"))
data$symptoms_present_survey___3.factor = factor(data$symptoms_present_survey___3,levels=c("0","1"))
data$symptoms_present_survey___4.factor = factor(data$symptoms_present_survey___4,levels=c("0","1"))
data$symptoms_present_survey___5.factor = factor(data$symptoms_present_survey___5,levels=c("0","1"))
data$symptoms_present_survey___6.factor = factor(data$symptoms_present_survey___6,levels=c("0","1"))
data$symptoms_present_survey___7.factor = factor(data$symptoms_present_survey___7,levels=c("0","1"))
data$symptoms_present_survey___8.factor = factor(data$symptoms_present_survey___8,levels=c("0","1"))
data$symptoms_present_survey___9.factor = factor(data$symptoms_present_survey___9,levels=c("0","1"))
data$symptoms_present_survey___10.factor = factor(data$symptoms_present_survey___10,levels=c("0","1"))
data$symptoms_present_survey___11.factor = factor(data$symptoms_present_survey___11,levels=c("0","1"))
data$covid_test.factor = factor(data$covid_test,levels=c("1","0"))
data$test_result.factor = factor(data$test_result,levels=c("1","2"))
data$seek_med_attention.factor = factor(data$seek_med_attention,levels=c("1","2","3","4"))
data$supplemental_oxygen.factor = factor(data$supplemental_oxygen,levels=c("1","2","3","4","5","6","7"))
data$icu.factor = factor(data$icu,levels=c("1","0"))
data$clinical_survey_complete.factor = factor(data$clinical_survey_complete,levels=c("0","1","2"))
data$study_recruitment_method.factor = factor(data$study_recruitment_method,levels=c("1","2","3","4","5","7","8","6"))
data$past_medical_history___1.factor = factor(data$past_medical_history___1,levels=c("0","1"))
data$past_medical_history___2.factor = factor(data$past_medical_history___2,levels=c("0","1"))
data$past_medical_history___3.factor = factor(data$past_medical_history___3,levels=c("0","1"))
data$past_medical_history___4.factor = factor(data$past_medical_history___4,levels=c("0","1"))
data$past_medical_history___5.factor = factor(data$past_medical_history___5,levels=c("0","1"))
data$past_medical_history___6.factor = factor(data$past_medical_history___6,levels=c("0","1"))
data$past_medical_history___7.factor = factor(data$past_medical_history___7,levels=c("0","1"))
data$past_medical_history___8.factor = factor(data$past_medical_history___8,levels=c("0","1"))
data$past_medical_history___9.factor = factor(data$past_medical_history___9,levels=c("0","1"))
data$past_medical_history___10.factor = factor(data$past_medical_history___10,levels=c("0","1"))
data$past_medical_history___11.factor = factor(data$past_medical_history___11,levels=c("0","1"))
data$past_medical_history___13.factor = factor(data$past_medical_history___13,levels=c("0","1"))
data$past_medical_history___14.factor = factor(data$past_medical_history___14,levels=c("0","1"))
data$past_medical_history___12.factor = factor(data$past_medical_history___12,levels=c("0","1"))
data$symptoms_present_in_hpi___1.factor = factor(data$symptoms_present_in_hpi___1,levels=c("0","1"))
data$symptoms_present_in_hpi___2.factor = factor(data$symptoms_present_in_hpi___2,levels=c("0","1"))
data$symptoms_present_in_hpi___3.factor = factor(data$symptoms_present_in_hpi___3,levels=c("0","1"))
data$symptoms_present_in_hpi___4.factor = factor(data$symptoms_present_in_hpi___4,levels=c("0","1"))
data$symptoms_present_in_hpi___5.factor = factor(data$symptoms_present_in_hpi___5,levels=c("0","1"))
data$symptoms_present_in_hpi___6.factor = factor(data$symptoms_present_in_hpi___6,levels=c("0","1"))
data$symptoms_present_in_hpi___7.factor = factor(data$symptoms_present_in_hpi___7,levels=c("0","1"))
data$symptoms_present_in_hpi___8.factor = factor(data$symptoms_present_in_hpi___8,levels=c("0","1"))
data$symptoms_present_in_hpi___9.factor = factor(data$symptoms_present_in_hpi___9,levels=c("0","1"))
data$symptoms_present_in_hpi___10.factor = factor(data$symptoms_present_in_hpi___10,levels=c("0","1"))
data$symptoms_present_in_hpi___11.factor = factor(data$symptoms_present_in_hpi___11,levels=c("0","1"))
data$admission.factor = factor(data$admission,levels=c("1","0"))
data$covid_related_admission1.factor = factor(data$covid_related_admission1,levels=c("1","0"))
data$max_o2_requirement.factor = factor(data$max_o2_requirement,levels=c("1","2","3","4","5","6","7"))
data$transferred_to_icu.factor = factor(data$transferred_to_icu,levels=c("1","0"))
data$intubated.factor = factor(data$intubated,levels=c("1","0"))
data$current_inpatient.factor = factor(data$current_inpatient,levels=c("1","0"))
data$disease_severity.factor = factor(data$disease_severity,levels=c("1","2","3","4","5","6"))
data$clinical_information_complete.factor = factor(data$clinical_information_complete,levels=c("0","1","2"))
data$symptoms_in_hpi___1.factor = factor(data$symptoms_in_hpi___1,levels=c("0","1"))
data$symptoms_in_hpi___2.factor = factor(data$symptoms_in_hpi___2,levels=c("0","1"))
data$symptoms_in_hpi___3.factor = factor(data$symptoms_in_hpi___3,levels=c("0","1"))
data$symptoms_in_hpi___4.factor = factor(data$symptoms_in_hpi___4,levels=c("0","1"))
data$symptoms_in_hpi___5.factor = factor(data$symptoms_in_hpi___5,levels=c("0","1"))
data$symptoms_in_hpi___6.factor = factor(data$symptoms_in_hpi___6,levels=c("0","1"))
data$symptoms_in_hpi___7.factor = factor(data$symptoms_in_hpi___7,levels=c("0","1"))
data$symptoms_in_hpi___8.factor = factor(data$symptoms_in_hpi___8,levels=c("0","1"))
data$symptoms_in_hpi___9.factor = factor(data$symptoms_in_hpi___9,levels=c("0","1"))
data$symptoms_in_hpi___10.factor = factor(data$symptoms_in_hpi___10,levels=c("0","1"))
data$symptoms_in_hpi___11.factor = factor(data$symptoms_in_hpi___11,levels=c("0","1"))
data$admission_v2.factor = factor(data$admission_v2,levels=c("1","0"))
data$covid_related_admission2.factor = factor(data$covid_related_admission2,levels=c("1","0"))
data$max_o2_requirement_v2.factor = factor(data$max_o2_requirement_v2,levels=c("1","2","3","4","5","6","7"))
data$transferred_to_icu_v2.factor = factor(data$transferred_to_icu_v2,levels=c("1","0"))
data$intubated_v2.factor = factor(data$intubated_v2,levels=c("1","0"))
data$current_inpatient_v2.factor = factor(data$current_inpatient_v2,levels=c("1","0"))
data$disease_severity2.factor = factor(data$disease_severity2,levels=c("1","2","3","4","5","6"))
data$readmission_information_complete.factor = factor(data$readmission_information_complete,levels=c("0","1","2"))
data$symptoms_present_in_hpi_third___1.factor = factor(data$symptoms_present_in_hpi_third___1,levels=c("0","1"))
data$symptoms_present_in_hpi_third___2.factor = factor(data$symptoms_present_in_hpi_third___2,levels=c("0","1"))
data$symptoms_present_in_hpi_third___3.factor = factor(data$symptoms_present_in_hpi_third___3,levels=c("0","1"))
data$symptoms_present_in_hpi_third___4.factor = factor(data$symptoms_present_in_hpi_third___4,levels=c("0","1"))
data$symptoms_present_in_hpi_third___5.factor = factor(data$symptoms_present_in_hpi_third___5,levels=c("0","1"))
data$symptoms_present_in_hpi_third___6.factor = factor(data$symptoms_present_in_hpi_third___6,levels=c("0","1"))
data$symptoms_present_in_hpi_third___7.factor = factor(data$symptoms_present_in_hpi_third___7,levels=c("0","1"))
data$symptoms_present_in_hpi_third___8.factor = factor(data$symptoms_present_in_hpi_third___8,levels=c("0","1"))
data$symptoms_present_in_hpi_third___9.factor = factor(data$symptoms_present_in_hpi_third___9,levels=c("0","1"))
data$symptoms_present_in_hpi_third___10.factor = factor(data$symptoms_present_in_hpi_third___10,levels=c("0","1"))
data$symptoms_present_in_hpi_third___11.factor = factor(data$symptoms_present_in_hpi_third___11,levels=c("0","1"))
data$admission_third.factor = factor(data$admission_third,levels=c("1","0"))
data$covid_related_admission3.factor = factor(data$covid_related_admission3,levels=c("1","0"))
data$max_o2_requirement_third.factor = factor(data$max_o2_requirement_third,levels=c("1","2","3","4","5","6","7"))
data$transferred_to_icu_third.factor = factor(data$transferred_to_icu_third,levels=c("1","0"))
data$intubated_third.factor = factor(data$intubated_third,levels=c("1","0"))
data$current_inpatient_third.factor = factor(data$current_inpatient_third,levels=c("1","0"))
data$disease_severity_third.factor = factor(data$disease_severity_third,levels=c("1","2","3","4","5","6"))
data$third_admission_clinical_information_complete.factor = factor(data$third_admission_clinical_information_complete,levels=c("0","1","2"))
data$therapy_name.factor = factor(data$therapy_name,levels=c("1","3","4","5","6","8","9","10","11","7"))
data$antibiotic.factor = factor(data$antibiotic,levels=c("1","2","3","4","5"))
data$irb.factor = factor(data$irb,levels=c("1","2","3","4"))
data$therapy_complete.factor = factor(data$therapy_complete,levels=c("0","1","2"))
data$thaw_for_blood___1.factor = factor(data$thaw_for_blood___1,levels=c("0","1"))
data$thaw_for_blood___2.factor = factor(data$thaw_for_blood___2,levels=c("0","1"))
data$thaw_for_blood___3.factor = factor(data$thaw_for_blood___3,levels=c("0","1"))
data$thaw_for_blood___4.factor = factor(data$thaw_for_blood___4,levels=c("0","1"))
data$thaw_for_blood___11.factor = factor(data$thaw_for_blood___11,levels=c("0","1"))
data$thaw_for_blood___5.factor = factor(data$thaw_for_blood___5,levels=c("0","1"))
data$thaw_for_blood___6.factor = factor(data$thaw_for_blood___6,levels=c("0","1"))
data$thaw_for_blood___7.factor = factor(data$thaw_for_blood___7,levels=c("0","1"))
data$thaw_for_blood___8.factor = factor(data$thaw_for_blood___8,levels=c("0","1"))
data$thaw_for_blood___9.factor = factor(data$thaw_for_blood___9,levels=c("0","1"))
data$thaw_for_blood___10.factor = factor(data$thaw_for_blood___10,levels=c("0","1"))
data$gdna_tube.factor = factor(data$gdna_tube,levels=c("1","0"))
data$thaw_for_flow.factor = factor(data$thaw_for_flow,levels=c("1","0"))
data$serum_testing___1.factor = factor(data$serum_testing___1,levels=c("0","1"))
data$serum_testing___2.factor = factor(data$serum_testing___2,levels=c("0","1"))
data$serum_testing___3.factor = factor(data$serum_testing___3,levels=c("0","1"))
data$serum_testing___8.factor = factor(data$serum_testing___8,levels=c("0","1"))
data$serum_testing___4.factor = factor(data$serum_testing___4,levels=c("0","1"))
data$serum_testing___5.factor = factor(data$serum_testing___5,levels=c("0","1"))
data$serum_testing___6.factor = factor(data$serum_testing___6,levels=c("0","1"))
data$serum_testing___7.factor = factor(data$serum_testing___7,levels=c("0","1"))
data$pbmc_tests___1.factor = factor(data$pbmc_tests___1,levels=c("0","1"))
data$pbmc_tests___2.factor = factor(data$pbmc_tests___2,levels=c("0","1"))
data$pbmc_tests___3.factor = factor(data$pbmc_tests___3,levels=c("0","1"))
data$pbmc_tests___4.factor = factor(data$pbmc_tests___4,levels=c("0","1"))
data$blood_sample_complete.factor = factor(data$blood_sample_complete,levels=c("0","1","2"))
data$sample_present_cbc.factor = factor(data$sample_present_cbc,levels=c("1","0"))
data$thaw_for_gdna.factor = factor(data$thaw_for_gdna,levels=c("1","0"))
data$leftover_cbc_complete.factor = factor(data$leftover_cbc_complete,levels=c("0","1","2"))
data$sample_present_bmp.factor = factor(data$sample_present_bmp,levels=c("1","0"))
data$thaw_for_bmp___1.factor = factor(data$thaw_for_bmp___1,levels=c("0","1"))
data$thaw_for_bmp___2.factor = factor(data$thaw_for_bmp___2,levels=c("0","1"))
data$thaw_for_bmp___3.factor = factor(data$thaw_for_bmp___3,levels=c("0","1"))
data$thaw_for_bmp___7.factor = factor(data$thaw_for_bmp___7,levels=c("0","1"))
data$thaw_for_bmp___4.factor = factor(data$thaw_for_bmp___4,levels=c("0","1"))
data$thaw_for_bmp___5.factor = factor(data$thaw_for_bmp___5,levels=c("0","1"))
data$thaw_for_bmp___6.factor = factor(data$thaw_for_bmp___6,levels=c("0","1"))
data$serum_testing_bmp___1.factor = factor(data$serum_testing_bmp___1,levels=c("0","1"))
data$serum_testing_bmp___2.factor = factor(data$serum_testing_bmp___2,levels=c("0","1"))
data$serum_testing_bmp___3.factor = factor(data$serum_testing_bmp___3,levels=c("0","1"))
data$serum_testing_bmp___8.factor = factor(data$serum_testing_bmp___8,levels=c("0","1"))
data$serum_testing_bmp___4.factor = factor(data$serum_testing_bmp___4,levels=c("0","1"))
data$serum_testing_bmp___5.factor = factor(data$serum_testing_bmp___5,levels=c("0","1"))
data$serum_testing_bmp___6.factor = factor(data$serum_testing_bmp___6,levels=c("0","1"))
data$serum_testing_bmp___7.factor = factor(data$serum_testing_bmp___7,levels=c("0","1"))
data$leftover_bmp_complete.factor = factor(data$leftover_bmp_complete,levels=c("0","1","2"))
data$swab_type.factor = factor(data$swab_type,levels=c("1","2"))
data$covid_19_status.factor = factor(data$covid_19_status,levels=c("1","2"))
data$thaw_for_diagnostic___1.factor = factor(data$thaw_for_diagnostic___1,levels=c("0","1"))
data$thaw_for_diagnostic___2.factor = factor(data$thaw_for_diagnostic___2,levels=c("0","1"))
data$thaw_for_diagnostic___3.factor = factor(data$thaw_for_diagnostic___3,levels=c("0","1"))
data$diagnostic_sample_complete.factor = factor(data$diagnostic_sample_complete,levels=c("0","1","2"))
data$swab_type_research.factor = factor(data$swab_type_research,levels=c("1","2","3"))
data$thaw_for___1.factor = factor(data$thaw_for___1,levels=c("0","1"))
data$thaw_for___2.factor = factor(data$thaw_for___2,levels=c("0","1"))
data$thaw_for___3.factor = factor(data$thaw_for___3,levels=c("0","1"))
data$op_swab_complete.factor = factor(data$op_swab_complete,levels=c("0","1","2"))
data$thaw_for_ta___1.factor = factor(data$thaw_for_ta___1,levels=c("0","1"))
data$thaw_for_ta___2.factor = factor(data$thaw_for_ta___2,levels=c("0","1"))
data$thaw_for_ta___3.factor = factor(data$thaw_for_ta___3,levels=c("0","1"))
data$tracheal_aspirate_complete.factor = factor(data$tracheal_aspirate_complete,levels=c("0","1","2"))
data$oral_wash_complete.factor = factor(data$oral_wash_complete,levels=c("0","1","2"))
data$saliva_complete.factor = factor(data$saliva_complete,levels=c("0","1","2"))
data$thaw_for_microbiome.factor = factor(data$thaw_for_microbiome,levels=c("1","0"))
data$stool_complete.factor = factor(data$stool_complete,levels=c("0","1","2"))
data$sample_type.factor = factor(data$sample_type,levels=c("1","2","3","4","5"))
data$additional_samples_complete.factor = factor(data$additional_samples_complete,levels=c("0","1","2"))

levels(data$redcap_repeat_instrument.factor)=c("Therapy","Blood Sample","Leftover CBC","Leftover BMP","Diagnostic Swab","Research Swab","Tracheal Aspirate","Oral Wash")
levels(data$registration_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$blood_samples.factor)=c("Yes","No")
levels(data$throat_swabs.factor)=c("Yes","No")
levels(data$trach_samples.factor)=c("Yes","No")
levels(data$gen_samples.factor)=c("Yes","No")
levels(data$tissue_samples.factor)=c("Yes","No")
levels(data$leftover_samples.factor)=c("Yes","No")
levels(data$relationship.factor)=c("I am the patient.","I am the legally authorized representative or legally designated healthcare power of attorney for the patient.","I am a proxy decision maker for the patient.")
levels(data$relationship_type.factor)=c("Spouse","Adult Child","Parent","Adult Sibling","Grandparent","Adult Grandchild","Adult Niece or Nephew","Other")
levels(data$paper_consent_status.factor)=c("Needs Paper Consent","Needs Mailed Consent","Paper Consent Mailed","Paper Consent Signed","Declined to Consent")
levels(data$paper_consent_sample_agree___1.factor)=c("Unchecked","Checked")
levels(data$paper_consent_sample_agree___2.factor)=c("Unchecked","Checked")
levels(data$paper_consent_sample_agree___3.factor)=c("Unchecked","Checked")
levels(data$paper_consent_sample_agree___4.factor)=c("Unchecked","Checked")
levels(data$paper_consent_sample_agree___5.factor)=c("Unchecked","Checked")
levels(data$paper_consent_sample_agree___6.factor)=c("Unchecked","Checked")
levels(data$willing_to_participate_in.factor)=c("Yes","No")
levels(data$covidconsent_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$agree_all.factor)=c("Yes","No")
levels(data$adult_child.factor)=c("Adult","Child")
levels(data$leftover_blood_cells_and_f.factor)=c("Yes","No")
levels(data$blood.factor)=c("Yes","No")
levels(data$throat_or_nose_swabs.factor)=c("Yes","No")
levels(data$saliva.factor)=c("Yes","No")
levels(data$mucus_from_a_breathing_tub.factor)=c("Yes","No")
levels(data$stool_sample.factor)=c("Yes","No")
levels(data$child_blood_samples.factor)=c("Yes","No")
levels(data$child_saliva.factor)=c("Yes","No")
levels(data$circadian.factor)=c("Yes","No")
levels(data$genetic_research.factor)=c("Yes","No")
levels(data$relationship_a73244.factor)=c("I am the patient.","I am a parent/guardian/legally authorized representative.","I am a surrogate decision maker for the patient.")
levels(data$paper_consent_status_0aabae.factor)=c("Needs Paper Consent","Needs Mailed Consent","Paper Consent Mailed","Paper Consent Signed","Declined to Consent")
levels(data$paper_consent_sample___1.factor)=c("Unchecked","Checked")
levels(data$paper_consent_sample___2.factor)=c("Unchecked","Checked")
levels(data$paper_consent_sample___3.factor)=c("Unchecked","Checked")
levels(data$paper_consent_sample___4.factor)=c("Unchecked","Checked")
levels(data$paper_consent_sample___5.factor)=c("Unchecked","Checked")
levels(data$paper_consent_sample___6.factor)=c("Unchecked","Checked")
levels(data$paper_consent_sample___7.factor)=c("Unchecked","Checked")
levels(data$icu_followup.factor)=c("Yes","No")
levels(data$new_biobank_consent_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$symptoms_present_survey___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_survey___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_survey___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_survey___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_survey___5.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_survey___6.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_survey___7.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_survey___8.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_survey___9.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_survey___10.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_survey___11.factor)=c("Unchecked","Checked")
levels(data$covid_test.factor)=c("Yes","No")
levels(data$test_result.factor)=c("Positive","Negative")
levels(data$seek_med_attention.factor)=c("Yes: Primary Care","Yes: Emergency Department","Yes: Hospitalized","No")
levels(data$supplemental_oxygen.factor)=c("None","<  2 L","2-3 L","4-6 L","High Flow Nasal Cannula","BiPAP","Intubation")
levels(data$icu.factor)=c("Yes","No")
levels(data$clinical_survey_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$study_recruitment_method.factor)=c("Inpatient","ED","Curbside Testing","Convalescent Plasma Donor","Hospitalist Survey","CTC","Pediatric","COVID Negative")
levels(data$past_medical_history___1.factor)=c("Unchecked","Checked")
levels(data$past_medical_history___2.factor)=c("Unchecked","Checked")
levels(data$past_medical_history___3.factor)=c("Unchecked","Checked")
levels(data$past_medical_history___4.factor)=c("Unchecked","Checked")
levels(data$past_medical_history___5.factor)=c("Unchecked","Checked")
levels(data$past_medical_history___6.factor)=c("Unchecked","Checked")
levels(data$past_medical_history___7.factor)=c("Unchecked","Checked")
levels(data$past_medical_history___8.factor)=c("Unchecked","Checked")
levels(data$past_medical_history___9.factor)=c("Unchecked","Checked")
levels(data$past_medical_history___10.factor)=c("Unchecked","Checked")
levels(data$past_medical_history___11.factor)=c("Unchecked","Checked")
levels(data$past_medical_history___13.factor)=c("Unchecked","Checked")
levels(data$past_medical_history___14.factor)=c("Unchecked","Checked")
levels(data$past_medical_history___12.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi___5.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi___6.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi___7.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi___8.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi___9.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi___10.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi___11.factor)=c("Unchecked","Checked")
levels(data$admission.factor)=c("Yes","No")
levels(data$covid_related_admission1.factor)=c("Yes","No")
levels(data$max_o2_requirement.factor)=c("None","<  2 L","2-3 L","4-6 L","HFNC","BiPAP","Intubation")
levels(data$transferred_to_icu.factor)=c("Yes","No")
levels(data$intubated.factor)=c("Yes","No")
levels(data$current_inpatient.factor)=c("Yes","No")
levels(data$disease_severity.factor)=c("Mild: not requiring hospitalization","Moderate: hospitalization, not requiring supplemental oxygen","Severe: hospitalization, requiring supplemental oxygen","Critical:  ICU/hospitalization, requiring NIV/ HFNC therapy","ICU with intubation or ECMO","Death")
levels(data$clinical_information_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$symptoms_in_hpi___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_in_hpi___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_in_hpi___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_in_hpi___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_in_hpi___5.factor)=c("Unchecked","Checked")
levels(data$symptoms_in_hpi___6.factor)=c("Unchecked","Checked")
levels(data$symptoms_in_hpi___7.factor)=c("Unchecked","Checked")
levels(data$symptoms_in_hpi___8.factor)=c("Unchecked","Checked")
levels(data$symptoms_in_hpi___9.factor)=c("Unchecked","Checked")
levels(data$symptoms_in_hpi___10.factor)=c("Unchecked","Checked")
levels(data$symptoms_in_hpi___11.factor)=c("Unchecked","Checked")
levels(data$admission_v2.factor)=c("Yes","No")
levels(data$covid_related_admission2.factor)=c("Yes","No")
levels(data$max_o2_requirement_v2.factor)=c("None","<  2 L","2-3 L","4-6 L","HFNC","BiPAP","Intubation")
levels(data$transferred_to_icu_v2.factor)=c("Yes","No")
levels(data$intubated_v2.factor)=c("Yes","No")
levels(data$current_inpatient_v2.factor)=c("Yes","No")
levels(data$disease_severity2.factor)=c("Mild: not requiring hospitalization","Moderate: hospitalization, not requiring supplemental oxygen","Severe: hospitalization, requiring supplemental oxygen","Critical:  ICU/hospitalization, requiring NIV/ HFNC therapy","ICU with intubation or ECMO","Death")
levels(data$readmission_information_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$symptoms_present_in_hpi_third___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi_third___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi_third___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi_third___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi_third___5.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi_third___6.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi_third___7.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi_third___8.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi_third___9.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi_third___10.factor)=c("Unchecked","Checked")
levels(data$symptoms_present_in_hpi_third___11.factor)=c("Unchecked","Checked")
levels(data$admission_third.factor)=c("Yes","No")
levels(data$covid_related_admission3.factor)=c("Yes","No")
levels(data$max_o2_requirement_third.factor)=c("None","<  2 L","2-3 L","4-6 L","HFNC","BiPAP","Intubation")
levels(data$transferred_to_icu_third.factor)=c("Yes","No")
levels(data$intubated_third.factor)=c("Yes","No")
levels(data$current_inpatient_third.factor)=c("Yes","No")
levels(data$disease_severity_third.factor)=c("Mild: not requiring hospitalization","Moderate: hospitalization, not requiring supplemental oxygen","Severe: hospitalization, requiring supplemental oxygen","Critical:  ICU/hospitalization, requiring NIV/ HFNC therapy","ICU with intubation or ECMO","Death")
levels(data$third_admission_clinical_information_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$therapy_name.factor)=c("Antibiotics","Hydroxychloroquine (Plaquenil)","Lopinavir/Ritonavir (Kaletra)","Remdesivir","Tocilizumab","Convalescent Plasma Infusion","VV-ECMO / Cytosorb","VV-ECMO Control Group","Leflunomide","Other")
levels(data$antibiotic.factor)=c("Vancomycin","Cefepime","Metronidazole","Azithromycin","Other")
levels(data$irb.factor)=c("20-0515 (COVIDOSE)","(COVACTA)","20-0430 (Remdesivir)","Other")
levels(data$therapy_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$thaw_for_blood___1.factor)=c("Unchecked","Checked")
levels(data$thaw_for_blood___2.factor)=c("Unchecked","Checked")
levels(data$thaw_for_blood___3.factor)=c("Unchecked","Checked")
levels(data$thaw_for_blood___4.factor)=c("Unchecked","Checked")
levels(data$thaw_for_blood___11.factor)=c("Unchecked","Checked")
levels(data$thaw_for_blood___5.factor)=c("Unchecked","Checked")
levels(data$thaw_for_blood___6.factor)=c("Unchecked","Checked")
levels(data$thaw_for_blood___7.factor)=c("Unchecked","Checked")
levels(data$thaw_for_blood___8.factor)=c("Unchecked","Checked")
levels(data$thaw_for_blood___9.factor)=c("Unchecked","Checked")
levels(data$thaw_for_blood___10.factor)=c("Unchecked","Checked")
levels(data$gdna_tube.factor)=c("Yes","No")
levels(data$thaw_for_flow.factor)=c("Yes","No")
levels(data$serum_testing___1.factor)=c("Unchecked","Checked")
levels(data$serum_testing___2.factor)=c("Unchecked","Checked")
levels(data$serum_testing___3.factor)=c("Unchecked","Checked")
levels(data$serum_testing___8.factor)=c("Unchecked","Checked")
levels(data$serum_testing___4.factor)=c("Unchecked","Checked")
levels(data$serum_testing___5.factor)=c("Unchecked","Checked")
levels(data$serum_testing___6.factor)=c("Unchecked","Checked")
levels(data$serum_testing___7.factor)=c("Unchecked","Checked")
levels(data$pbmc_tests___1.factor)=c("Unchecked","Checked")
levels(data$pbmc_tests___2.factor)=c("Unchecked","Checked")
levels(data$pbmc_tests___3.factor)=c("Unchecked","Checked")
levels(data$pbmc_tests___4.factor)=c("Unchecked","Checked")
levels(data$blood_sample_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$sample_present_cbc.factor)=c("Yes","No")
levels(data$thaw_for_gdna.factor)=c("Yes","No")
levels(data$leftover_cbc_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$sample_present_bmp.factor)=c("Yes","No")
levels(data$thaw_for_bmp___1.factor)=c("Unchecked","Checked")
levels(data$thaw_for_bmp___2.factor)=c("Unchecked","Checked")
levels(data$thaw_for_bmp___3.factor)=c("Unchecked","Checked")
levels(data$thaw_for_bmp___7.factor)=c("Unchecked","Checked")
levels(data$thaw_for_bmp___4.factor)=c("Unchecked","Checked")
levels(data$thaw_for_bmp___5.factor)=c("Unchecked","Checked")
levels(data$thaw_for_bmp___6.factor)=c("Unchecked","Checked")
levels(data$serum_testing_bmp___1.factor)=c("Unchecked","Checked")
levels(data$serum_testing_bmp___2.factor)=c("Unchecked","Checked")
levels(data$serum_testing_bmp___3.factor)=c("Unchecked","Checked")
levels(data$serum_testing_bmp___8.factor)=c("Unchecked","Checked")
levels(data$serum_testing_bmp___4.factor)=c("Unchecked","Checked")
levels(data$serum_testing_bmp___5.factor)=c("Unchecked","Checked")
levels(data$serum_testing_bmp___6.factor)=c("Unchecked","Checked")
levels(data$serum_testing_bmp___7.factor)=c("Unchecked","Checked")
levels(data$leftover_bmp_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$swab_type.factor)=c("Nasal","Nasopharyngeal")
levels(data$covid_19_status.factor)=c("Positive","Negative")
levels(data$thaw_for_diagnostic___1.factor)=c("Unchecked","Checked")
levels(data$thaw_for_diagnostic___2.factor)=c("Unchecked","Checked")
levels(data$thaw_for_diagnostic___3.factor)=c("Unchecked","Checked")
levels(data$diagnostic_sample_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$swab_type_research.factor)=c("NP","Nasal","OP")
levels(data$thaw_for___1.factor)=c("Unchecked","Checked")
levels(data$thaw_for___2.factor)=c("Unchecked","Checked")
levels(data$thaw_for___3.factor)=c("Unchecked","Checked")
levels(data$op_swab_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$thaw_for_ta___1.factor)=c("Unchecked","Checked")
levels(data$thaw_for_ta___2.factor)=c("Unchecked","Checked")
levels(data$thaw_for_ta___3.factor)=c("Unchecked","Checked")
levels(data$tracheal_aspirate_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$oral_wash_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$saliva_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$thaw_for_microbiome.factor)=c("Yes","No")
levels(data$stool_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$sample_type.factor)=c("Ascites Fluid","BAL","CSF","Pericardial Fluid","Pleural Fluid")
levels(data$additional_samples_complete.factor)=c("Incomplete","Unverified","Complete")
