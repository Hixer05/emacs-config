#!/usr/bin/env sh

guix shell -m emacs.scm -C --pure \
    -- emacs -q -l init.el
