

BEGIN {

FS="|"

}

{
tab_client[NR]=$1
}

END{

for(i=1 ; i <= NR ; i++)
	print("Ligne n° : " i , tab_client[i]) 
}
