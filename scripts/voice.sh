#!/usr/bin/sh

echo "Generating: $1"
tts --model_name tts_models/en/vctk/vits --text "${2}" --speaker_idx $3 --out_path $1

echo "Playing..."
mpv $1
