
cd ./uracil_data/
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/025/SRR14477825/SRR14477825_1.fastq.gz &
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/025/SRR14477825/SRR14477825_2.fastq.gz &

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/026/SRR14477826/SRR14477826_1.fastq.gz &
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/026/SRR14477826/SRR14477826_2.fastq.gz &

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/027/SRR14477827/SRR14477827_1.fastq.gz &
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/027/SRR14477827/SRR14477827_2.fastq.gz &

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/028/SRR14477828/SRR14477828_1.fastq.gz &
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/028/SRR14477828/SRR14477828_2.fastq.gz &

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/029/SRR14477829/SRR14477829_1.fastq.gz &
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/029/SRR14477829/SRR14477829_2.fastq.gz & 
wait

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/030/SRR14477830/SRR14477830_1.fastq.gz &
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/030/SRR14477830/SRR14477830_2.fastq.gz &

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/031/SRR14477831/SRR14477831_1.fastq.gz &
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/031/SRR14477831/SRR14477831_2.fastq.gz &

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/032/SRR14477832/SRR14477832_1.fastq.gz &
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/032/SRR14477832/SRR14477832_2.fastq.gz &

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/041/SRR14477841/SRR14477841_1.fastq.gz &
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/041/SRR14477841/SRR14477841_2.fastq.gz &


wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/042/SRR14477842/SRR14477842_1.fastq.gz  &
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR144/042/SRR14477842/SRR14477842_2.fastq.gz &


ls SRR*1.*| awk '{ split ($1,a,"_") ;print a[1]}' -> file_names

cat file_names| while read files
do 
arr=($files)
f=${arr[0]}
f1=${arr[1]}

bbduk.sh in1=${f}_1.fastq.gz in2=${f}_2.fastq.gz \
out1=$f1.1.fastq.gz out2=$f1.2.fastq.gz \
ref=/home/bioinf/tools/bbmap/resources/adapters.fa \
tpe tbo t=8

done

##

cat file_names| while read files
do 
arr=($files)
f=${arr[0]}
f1=${arr[1]}

bwa mem -t 8 ./ref/hg19.fa $f1.1.fastq.gz $f1.2.fastq.gz | samtools view -Sb - -@ 8 > $f1.bam

done

for f in *bam ; do samtools sort -o ${f}.sorted.bam $f -@ 8

samtools index ${f}.sorted.bam ;

done


for f in *.sorted.bam ; do 
f1=$(echo ${f%.bam.sorted.bam*})
java -jar /home/bioinf/tools/picard.jar MarkDuplicates \
I=$f \
O=${f1}.dedup.bam  \
M=output.metrics \
REMOVE_DUPLICATES=true \
CREATE_INDEX=true
done


 































