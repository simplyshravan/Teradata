if [ -f vendor_data ]
then
rm vendor_data
fi
touch vendor_data
j=0
for i in {1..25000}
do
 echo $i",vendor"$i",vendor address"$i" HNO"`expr $i + 1`","$j >> vendor_data
 if [ `expr $i % 2000` -eq 0 ]
 then
   j=0
 fi
 j=$((j+1))
done
