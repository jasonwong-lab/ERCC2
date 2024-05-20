
paste ./mock_deamination_500_flank.profile_results.tsv \
./mock_deamination_input_500_flank.profile_results.tsv |\
cut -f 1,4,8 - | awk '{print $1"\t"$2"\t"$3"\t"($2/$3)}' - > mock_deamination_results.tsv

paste ./mock_incorporation_500_flank.profile_results.tsv \
./mock_incorporation_input_500_flank.profile_results.tsv |\
cut -f 1,4,8 - | awk '{print $1"\t"$2"\t"$3"\t"($2/$3)}' - > mock_incorporation_results.tsv

paste ./PMX_deamination_500_flank.profile_results.tsv \
./PMX_deamination_input_500_flank.profile_results.tsv |\
cut -f 1,4,8 - | awk '{print $1"\t"$2"\t"$3"\t"($2/$3)}' - > PMX_deamination_results.tsv

paste ./PMX_incorporation_500_flank.profile_results.tsv \
./PMX_incorporation_input_500_flank.profile_results.tsv |\
cut -f 1,4,8 - | awk '{print $1"\t"$2"\t"$3"\t"($2/$3)}' - > PMX_incorporation_results.tsv

paste mock_deamination_results.tsv PMX_deamination_results.tsv mock_incorporation_results.tsv PMX_incorporation_results.tsv |\
cut -f1,4,8,12,16 - | { printf 'Position\tmock_deamination\tPMX_deamination\tMock_incorporation\tPMX_incorporation\n'; cat - ; } > UDG_seq_experiment_over_input_ratio_katainen+500flank.txt


paste ./mock_deamination_500_flank.profile_results.tsv \
./mock_deamination_input_500_flank.profile_results.tsv |\
cut -f 1,4,8 - | awk '{print $1"\t"$2"\t"$3"\t"($2-$3)}' - > mock_deamination_results.tsv

paste ./mock_incorporation_500_flank.profile_results.tsv \
./mock_incorporation_input_500_flank.profile_results.tsv |\
cut -f 1,4,8 - | awk '{print $1"\t"$2"\t"$3"\t"($2-$3)}' - > mock_incorporation_results.tsv

paste ./PMX_deamination_500_flank.profile_results.tsv \
./PMX_deamination_input_500_flank.profile_results.tsv |\
cut -f 1,4,8 - | awk '{print $1"\t"$2"\t"$3"\t"($2-$3)}' - > PMX_deamination_results.tsv

paste ./PMX_incorporation_500_flank.profile_results.tsv \
./PMX_incorporation_input_500_flank.profile_results.tsv |\
cut -f 1,4,8 - | awk '{print $1"\t"$2"\t"$3"\t"($2-$3)}' - > PMX_incorporation_results.tsv


paste mock_deamination_results.tsv PMX_deamination_results.tsv mock_incorporation_results.tsv PMX_incorporation_results.tsv |\
cut -f1,4,8,12,16 - | { printf 'Position\tmock_deamination\tPMX_deamination\tMock_incorporation\tPMX_incorporation\n'; cat - ; } > UDG_seq_experiment_over_input_subtract_katainen+500flank.txt
