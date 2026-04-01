#!/usr/bin/env sh

guix shell -m emacs.scm -C --pure \
    -E '^DISPLAY$' \
    -E '^XAUTHORITY$' \
    --share=/tmp/.X11-unix \
    --expose=$XAUTHORITY \
    -- emacs -q -l init.el
