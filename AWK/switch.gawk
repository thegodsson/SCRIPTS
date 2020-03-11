

BEGIN {

	FS="|"
	printf("%-20s%-10s%-10s\n","Nom","CP","Departement")
}

{

	switch ($3) {
		case /^75/ :
			dpt="Paris"
			beak
		
		case/^89/ :
			dpt="Yonne"
			break

		default	:
			dpt="Autre"
			break


		}

		printf("%-20s%-10s%-10s\n",$1,$3,dpt)

}

