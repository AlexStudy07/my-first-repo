#declare function
function fn {
echo "How much files there are in this dir?"
#using read for data imput
read nrfiles
actnrfiles=$(ls | wc -l)
#IF statement
if [[ acnrfiles -gt nrfiles ]]
   then 
     echo "actual nr of files is greather"
elif [[ acnrfiles -lt nrfiles ]] 
   then
     echo "actual nr of files is lower"
fi
}
#call function
fn
#while loop
while [[ ! nrfiles -eq actnrfiles ]]
do
   fn
done
#congrats if success
echo "Congrs the nr of files is right"
