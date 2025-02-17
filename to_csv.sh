#!/bin/bash

INPUT="IEEE - Time Series Crime Predictions.md"
OUTPUT="${INPUT%.md}.csv"

perl -CSDA -ne '
    next if /^\|?\s*-+[-| ]+-+/;  # Skip separator lines
    s/^\s*\||\|\s*$//g;          # Remove leading/trailing pipes with spaces
    s/\s*\|\s*/","/g;            # Replace pipes with quotes, handling spaces
    print "\"$_\"\n" if length;  # Add outer quotes and newline
' "$INPUT" > "$OUTPUT"