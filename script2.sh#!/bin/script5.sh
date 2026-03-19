#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions"

read -p "1. Open source tool you use daily: " TOOL
read -p "2. What does freedom mean to you? " FREEDOM
read -p "3. Something you would build and share: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "Open Source Manifesto - $DATE" > $OUTPUT
echo "" >> $OUTPUT
echo "I believe open source represents $FREEDOM." >> $OUTPUT
echo "Tools like $TOOL empower developers to collaborate and innovate." >> $OUTPUT
echo "In the future I would like to build $BUILD and share it freely with the world." >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
