# Building these scripts 


##Brewfile Setup

brew leaves

###MAS Applications

The command below, while not elegant, generates the mas commands that can be pasted directly into a Brewfile:

~~~~
mas list | sed -e 's/([^()]*)//g' | sed -e 's/[ \t]*$//g' | \
awk -F " " '{ printf "%s,id: %s\n",$2 " " $3 " "  $4 " "  $5 " "  $6 " "  $7 " " $8" " $9" " $10" " $11" " $12, $1 }' | \
sed -e 's/ *,/,/' | \
awk -F "," '{printf "mas '\''%s'\'',%s\n",$1,$2}'
~~~~

Sample results:
~~~~
mas 'iMovie',id: 408981434
mas 'GarageBand',id: 682658836
mas 'Keynote',id: 409183694
mas 'Pages',id: 409201541
mas 'Numbers',id: 409203825
~~~~



mas list | sed -e 's/([^()]*)//g' | sed -e 's/[ \t]*$//g' | \
awk -F " " '{ printf "%s,id: %s\n",$2 " " $3 " "  $4 " "  $5 " "  $6 " "  $7 " " $8" " $9" " $10" " $11" " $12, $1 }' | \
sed -e 's/ *,/,/' | \
awk -F "," '{printf "- '\{' %s'', name: \"%s\" \}\n",$2,$1}' > ~/test.txt
