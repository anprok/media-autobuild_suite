#!/bin/sh

#  ffmpeg_extra.sh
#  
#
#  Created by Andriy Prokopenko on 5/2/19.
#  
# Force to recompile every time this script is executed
touch custom_updated

_pre_configure(){
    # Apply a local patch inside the directory where is "ffmpeg_extra.sh"
    patch -p1 -i "$LOCALBUILDDIR/ffmpeg-qpeak.patch"
}
