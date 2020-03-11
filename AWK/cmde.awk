BEGIN {

	"date '+%d-%m-%Y'" | getline
	print $0
}
