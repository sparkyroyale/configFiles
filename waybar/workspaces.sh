#!/bin/bash

# Get current workspace (remove decimals and wrap to 1-5)
current=${current%.*}
current=$(( (current - 1) % 5 + 1 ))

# Generate workspace indicators
output=""
for i in {1..5}; do
    if [ "$i" -eq "$current" ]; then
        output+="<span background='#268bd2' foreground='#ffffff' font_weight='bold' min_width='1.5em' border_radius='50%'> $i </span>"
    else
        output+="<span background='#333333' foreground='#aaaaaa' min_width='1.5em' border_radius='50%'> $i </span>"
  fi
  [ "$i" -ne 5 ] && output+=" "
done

# Proper JSON output
echo "{\"text\":\"$output\",\"tooltip\":\"\",\"class\":\"\"}"
