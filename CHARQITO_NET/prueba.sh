 #!/bin/bash

# Verifica si youtube-dl está instalado
if ! [ -x "$(command -v youtube-dl)" ]; then
  echo 'Error: youtube-dl no está instalado. Por favor, instálalo.' >&2
  exit 1
fi

# URL del video de YouTube
video_url="https://youtu.be/hk0lJll-41k?si=8WWZeaMA_T1_axXG"

# Descargar el video
echo "Descargando el video..."
youtube-dl -f bestvideo+bestaudio "$video_url" -o video.mp4

# Verifica si la descarga fue exitosa
if [ $? -eq 0 ]; then
  echo "Video descargado exitosamente."
else
  echo "Error al descargar el video."
  exit 1
fi

# Reproducir el video
echo "Reproduciendo el video..."
mpv --loop video.mp4

