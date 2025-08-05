#!/bin/sh

rm -rf colorschemes
mkdir colorschemes

burixons=$(cat list/burixon-dark.txt)
for burixon in $burixons; do
	filename=$burixon.micro
	curl -o colorschemes/$filename https://raw.githubusercontent.com/BuriXon-code/micro-burixon-dark/refs/heads/main/themes/$filename
done

karehas=$(cat list/kareha.txt)
for kareha in $karehas; do
	filename=$kareha.micro
	curl -o colorschemes/$filename https://raw.githubusercontent.com/akikareha/micro-kareha-colorschemes/refs/heads/main/colorschemes/$filename
done

curl -o colorschemes/mtp.micro https://raw.githubusercontent.com/helio-frota/micro-textpad-similar-theme/refs/heads/main/colorschemes/mtp.micro

nords=$(cat list/nord.txt)
for nord in $nords; do
	filename=$nord.micro
	curl -o colorschemes/$filename https://raw.githubusercontent.com/KiranWells/micro-nord-tc-colors/refs/heads/main/colorschemes/$filename
done

curl -o colorschemes/photon-racer.micro https://raw.githubusercontent.com/edelsonc/micro-photon-racer/refs/heads/master/photon-racer.micro

# from GitLab
curl -o colorschemes/bluemood-tc.micro https://gitlab.com/lmintmate/blue-mood-micro/-/raw/master/bluemood-tc.micro
