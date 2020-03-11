

#! /bin/awk


BEGIN{
#Decouper l'argument

nbChamps=split(ARGV[1],args,"=") ;
option=args[1] ;
valeur=args[2] ;

#Zliminer l'argument

delete ARGV[1]
}

option == "nom" && $1 == valeur {print $0}
option == "cp" && $2 == valeur {print $0}
option == "mail" && $3 == valeur {print $0}
