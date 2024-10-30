/*postgresql OMOP CDM Indices
  There are no unique indices created because it is assumed that the primary key constraints have been run prior to
  implementing indices.
*/
/************************
Standardized clinical data
************************/
CREATE INDEX idx_person_id  ON omopcdm54.person  (person_id ASC);
CLUSTER omopcdm54.person  USING idx_person_id ;
CREATE INDEX idx_gender ON omopcdm54.person (gender_concept_id ASC);
CREATE INDEX idx_observation_period_id_1  ON omopcdm54.observation_period  (person_id ASC);
CLUSTER omopcdm54.observation_period  USING idx_observation_period_id_1 ;
CREATE INDEX idx_visit_person_id_1  ON omopcdm54.visit_occurrence  (person_id ASC);
CLUSTER omopcdm54.visit_occurrence  USING idx_visit_person_id_1 ;
CREATE INDEX idx_visit_concept_id_1 ON omopcdm54.visit_occurrence (visit_concept_id ASC);
CREATE INDEX idx_visit_det_person_id_1  ON omopcdm54.visit_detail  (person_id ASC);
CLUSTER omopcdm54.visit_detail  USING idx_visit_det_person_id_1 ;
CREATE INDEX idx_visit_det_concept_id_1 ON omopcdm54.visit_detail (visit_detail_concept_id ASC);
CREATE INDEX idx_visit_det_occ_id ON omopcdm54.visit_detail (visit_occurrence_id ASC);
CREATE INDEX idx_condition_person_id_1  ON omopcdm54.condition_occurrence  (person_id ASC);
CLUSTER omopcdm54.condition_occurrence  USING idx_condition_person_id_1 ;
CREATE INDEX idx_condition_concept_id_1 ON omopcdm54.condition_occurrence (condition_concept_id ASC);
CREATE INDEX idx_condition_visit_id_1 ON omopcdm54.condition_occurrence (visit_occurrence_id ASC);
CREATE INDEX idx_drug_person_id_1  ON omopcdm54.drug_exposure  (person_id ASC);
CLUSTER omopcdm54.drug_exposure  USING idx_drug_person_id_1 ;
CREATE INDEX idx_drug_concept_id_1 ON omopcdm54.drug_exposure (drug_concept_id ASC);
CREATE INDEX idx_drug_visit_id_1 ON omopcdm54.drug_exposure (visit_occurrence_id ASC);
CREATE INDEX idx_procedure_person_id_1  ON omopcdm54.procedure_occurrence  (person_id ASC);
CLUSTER omopcdm54.procedure_occurrence  USING idx_procedure_person_id_1 ;
CREATE INDEX idx_procedure_concept_id_1 ON omopcdm54.procedure_occurrence (procedure_concept_id ASC);
CREATE INDEX idx_procedure_visit_id_1 ON omopcdm54.procedure_occurrence (visit_occurrence_id ASC);
CREATE INDEX idx_device_person_id_1  ON omopcdm54.device_exposure  (person_id ASC);
CLUSTER omopcdm54.device_exposure  USING idx_device_person_id_1 ;
CREATE INDEX idx_device_concept_id_1 ON omopcdm54.device_exposure (device_concept_id ASC);
CREATE INDEX idx_device_visit_id_1 ON omopcdm54.device_exposure (visit_occurrence_id ASC);
CREATE INDEX idx_measurement_person_id_1  ON omopcdm54.measurement  (person_id ASC);
CLUSTER omopcdm54.measurement  USING idx_measurement_person_id_1 ;
CREATE INDEX idx_measurement_concept_id_1 ON omopcdm54.measurement (measurement_concept_id ASC);
CREATE INDEX idx_measurement_visit_id_1 ON omopcdm54.measurement (visit_occurrence_id ASC);
CREATE INDEX idx_observation_person_id_1  ON omopcdm54.observation  (person_id ASC);
CLUSTER omopcdm54.observation  USING idx_observation_person_id_1 ;
CREATE INDEX idx_observation_concept_id_1 ON omopcdm54.observation (observation_concept_id ASC);
CREATE INDEX idx_observation_visit_id_1 ON omopcdm54.observation (visit_occurrence_id ASC);
CREATE INDEX idx_death_person_id_1  ON omopcdm54.death  (person_id ASC);
CLUSTER omopcdm54.death  USING idx_death_person_id_1 ;
CREATE INDEX idx_note_person_id_1  ON omopcdm54.note  (person_id ASC);
CLUSTER omopcdm54.note  USING idx_note_person_id_1 ;
CREATE INDEX idx_note_concept_id_1 ON omopcdm54.note (note_type_concept_id ASC);
CREATE INDEX idx_note_visit_id_1 ON omopcdm54.note (visit_occurrence_id ASC);
CREATE INDEX idx_note_nlp_note_id_1  ON omopcdm54.note_nlp  (note_id ASC);
CLUSTER omopcdm54.note_nlp  USING idx_note_nlp_note_id_1 ;
CREATE INDEX idx_note_nlp_concept_id_1 ON omopcdm54.note_nlp (note_nlp_concept_id ASC);
CREATE INDEX idx_specimen_person_id_1  ON omopcdm54.specimen  (person_id ASC);
CLUSTER omopcdm54.specimen  USING idx_specimen_person_id_1 ;
CREATE INDEX idx_specimen_concept_id_1 ON omopcdm54.specimen (specimen_concept_id ASC);
CREATE INDEX idx_fact_relationship_id1 ON omopcdm54.fact_relationship (domain_concept_id_1 ASC);
CREATE INDEX idx_fact_relationship_id2 ON omopcdm54.fact_relationship (domain_concept_id_2 ASC);
CREATE INDEX idx_fact_relationship_id3 ON omopcdm54.fact_relationship (relationship_concept_id ASC);
/************************
Standardized health system data
************************/
CREATE INDEX idx_location_id_1  ON omopcdm54.location  (location_id ASC);
CLUSTER omopcdm54.location  USING idx_location_id_1 ;
CREATE INDEX idx_care_site_id_1  ON omopcdm54.care_site  (care_site_id ASC);
CLUSTER omopcdm54.care_site  USING idx_care_site_id_1 ;
CREATE INDEX idx_provider_id_1  ON omopcdm54.provider  (provider_id ASC);
CLUSTER omopcdm54.provider  USING idx_provider_id_1 ;
/************************
Standardized health economics
************************/
CREATE INDEX idx_period_person_id_1  ON omopcdm54.payer_plan_period  (person_id ASC);
CLUSTER omopcdm54.payer_plan_period  USING idx_period_person_id_1 ;
CREATE INDEX idx_cost_event_id  ON omopcdm54.cost (cost_event_id ASC);
/************************
Standardized derived elements
************************/
CREATE INDEX idx_drug_era_person_id_1  ON omopcdm54.drug_era  (person_id ASC);
CLUSTER omopcdm54.drug_era  USING idx_drug_era_person_id_1 ;
CREATE INDEX idx_drug_era_concept_id_1 ON omopcdm54.drug_era (drug_concept_id ASC);
CREATE INDEX idx_dose_era_person_id_1  ON omopcdm54.dose_era  (person_id ASC);
CLUSTER omopcdm54.dose_era  USING idx_dose_era_person_id_1 ;
CREATE INDEX idx_dose_era_concept_id_1 ON omopcdm54.dose_era (drug_concept_id ASC);
CREATE INDEX idx_condition_era_person_id_1  ON omopcdm54.condition_era  (person_id ASC);
CLUSTER omopcdm54.condition_era  USING idx_condition_era_person_id_1 ;
CREATE INDEX idx_condition_era_concept_id_1 ON omopcdm54.condition_era (condition_concept_id ASC);
/**************************
Standardized meta-data
***************************/
CREATE INDEX idx_metadata_concept_id_1  ON omopcdm54.metadata  (metadata_concept_id ASC);
CLUSTER omopcdm54.metadata  USING idx_metadata_concept_id_1 ;
/**************************
Standardized vocabularies
***************************/
CREATE INDEX idx_concept_concept_id  ON omopcdm54.concept  (concept_id ASC);
CLUSTER omopcdm54.concept  USING idx_concept_concept_id ;
CREATE INDEX idx_concept_code ON omopcdm54.concept (concept_code ASC);
CREATE INDEX idx_concept_vocabluary_id ON omopcdm54.concept (vocabulary_id ASC);
CREATE INDEX idx_concept_domain_id ON omopcdm54.concept (domain_id ASC);
CREATE INDEX idx_concept_class_id ON omopcdm54.concept (concept_class_id ASC);
CREATE INDEX idx_vocabulary_vocabulary_id  ON omopcdm54.vocabulary  (vocabulary_id ASC);
CLUSTER omopcdm54.vocabulary  USING idx_vocabulary_vocabulary_id ;
CREATE INDEX idx_domain_domain_id  ON omopcdm54.domain  (domain_id ASC);
CLUSTER omopcdm54.domain  USING idx_domain_domain_id ;
CREATE INDEX idx_concept_class_class_id  ON omopcdm54.concept_class  (concept_class_id ASC);
CLUSTER omopcdm54.concept_class  USING idx_concept_class_class_id ;
CREATE INDEX idx_concept_relationship_id_1  ON omopcdm54.concept_relationship  (concept_id_1 ASC);
CLUSTER omopcdm54.concept_relationship  USING idx_concept_relationship_id_1 ;
CREATE INDEX idx_concept_relationship_id_2 ON omopcdm54.concept_relationship (concept_id_2 ASC);
CREATE INDEX idx_concept_relationship_id_3 ON omopcdm54.concept_relationship (relationship_id ASC);
CREATE INDEX idx_relationship_rel_id  ON omopcdm54.relationship  (relationship_id ASC);
CLUSTER omopcdm54.relationship  USING idx_relationship_rel_id ;
CREATE INDEX idx_concept_synonym_id  ON omopcdm54.concept_synonym  (concept_id ASC);
CLUSTER omopcdm54.concept_synonym  USING idx_concept_synonym_id ;
CREATE INDEX idx_concept_ancestor_id_1  ON omopcdm54.concept_ancestor  (ancestor_concept_id ASC);
CLUSTER omopcdm54.concept_ancestor  USING idx_concept_ancestor_id_1 ;
CREATE INDEX idx_concept_ancestor_id_2 ON omopcdm54.concept_ancestor (descendant_concept_id ASC);
CREATE INDEX idx_source_to_concept_map_3  ON omopcdm54.source_to_concept_map  (target_concept_id ASC);
CLUSTER omopcdm54.source_to_concept_map  USING idx_source_to_concept_map_3 ;
CREATE INDEX idx_source_to_concept_map_1 ON omopcdm54.source_to_concept_map (source_vocabulary_id ASC);
CREATE INDEX idx_source_to_concept_map_2 ON omopcdm54.source_to_concept_map (target_vocabulary_id ASC);
CREATE INDEX idx_source_to_concept_map_c ON omopcdm54.source_to_concept_map (source_code ASC);
CREATE INDEX idx_drug_strength_id_1  ON omopcdm54.drug_strength  (drug_concept_id ASC);
CLUSTER omopcdm54.drug_strength  USING idx_drug_strength_id_1 ;
CREATE INDEX idx_drug_strength_id_2 ON omopcdm54.drug_strength (ingredient_concept_id ASC);
--Additional v6.0 indices
--CREATE CLUSTERED INDEX idx_survey_person_id_1 ON omopcdm54.survey_conduct (person_id ASC);
--CREATE CLUSTERED INDEX idx_episode_person_id_1 ON omopcdm54.episode (person_id ASC);
--CREATE INDEX idx_episode_concept_id_1 ON omopcdm54.episode (episode_concept_id ASC);
--CREATE CLUSTERED INDEX idx_episode_event_id_1 ON omopcdm54.episode_event (episode_id ASC);
--CREATE INDEX idx_ee_field_concept_id_1 ON omopcdm54.episode_event (event_field_concept_id ASC);
