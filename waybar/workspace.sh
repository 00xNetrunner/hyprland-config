#!/bin/bash

# Define your workspace icons
workspace_icons=("一" "二" "三" "四" "五" "六" "七" "八" "九" "十")

# Get the current workspace
current_workspace=$(/run/current-system/sw/bin/hyprctl workspaces -j | /home/zer0day/.nix-profile/bin/jq '.[] | select(.focused) | .id')

# Output the corresponding icon for the current workspace
echo "${workspace_icons[current_workspace-1]}"

