#!/bin/bash
# when we're using some command in scope of while read loop it's important that this command wan't using same input stream
#specifing </dev/null solves our issue
FILENAME

while read -r LINE; do
   let count++
   echo "$count $LINE"
   sh ./do_work.sh "$LINE" </dev/null
done < "$FILENAME"