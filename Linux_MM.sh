#!/bin/sh

#A Linux program to combine csv files to contain the gene expression matrix for each variety, X and Y

#replace -a,-b,-c in VarX_header.csv
sed -i -e 's/-a/Rep.1/g' VarX_Header.csv 
sed -i -e 's/-b/Rep.2/g' VarX_Header.csv
sed -i -e 's/-c/Rep.3/g' VarX_Header.csv

#replace in VarY_Header.csv
sed -i -e 's/-a/Rep.1/g' VarY_Header.csv 
sed -i -e 's/-b/Rep.2/g' VarY_Header.csv
sed -i -e 's/-c/Rep.3/g' VarY_Header.csv

#concatenate all gene expression matrix files together for variety's X and Y
cat VarX/leaf_gene_expression_matrix_X_*.csv > gemX.csv
cat VarY/leaf_gene_expression_matrix_Y_*.csv > gemY.csv

#now concatenate headers for X and Y to expression matrix files
cat VarX_Header.csv gemX.csv > GEM_X.csv
cat VarY_Header.csv gemY.csv > GEM_Y.csv

