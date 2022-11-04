INPUT_FILE=$1
OUTPUT_FILE=README.md

echo -e "# GLOSSARY\n\n" > $OUTPUT_FILE

INPUT_HEADER=true
while read INPUT; do
  if $INPUT_HEADER; then
    echo -e "| ${INPUT//,/ | } |" >> $OUTPUT_FILE
    echo -e "| --- | --- | --- | --- |" >> $OUTPUT_FILE
    INPUT_HEADER=false
    continue
  fi
  echo -e "| ${INPUT//,/ | } |" >> $OUTPUT_FILE
done < $INPUT_FILE;
