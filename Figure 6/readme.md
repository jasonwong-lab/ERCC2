# Note - Need reference fa and chrom sizes for hg19

# Download and process Ucaps data then get dU calls

download Ucaps seq scripts from  https://github.com/Jyyin333/Ucaps-seq   into ./Figure_6/Ucaps_scripts

Download and process sequence data from PRJNA728500 into ./Figure_6/uracil_data/ using ./Figure_6/uracil_seq_preprocessing.bash script

Run ./Figure_6/uracil_seq_run_fetch_dU.bash


# Figure 6A and 6B

Run ./Figure_6/uracil_seq_run_CBS_profiles.bash
Run ./Figure_6/uracil_seq_process_CBS.bash

# Figures 6C and S5

Run ./Figure_6/uracil_seq_run_trinuc.bash
Run ./Figure_6/uracil_seq_process_trinuc.bash

# Figure 6D

Run ./Figure_6/uracil_Figure_6D.bash

# Figure 6E

Run ./Figure_6/uracil_Figure_6E.bash