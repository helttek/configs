#!/bin/bash
# Get brightness percentage
brightness_level=$(brightnessctl get)
echo "☀️ ${brightness_level}%"

