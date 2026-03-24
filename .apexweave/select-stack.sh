#!/bin/sh
# ApexWeave stack selector — runs as Coolify pre-deploy command
# Set APEXWEAVE_STACK env var to pick a runtime image (e.g. ruby:3.3, node:20, php:8.3)
if [ -z "$APEXWEAVE_STACK" ]; then
    echo "[ApexWeave] APEXWEAVE_STACK not set — using default image"
    exit 0
fi
LANG=$(echo "$APEXWEAVE_STACK" | cut -d: -f1)
VER=$(echo "$APEXWEAVE_STACK" | cut -d: -f2)
echo "[ApexWeave] Selecting stack: $LANG:$VER"
DOCKERFILE=".apexweave/Dockerfile"
if [ ! -f "$DOCKERFILE" ]; then
    echo "[ApexWeave] ERROR: $DOCKERFILE not found"
    exit 1
fi
sed -i "s|FROM registry\.apexweaveapp\.com:5000/apexweave-stack-[a-z]*:[0-9.]*|FROM registry.apexweaveapp.com:5000/apexweave-stack-${LANG}:${VER}|" "$DOCKERFILE"
<<<<<<< HEAD
echo "[ApexWeave] FROM updated to: apexweave-stack-${LANG}:${VER}"
=======
echo "[ApexWeave] FROM updated to: apexweave-stack-${LANG}:${VER}"
>>>>>>> 2bb89bddea9e6495ba4dc31ad5599a64e3ee4f49
