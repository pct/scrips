#!/bin/sh
#from http://stackoverflow.com/questions/8087997/automatic-resizing-for-non-retina-image-versions
for f in $(find . -name '*@2x.png'); do
    echo "Converting $f..."
    convert "$f" -resize '50%' "$(dirname $f)/$(basename -s '@2x.png' $f).png"
done
