#!/bin/bash
if eww active-windows | grep -q "music_win"; then
    eww close music_win
else
    eww open music_win
fi
