#!/bin/sh

cat help/pubcolors-head._md >help/pubcolors.md

colors=$(cat list/all.txt)
for color in $colors; do
	echo "* \`$color\`" >>help/pubcolors.md
done

cat help/pubcolors-tail._md >>help/pubcolors.md
