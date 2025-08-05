#!/bin/sh

cat pubcolors-head._lua >pubcolors.lua

colors=$(cat list/all.txt)
for color in $colors; do
	echo "config.AddRuntimeFile(\"pubcolors\", config.RTColorscheme, \"colorschemes/$color.micro\")" >>pubcolors.lua
done

cat pubcolors-tail._lua >>pubcolors.lua
