


awk '$4 ~ "+" {print $1"\t"$2"\t"$3"\t"$4}' $1 | sort -k1,1 -k2,2n - > Fwd.bed
awk '$4 ~ "-" {print $1"\t"$2"\t"$3"\t"$4}' $1 | awk '{print $1"\t"($2-2)"\t"($3-2)"\t"$4}' - | sort -k1,1 -k2,2n - > Rev.bed

region_size=$(awk 'NR == 1 {print $3-$2}' $1)
flank_size=$(echo $2)
bases=$[($region_size+$flank_size+$flank_size)]


sort -k1,1 -k2,2n $3 > $3.sorted

slopBed -i Fwd.bed -b $2 -g ./ref/hg19.chrom.sizes | coverageBed -a - -b $3.sorted -d -sorted > Fwd_region.bed
slopBed -i Rev.bed -b $2 -g ./ref/hg19.chrom.sizes | coverageBed -a - -b $3.sorted -d -sorted > Rev_region.bed

for ((i=1;i<=$bases;i++)); do
awk -F'\t' -v num=$i '{ if ($5 == num) SUM += $6 }; END{print num"\t"SUM}' Fwd_region.bed | awk '{SUM += $2} END {print $1"\t"SUM}' - >> $4.profile_fwd.tsv
awk -F'\t' -v num=$i '{ if ($5 == num) SUM += $6 }; END{print num"\t"SUM}' Rev_region.bed | awk '{SUM += $2} END {print $1"\t"SUM}' - >> $4.profile_rev.tsv
done

sort -nk1 $4.profile_fwd.tsv >1
sort -rnk1 $4.profile_rev.tsv >2

paste 1 2 | awk '{print $1"\t"$2"\t"$4"\t"($2+$4)}' - > $4.profile_results.tsv