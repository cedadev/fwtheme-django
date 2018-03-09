#!/bin/bash

# Fetches required assets for this theme from Grunt output
# 1 argument: top level directory (containing Gruntfile.js) of Grunt installationo
# Run this script in the top level directory of the theme (same as setup.py)

# To run grunt, copy the _variables.scss to "dist/flatly" directory of bootswatch, then run
# grunt swatch:flatly
# and collect the output using the script below

SRCDIR=$1
THEME="fwtheme_django"

# copy the demo index file
index=docs/default/index.html
dest=demo/index.html
if [ ! -e `dirname ${THEME}/static/${dest}` ]; then
	echo making `dirname ${THEME}/static/${dest}`
	echo mkdir -vp `dirname ${THEME}/static/${dest}`
else
	echo `dirname $index`
fi
echo cp ${SRCDIR}/${index} $THEME/static/${dest}

# copy the other assets
for i in \
_assets/css/custom.min.css \
_assets/js/custom.js \
_vendor/popper.js/dist/umd/popper.min.js \
_vendor/popper.js/dist/umd/popper.min.js.map \
_vendor/jquery/dist/jquery.min.js \
_vendor/jquery/dist/jquery.min.map \
_vendor/bootstrap/dist/js/bootstrap.min.js \
_vendor/bootstrap/dist/js/bootstrap.min.js.map \
_vendor/bootstrap/dist/css/bootstrap.css 
do
	if [ ! -e `dirname $i` ]; then
		dir=`dirname $i`
		echo making ${THEME}/${dir}
		echo mkdir -vp ${THEME}/static/${dir}
	else
		echo `dirname $i`
	fi
	echo cp -v ${SRCDIR}/docs/${i} ${THEME}/static/${i}
done
