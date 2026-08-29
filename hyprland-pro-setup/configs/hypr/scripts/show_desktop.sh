#!/usr/bin/env bash
current_ws=$(hyprctl activeworkspace -j | jq -r '.id')
windows=$(hyprctl workspaces -j | jq -r ".[] | select(.id == $current_ws) | .windows")

if [ "$windows" -gt 0 ]; then
    echo "$current_ws" > /tmp/hypr_last_workspace
    hyprctl dispatch 'hl.dsp.focus({ workspace = "empty" })'
else
    if [ -f /tmp/hypr_last_workspace ]; then
        last_ws=$(cat /tmp/hypr_last_workspace)
        hyprctl dispatch "hl.dsp.focus({ workspace = \"$last_ws\" })"
        rm /tmp/hypr_last_workspace
    else
        hyprctl dispatch 'hl.dsp.focus({ workspace = "previous" })'
    fi
fi
