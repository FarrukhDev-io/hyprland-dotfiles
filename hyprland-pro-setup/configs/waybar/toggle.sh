#!/usr/bin/env bash

# Use native Waybar toggle (SIGUSR1) for instant hide/show
# This is much faster than killing and restarting Waybar.
killall -SIGUSR1 waybar
