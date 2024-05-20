
awk '$6 ~ "+" {print $0}' $1 > tmp.txt
awk '$6 ~ "+" {print $0}' $1 |\
slopBed -i - -b 1 -g ~/Data/hg19_reference/hg19.chrom.sizes |\
fastaFromBed -fi /home/jbarbour/Data/hg19_reference/hg19.fa -bed - -fo tmp.fa -tab


cut -f2 tmp.fa | paste tmp.txt - > trinuc.bed

bash ./uracil_seq_sig.bash

rm tmp.fa tmp.txt

awk '$6 ~ "-" {print $0}' $1 > tmp.txt
awk '$6 ~ "-" {print $0}' $1 |\
slopBed -i - -b 1 -g ~/Data/hg19_reference/hg19.chrom.sizes |\
fastaFromBed -fi /home/jbarbour/Data/hg19_reference/hg19.fa -bed - -fo tmp.fa -tab

cut -f2 tmp.fa | paste tmp.txt - > trinuc.bed

bash ~/scripts/uracil_seq_sig_reverse.bash

rm tmp.fa tmp.txt

paste trinuc_count.txt trinuc_count_rev.txt |awk '{print $1"\t"($2+$4)}' - > trinuc_summary.txt
SUM=$(awk '{ sum += $2; } END { print sum ; }' trinuc_summary.txt ) 

awk -v y=$SUM '{print $1"\t"$2"\t"y"\t"($2/y)}' trinuc_summary.txt |\
 { printf 'Trinuc\tTrinuc_Count\tTotal_uracil\tTrinuc_Frequency\n'; cat -; } > $2.trinucleotide_frequency.txt ;

rm trinuc.bed
rm trinuc_count_rev.txt
rm trinuc_count.txt
rm trinuc_summary.txt
rm tmp.bed