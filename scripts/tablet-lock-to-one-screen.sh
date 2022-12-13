#!/bin/bash
pen_id=$(xinput | grep "Pen" | grep "pointer" | grep -o 'id=[0-9][0-9]' | cut -b 4-)
monitor_id="DP-2"

xinput map-to-output $pen_id $monitor_id
