
### Basic code

module load homer

makeTagDirectory tag_directory/ mapped_bam_file.bam


### For-loop application

for file in *.bam
do
   fn=$(basename "$file")
   fndir="./tags/"$fn"/"

   makeTagDirectory $fndir $file
done
