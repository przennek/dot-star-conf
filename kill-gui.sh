#!/usr/bin/env bash

app=$(aerospace list-apps | fzf)
app_name=$(echo "$app" | awk -F '|' '{ print $2 }' | awk -F '\.' '{ print $NF }')
app_pid=$(echo "$app" | awk -F '|' '{ print $1 }')

osascript -e "quit app \"$app_name\""

if aerospace list-apps | grep -q "$app_name"; then
    kill -9 $app_pid
fi
