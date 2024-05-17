## Scripts for the analysis of Genomics England data. Scripts are located on the GE Research Environment and may be
## accessed with approved access from GECIP. 


# mutation processing
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/cohort_mutation_processing.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/mutation_processing_stringent_APOBEC.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/cohort_mutation_simulation.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/cohort_mutation_simulation_processing.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/cohort_SNV_count.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/cohort_bladder_ERCC2_annotations.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/esophageal_mutation_processing.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/esophageal_SNV_types.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/melanoma_mutation_processing.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/process_mutations_for_profiles.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/cohort_trinuc_freq_genome_wide.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/process_genome_wide_trinuc_results.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/cohort_genome_wide_signatures.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/process_genome_wide_sigs.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/cohort_other_protein_altering_mutations.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/processing_other_protein_alterations.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/cohort_process_other_SNV_types.sh

# analysis 
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_mutation_density_windows.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_CBS_analysis.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_XR_mutation_density_5_bins.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_XPD_mutation_density_5_bins.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_DHS_mutation_density_5_bins.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_DHS_filtered_mutation_density_5_bins.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_repliseq_mutation_density_5_bins.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_mutation_density_open_close.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_gene_body.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_deconstructSigs_update.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/split_APOBEC_running_rep_time.sh

# Process results script
/re_gecip/cancer_pan/jbarbour/scripts/process_analysis_results_for_export.sh


# Profile plots
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_katainen_profiles.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_promoter_profiles.sh 
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_insulator_profiles.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_enhancer_profiles.sh 
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/processing_DHS_profiles.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_expressed_gene_profiles.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_silent_gene_profiles.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_silent_plot_part2.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_silent_plot_part3.sh

#trinuc freq of specific regions
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_trinuc_count.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_trinuc_freq_CBS.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_trinuc_freq_XPD.sh
bsub -I -q inter -P re_gecip_cancer_pan  /re_gecip/cancer_pan/jbarbour/scripts/running_trinuc_freq_XR.sh
bsub -I -q inter -P re_gecip_cancer_pan  /re_gecip/cancer_pan/jbarbour/scripts/process_CBS_trinuc_results.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/process_XPD_trinuc.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/process_XR_trinuc.sh

#PCA analysis
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/running_PCA_windows.sh
bsub -I -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/cluster_analysis.sh

#Paper revisions
bsub -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/revisions_cohort_mutations_processing.sh
bsub -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/revisions_cohort_mutation_shuffle.sh
bsub -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/revisions_cohort_mutation_process_shuffle.sh
bsub -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/revisions_running_rep_time.sh
bsub -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/revisions_running_DHS.sh
bsub -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/revisions_running_CBS_analysis.sh
bsub -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/revisions_running_CBS_quartiles.sh
bsub -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/revisions_running_CBS_quartiles_simple.sh
bsub -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/revisions_process_mutation_density_for_export.sh 
bsub -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/revisions_process_CBS_quartiles_for_export.sh
bsub -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/revisions_mutation_count_at_CBS.sh
bsub -q inter -P re_gecip_cancer_pan /re_gecip/cancer_pan/jbarbour/scripts/revisions_running_deconstructSigsv3.sh





