
cd ./Figure_6

tail -n+2 CBS_Q1_hg19+uracil+nuc.bed_res.bed >1.bed
tail -n+2 CBS_Q2_hg19+uracil+nuc.bed_res.bed >2.bed
tail -n+2 CBS_Q3_hg19+uracil+nuc.bed_res.bed >3.bed
tail -n+2 CBS_Q4_hg19+uracil+nuc.bed_res.bed >4.bed

cat 1.bed 2.bed 3.bed 4.bed |\
awk -F'\t' '$6 <= 0 {print $1"\t"$6}' - |\
awk  -F'\t' '{split($1,a,":"); print a[1]"\t"a[2]"\t"$2}' - |\
awk  -F'\t' '{split($2,a,"-"); print $1"\t"a[1]"\t"a[2]"\t"$3}' - |\
awk  -F'\t' '{split($3,a,"_"); print $1"\t"$2"\t"a[1]"\t"a[2]"\t"$4}' - |\
awk -F'\t' '{ if ($4 != "") print $1"\t"$2"\t"$3"\t""+""\t"$5; else print $1"\t"$2"\t"$3"\t""-""\t"$5 }' - |\
sort -k 1,1 -k2,2n - > CBS_no_uracil_hg19.bed

cat 1.bed 2.bed 3.bed 4.bed |\
awk -F'\t' '$6 >= 1 {print $1"\t"$6}' - |\
awk  -F'\t' '{split($1,a,":"); print a[1]"\t"a[2]"\t"$2}' - |\
awk  -F'\t' '{split($2,a,"-"); print $1"\t"a[1]"\t"a[2]"\t"$3}' - |\
awk  -F'\t' '{split($3,a,"_"); print $1"\t"$2"\t"a[1]"\t"a[2]"\t"$4}' - |\
awk -F'\t' '{ if ($4 != "") print $1"\t"$2"\t"$3"\t""+""\t"$5; else print $1"\t"$2"\t"$3"\t""-""\t"$5 }' - |\
sort -k 1,1 -k2,2n - > CBS_with_uracil_hg19.bed

rm 1.bed 2.bed 3.bed 4.bed 

/home/jbarbour/tools/ucsc_tools/liftOver \
CBS_with_uracil_hg19.bed \
./ref/hg19ToHg38.over.chain.gz \
CBS_with_uracil_hg38.bed \
unMapped


/home/jbarbour/tools/ucsc_tools/liftOver \
CBS_no_uracil_hg19.bed \
./ref/hg19ToHg38.over.chain.gz \
CBS_no_uracil_hg38.bed \
unMapped

sort -k 1,1 -k2,2n CBS_with_uracil_hg38.bed >CBS_with_uracil_hg38_sorted.bed
sort -k 1,1 -k2,2n CBS_no_uracil_hg38.bed >CBS_no_uracil_hg38_sorted.bed

conda activate bedtools_env

bedtools map -a CBS_no_uracil_hg38_sorted.bed -b ./../Figure_5/ENCFF533BOQ.bedGraph -c 4 -o mean >CBS_no_uracil_hg38+CTCF_ChIP.bed
bedtools map -a CBS_with_uracil_hg38_sorted.bed -b ./../Figure_5/ENCFF533BOQ.bedGraph -c 4 -o mean >CBS_with_uracil_hg38+CTCF_ChIP.bed




























