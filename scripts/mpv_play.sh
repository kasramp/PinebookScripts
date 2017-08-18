#!/bin/bash

mpv -vo=vdpau -vd=ffmpeg12vdpau,ffh264vdpau,ffhevcvdpau --hwdec=vdpau "$@"
