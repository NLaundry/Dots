#!/bin/sh

TITLE="`mocp -i | grep 'Title:' | sed -e 's/^.*: //'`";
if [ "$TITLE" != "" ]; then
    ARTIST="`mocp -i | grep 'Artist:' | sed -e 's/^.*: //'`";
    SONGTITLE="`mocp -i | grep 'SongTitle:' | sed -e 's/^.*: //'`";
    ALBUM="`mocp -i | grep 'Album:' | sed -e 's/^.*: //'`";
    if [ "$ARTIST" != "" ]; then ARTIST="$ARTIST - "; fi
    if [ "$ALBUM" != "" ]; then ALBUM="($ALBUM)"; fi
    echo $ARTIST $SONGTITLE $ALBUM
else echo "MOC is idling"
fi
