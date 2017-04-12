#!/usr/bin/env bash

# author Peteschenkov Oleg <peteshchenkov@gmail.com>

# set -x

# if wrong number of args
[ $# -ne 1 ] && echo "Ussage $(basename $0) SRTFILE" && exit 1

# if arg $1 not file
[ ! -f "$1" ] && echo "File $1 doesn't exists." && exit 1


# remove bom of utf8 with bom
# remove dos  \r
# remove line numbers
# remove timing
# remove blank lines
# remove tags
sed -r -e 's/^\xef\xbb\xbf//' \
    -e 's/\r//' \
    -e 's/^[0-9]*$//' \
    -e '/^[0-9]{2}:[0-9]{2}:[0-9]{2},[0-9]{3} --> [0-9]{2}:[0-9]{2}:[0-9]{2},[0-9]{3}$/d' \
    -e 's/^\s*$//' \
    -e '/^$/d;s/<[^>]*>//g' "$1"

exit 0

# we're done