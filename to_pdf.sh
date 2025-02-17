#!/bin/bash

# Input file
INPUT="IEEE - Time Series Crime Predictions.md"

# Output file (replacing .md with .pdf)
OUTPUT="${INPUT%.md}.pdf"

# Run pandoc with formatting options
pandoc "$INPUT" \
    -o "$OUTPUT" \
    --pdf-engine=xelatex \
    --variable "geometry:a3paper,landscape,margin=1in" \
    --variable fontsize=48pt \
    --variable mainfont="DejaVu Serif" \
    --variable monofont="DejaVu Sans Mono" \
    --variable urlcolor=blue \
    --variable toccolor=black 
    # --table-of-contents \
    # --number-sections

# Check if conversion was successful
if [ $? -eq 0 ]; then
    echo "Successfully converted $INPUT to $OUTPUT"
else
    echo "Error converting file"
fi
