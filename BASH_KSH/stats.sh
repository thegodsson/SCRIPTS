#!/usr/bin/ksh

exec <eleves.txt
IFS='|'

read entete1 entete2 entete3
printf "%-15s%-10s%10s\n" $entete1 $entete2 $entete3

while read a b c
do
printf "%-15s%10s%10d\n" $a $b $c
done
