#!/bin/sh
FILE=$1
HEIGHT=$2

OUTPUTFILETYPE="jpg"
OUTPUTFILENAME=${FILE}.thumbnail.${OUTPUTFILETYPE}

help() {
    cat <<_END
Create a thumbnail in PNG format. Default height is 200px.
Usage: mkthumb [FILE]
   or: mkthumb [FILE] [HEIGHT]
_END
> /dev/stderr
}


if [ -z "${FILE}" ]; then
    help
    exit 1
fi

if [ -z "${HEIGHT}" ]; then
	HEIGHT="200"
fi

convert -thumbnail x${HEIGHT} ${FILE} ${OUTPUTFILENAME}
