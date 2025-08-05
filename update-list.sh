#!/bin/sh

rm -rf list
mkdir list

ls $HOME/depression/github/BuriXon-code/micro-burixon-dark/themes/*.micro | sed 's/^.*\/\(.*\)\.micro/\1/' >list/burixon-dark.txt
ls $HOME/depression/github/akikareha/micro-kareha-colorschemes/colorschemes/*.micro | sed 's/^.*\/\(.*\)\.micro/\1/' >list/kareha.txt
ls $HOME/depression/github/KiranWells/micro-nord-tc-colors/colorschemes/*.micro | sed 's/^.*\/\(.*\)\.micro/\1/' >list/nord.txt

cat list/burixon-dark.txt >list/all.txt
cat list/kareha.txt >>list/all.txt
echo mtp >>list/all.txt
cat list/nord.txt >>list/all.txt
echo photon-racer >>list/all.txt

# from GitLab
echo bluemood-tc >>list/all.txt
