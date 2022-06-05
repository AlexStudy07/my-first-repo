function fn {
echo "How much files there are in this dir?"
read nrfiles
actnrfiles=$(ls | wc -l)

if [[ acnrfiles -gt nrfiles ]]
   then 
     echo "actual nr of files is greather"
elif [[ acnrfiles -lt nrfiles ]] 
   then
     echo "actual nr of files is lower"
fi
}

fn

while [[ ! nrfiles -eq actnrfiles ]]
do
   fn
done

echo "Congrs the nr of files is right"
