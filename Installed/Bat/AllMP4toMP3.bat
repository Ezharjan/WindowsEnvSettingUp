for /r %%i in (*.mp4) do (
    ffmpeg -i "%%i" "%%~dpni.mp3"
)

pause