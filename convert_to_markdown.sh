
for myhtmfile in `ls | egrep ".htm\>"`
do
  echo $myhtmfile
  mybasename=`echo $myhtmfile | sed "s/\.htm//"`
  mymdfile=$mybasename".md"
  echo $mymdfile
  pandoc $myhtmfile -o $mymdfile
done