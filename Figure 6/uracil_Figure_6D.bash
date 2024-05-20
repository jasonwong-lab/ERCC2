
ls ./annotations/hg19/CBS_Q*_hg19.bed > bed_list.txt

conda activate bedtools_env

cat bed_list.txt |while read list; do
arr=($list);
file=${arr[0]};
ID=$(echo ${file%.bed*})
ID2=$(echo ${ID#*revisions/})

intersectBed -a $file -b ./uracil_data/fetch_dU/Hela_UNGKO_PMX.incorporation.combined.bed -c |\
intersectBed -a - -b ./uracil_data/fetch_dU/Hela_UNGKO_PMX_inp.incorporation.combined.bed -c > ${ID2}+uracil.bed

bedtools getfasta -fi ./ref/hg19.fa -bed ${ID2}+uracil.bed -tab -fo ${ID2}.fa
cut -f2 ${ID2}.fa | paste ${ID2}+uracil.bed - |\
awk -F'\t' '{print $1":"$2"-"$3"_"$4"\t"$5"\t"$6"\t"$7"\t"$8}' - > ${ID2}+uracil+nuc.bed

rm ${ID2}.fa ${ID2}+uracil.bed

done

conda activate R_env

Rscript ./Figure_6/uracil_CBS_nuc.r
