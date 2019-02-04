
### Basic code

module load homer

annotatePeaks.pl sample_peaks.txt hg19 > sample_peaks_annotated.txt


### For-loop application

for file in *_peaks.txt
do
   fnOut=${$file/.txt/_annotated.txt}

   makeTagDirectory $file hg19 > $fnOut
done
