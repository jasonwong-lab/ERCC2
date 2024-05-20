
cd ./uracil_data/fetch_dU/

ls ./../*.dedup.bam > bam_file_list

cat bam_file_list| while read bam ;
do

declare -a chr=("chr1" "chr2" "chr3" "chr4" "chr5" "chr6" "chr7" "chr8" "chr9" "chr10" "chr11" "chr12" "chr13" "chr14" "chr15" "chr16" "chr17" "chr18" "chr19" "chr20" "chr21" "chr22")


f1=$(echo ${bam%.dedup*})
f2=$(echo ${f1#*PMID_35037455/})
f3=$(echo $f2.bed) ;

for i in "${chr[@]}"

do

ID=$(echo $i.$f3)

python3 ./Ucaps_scripts/fetch_dU_by_chrom.py \
--ref_fa /home/jbarbour/Data/hg19_reference/hg19.fa \
--bam $bam \
--out_file $ID \
--chrom $i

done 

done



##

declare -a IDs=(chr19*)

for i in "${IDs[@]}"

do

f=$(echo $i)
f2=$(echo ${f#*chr19.})
f3=$(echo ${f2%.bed*})


cat chr*$f2 | sort -k 1,1 -k2,2n -  > $f3.merged.bed

done

declare -a files=(*merged.bed)

for i in "${files[@]}"

do

f=$(echo $i)
f2=$(echo ${f%.merged.bed*})
deam=$(echo $f2.deamination.bed)
incorp=$(echo $f2.incorporation.bed)

awk 'IGNORECASE =1 {if (($4 == "G" || $4 == "C" )) print $0}' $f > $deam
awk 'IGNORECASE =1 {if (($4 == "A" || $4 == "T" )) print $0}' $f > $incorp

done

 
cat Hela_UNGKO_Mock_inp_rep1.incorporation.bed  Hela_UNGKO_Mock_inp_rep2.incorporation.bed  | sort -k 1,1 -k2,2n - > Hela_UNGKO_Mock_inp.incorporation.combined.bed  &
cat Hela_UNGKO_Mock_rep1.incorporation.bed Hela_UNGKO_Mock_rep2.incorporation.bed  | sort -k 1,1 -k2,2n - > Hela_UNGKO_Mock.incorporation.combined.bed &
cat Hela_UNGKO_PMX_inp_rep1.incorporation.bed Hela_UNGKO_PMX_inp_rep2.incorporation.bed  | sort -k 1,1 -k2,2n - > Hela_UNGKO_PMX_inp.incorporation.combined.bed &
cat Hela_UNGKO_PMX_rep1.incorporation.bed Hela_UNGKO_PMX_rep2.incorporation.bed  | sort -k 1,1 -k2,2n - > Hela_UNGKO_PMX.incorporation.combined.bed &

cat Hela_UNGKO_Mock_inp_rep1.deamination.bed  Hela_UNGKO_Mock_inp_rep2.deamination.bed | sort -k 1,1 -k2,2n - > Hela_UNGKO_Mock_inp.deamination.combined.bed &
cat Hela_UNGKO_Mock_rep1.deamination.bed  Hela_UNGKO_Mock_rep2.deamination.bed | sort -k 1,1 -k2,2n - > Hela_UNGKO_Mock.deamination.combined.bed &
cat Hela_UNGKO_PMX_inp_rep1.deamination.bed  Hela_UNGKO_PMX_inp_rep2.deamination.bed  | sort -k 1,1 -k2,2n - > Hela_UNGKO_PMX_inp.deamination.combined.bed &
cat Hela_UNGKO_PMX_rep1.deamination.bed Hela_UNGKO_PMX_rep2.deamination.bed | sort -k 1,1 -k2,2n - > Hela_UNGKO_PMX.deamination.combined.bed &



















