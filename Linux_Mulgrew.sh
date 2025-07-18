#!/bin/sh.

#Find all the files ending with .dat and concatenate their contents into a single new file
find . -name '*.dat' -exec cat {} \; > dat_files.txt

#Remove any lines with Error  in them from this new file
sed -i '/Error/Id' dat_files.txt

#Replace any occurrences of UnknownExt with NaOH
sed 's/UnknownExt/NaOH/g' dat_files.txt

#Remove any duplicate lines and call the resulting file all_data.csv
sort -u dat_files.txt > all_data.csv


gene_name,VarXC-a,VarX1-a,VarX2-a,VarXC-b,VarX3-b,VarX1-b,VarX2-b,VarXC-c,VarX3-c,VarX1-c,VarX2-c