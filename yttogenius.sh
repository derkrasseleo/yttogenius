file_name="video_dl"

if test -f "$file_name.wav"; then
  echo "$file_name already downloaded, skipping download"
else
  youtube-dl $1 -x --audio-format wav -o $file_name.wav
  # ffmpeg -i $file_name.opus file.wav
fi
python -m spleeter separate $file_name.wav
# python -m spleeter $file_name.wav
# python /home/leo/Dokumente/git/ultimatevocalremovergui/separate.py
#
python -m whisper vocals.wav
