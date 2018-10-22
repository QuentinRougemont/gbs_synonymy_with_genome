#!/bin/bash

input_file=$1
input_basename=$(basename "$input_file")
path="/home/qurou/software/provean-1.1.5/"

output_folder="07_provean_scores"
output_sss="$output_folder"/${input_basename%.fasta}.sss

"$path"/provean.sh \
    -q $input_file \
    -v ${input_file%.fasta}.var \
    --save_supporting_set "$output_sss"  >> allout${input_basename%.fasta}.txt 2>&1 
