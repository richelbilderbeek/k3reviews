#!/bin/bash

exit

for FILE in `ls K3*`
do
  echo $FILE
  FILETO=`echo $FILE | tail -c +3`
  echo $FILETO
  mv $FILE $FILETO
done

for FILE in `ls`
do
  cat $FILE | sed 's/](K3/](/' > $FILE.test
done

for FILE in `ls *.test`
do
  echo $FILE
  FILETO=`basename $FILE .md.test`.md
  echo $FILETO
  mv $FILE $FILETO
done
