

paste ./mock_deamination_input_trinuc.trinucleotide_frequency.txt \
./mock_deamination_trinuc.trinucleotide_frequency.txt  |\
cut -f1,4,8 - | tail -n+2 - | awk 'NR == 17, NR == 32 {print $0}' - | awk '{print $1"\t"$2"\t"$3"\t"($2/$3)}' - |\
{ printf 'Trinuc\tExperiment_trinuc\tInput_trinuc\tRatio\n'; cat - ; } > Mock_deamination_trinuc_results.txt  
  
paste ./mock_incorporation_input_trinuc.trinucleotide_frequency.txt \
./mock_incorporation_trinuc.trinucleotide_frequency.txt |\
cut -f1,4,8 - | tail -n+2 -| awk 'NR == 1, NR == 16 {print $0}' -  | awk '{print $1"\t"$2"\t"$3"\t"($2/$3)}' - |\
{ printf 'Trinuc\tExperiment_trinuc\tInput_trinuc\tRatio\n'; cat - ; } > Mock_incorporation_trinuc_results.txt

paste ./PMX_deamination_input_trinuc.trinucleotide_frequency.txt \
./PMX_deamination_trinuc.trinucleotide_frequency.txt |\
cut -f1,4,8 - | tail -n+2 - | awk 'NR == 17, NR == 32 {print $0}' - | awk '{print $1"\t"$2"\t"$3"\t"($2/$3)}' - |\
{ printf 'Trinuc\tExperiment_trinuc\tInput_trinuc\tRatio\n'; cat - ; } > PMX_deamination_trinuc_results.txt

paste ./PMX_incorporation_trinuc.trinucleotide_frequency.txt \
./PMX_incorporation_input_trinuc.trinucleotide_frequency.txt |\
cut -f1,4,8 - | tail -n+2 -| awk 'NR == 1, NR == 16 {print $0}' -  | awk '{print $1"\t"$2"\t"$3"\t"($2/$3)}' - |\
{ printf 'Trinuc\tExperiment_trinuc\tInput_trinuc\tRatio\n'; cat - ; } > PMX_incorporation_trinuc_results.txt





