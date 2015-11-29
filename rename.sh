#!/bin/bash

for FILE in `ls K3*`
do
  echo $FILE
  FILETO=`echo $FILE | tail -c +3`
  echo $FILETO
  mv $FILE $FILETO
done

for FILE in `ls`
do
  cat $FILE | sed 's/](K3/](/' > $FILE
done
