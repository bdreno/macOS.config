# Building these scripts 


##Brewfile Setup

###MAS Applications

The command below, while not elegant, generates the mas commands that can be pasted directly into a Brewfile

~~~~
mas list | sed -e 's/([^()]*)//g' | sed -e 's/[ \t]*$//g' | \
awk -F " " '{ printf "%s,id: %s\n",$2 " " $3 " "  $4 " "  $5 " "  $6 " "  $7 " " $8" " $9" " $10" " $11" " $12, $1 }' | \
sed -e 's/ *,/,/' | \
awk -F "," '{printf "mas '\''%s'\'',%s\n",$1,$2}'
~~~~