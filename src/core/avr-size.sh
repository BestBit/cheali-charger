#!/bin/bash

INPUT="$1"
OUTPUT="$2"
echo "INPUT=$INPUT"
echo "OUTPUT=$OUTPUT"
avr-gcc -v 2>&1 | tee "$OUTPUT"
avr-size --format=avr "$INPUT" | tee -a "$OUTPUT"

true

