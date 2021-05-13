#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/mnt/e/Tzur/optimeet/projects/KenLM/boost_1_74_0/stage/lib

# Using 
#KenLM Language Model Toolkit
#https://kheafield.com/code/kenlm/
#===================================
lmplz=/mnt/e/Tzur/optimeet/projects/KenLM/kenlm/build/bin/lmplz


date

if [ $# -lt 2 ]; then
    echo "# Calling with $# parameters, while at 2 are required."
    echo ">> Aborting!"
    exit 1
fi

textFile=$1
outARPA=$2

$lmplz --verbose_header -o 2 --intermediate NGRAM.txt --discount_fallback --text $textFile --arpa $outARPA



