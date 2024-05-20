

    awk -F'\t'  'IGNORECASE = 1 {
if (($4 == "c" && $7 =="ACA") || ($4 == "g" && $7 =="TGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""ACA";
if (($4 == "c" && $7 =="ACC") || ($4 == "g" && $7 =="GGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""ACC";	
if (($4 == "c" && $7 =="ACG") || ($4 == "g" && $7 =="CGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""ACG";	
if (($4 == "c" && $7 =="ACT") || ($4 == "g" && $7 =="AGT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""ACT";	
if (($4 == "c" && $7 =="CCA") || ($4 == "g" && $7 =="TGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""CCA";	
if (($4 == "c" && $7 =="CCC") || ($4 == "g" && $7 =="GGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""CCC";	
if (($4 == "c" && $7 =="CCG") || ($4 == "g" && $7 =="CGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""CCG";	
if (($4 == "c" && $7 =="CCT") || ($4 == "g" && $7 =="AGG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""CCT";	
if (($4 == "c" && $7 =="GCA") || ($4 == "g" && $7 =="TGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""GCA";	
if (($4 == "c" && $7 =="GCC") || ($4 == "g" && $7 =="GGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""GCC";	
if (($4 == "c" && $7 =="GCG") || ($4 == "g" && $7 =="CGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""GCG";	
if (($4 == "c" && $7 =="GCT") || ($4 == "g" && $7 =="AGC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""GCT";	
if (($4 == "c" && $7 =="TCA") || ($4 == "g" && $7 =="TGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""TCA";	
if (($4 == "c" && $7 =="TCC") || ($4 == "g" && $7 =="GGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""TCC";	
if (($4 == "c" && $7 =="TCG") || ($4 == "g" && $7 =="CGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""TCG";	
if (($4 == "c" && $7 =="TCT") || ($4 == "g" && $7 =="AGA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""C""\t""TCT";	
if (($4 == "t" && $7 =="ATA") || ($4 == "a" && $7 =="TAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""ATA";
if (($4 == "t" && $7 =="ATC") || ($4 == "a" && $7 =="GAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""ATC";	
if (($4 == "t" && $7 =="ATG") || ($4 == "a" && $7 =="CAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""ATG";	
if (($4 == "t" && $7 =="ATT") || ($4 == "a" && $7 =="AAT"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""ATT";	
if (($4 == "t" && $7 =="CTA") || ($4 == "a" && $7 =="TAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""CTA";	
if (($4 == "t" && $7 =="CTC") || ($4 == "a" && $7 =="GAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""CTC";	
if (($4 == "t" && $7 =="CTG") || ($4 == "a" && $7 =="CAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""CTG";	
if (($4 == "t" && $7 =="CTT") || ($4 == "a" && $7 =="AAG"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""CTT";	
if (($4 == "t" && $7 =="GTA") || ($4 == "a" && $7 =="TAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""GTA";	
if (($4 == "t" && $7 =="GTC") || ($4 == "a" && $7 =="GAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""GTC";	
if (($4 == "t" && $7 =="GTG") || ($4 == "a" && $7 =="CAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""GTG";	
if (($4 == "t" && $7 =="GTT") || ($4 == "a" && $7 =="AAC"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""GTT";	
if (($4 == "t" && $7 =="TTA") || ($4 == "a" && $7 =="TAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""TTA";	
if (($4 == "t" && $7 =="TTC") || ($4 == "a" && $7 =="GAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""TTC";	
if (($4 == "t" && $7 =="TTG") || ($4 == "a" && $7 =="CAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""TTG";	
if (($4 == "t" && $7 =="TTT") || ($4 == "a" && $7 =="AAA"))
	print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t""T""\t""TTT";
}'  trinuc.bed |\
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"substr($8,0,1)"\t"substr($8,3,3)}' - |\
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"["$7">U]"$10}' > tmp.bed



awk '($9 == "A[T>U]A") {count++ } END { print "A[T>U]A""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "A[T>U]C") {count++ } END { print "A[T>U]C""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "A[T>U]G") {count++ } END { print "A[T>U]G""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "A[T>U]T") {count++ } END { print "A[T>U]T""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "C[T>U]A") {count++ } END { print "C[T>U]A""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "C[T>U]C") {count++ } END { print "C[T>U]C""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "C[T>U]G") {count++ } END { print "C[T>U]G""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "C[T>U]T") {count++ } END { print "C[T>U]T""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "G[T>U]A") {count++ } END { print "G[T>U]A""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "G[T>U]C") {count++ } END { print "G[T>U]C""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "G[T>U]G") {count++ } END { print "G[T>U]G""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "G[T>U]T") {count++ } END { print "G[T>U]T""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "T[T>U]A") {count++ } END { print "T[T>U]A""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "T[T>U]C") {count++ } END { print "T[T>U]C""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "T[T>U]G") {count++ } END { print "T[T>U]G""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "T[T>U]T") {count++ } END { print "T[T>U]T""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&

awk '($9 == "A[C>U]A") {count++ } END { print "A[C>U]A""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "A[C>U]C") {count++ } END { print "A[C>U]C""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "A[C>U]G") {count++ } END { print "A[C>U]G""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "A[C>U]T") {count++ } END { print "A[C>U]T""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "C[C>U]A") {count++ } END { print "C[C>U]A""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "C[C>U]C") {count++ } END { print "C[C>U]C""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "C[C>U]G") {count++ } END { print "C[C>U]G""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "C[C>U]T") {count++ } END { print "C[C>U]T""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "G[C>U]A") {count++ } END { print "G[C>U]A""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "G[C>U]C") {count++ } END { print "C[C>U]C""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "G[C>U]G") {count++ } END { print "G[C>U]G""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "G[C>U]T") {count++ } END { print "G[C>U]T""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "T[C>U]A") {count++ } END { print "T[C>U]A""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "T[C>U]C") {count++ } END { print "T[C>U]C""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "T[C>U]G") {count++ } END { print "T[C>U]G""\t"(count+0) }' tmp.bed >> trinuc_count.txt &&
awk '($9 == "T[C>U]T") {count++ } END { print "T[C>U]T""\t"(count+0) }' tmp.bed >> trinuc_count.txt 








