

BEGIN {

	FS=":"

}

NR != 1 && $0 !~ /^#/ && $0 !~ /^$/ {

	tab_ventes[$1]+=$2
}



END {

	for(i in tab_ventes)
		print("Code articles : " i , "Total ventes : " tab_ventes[i]) 
}
