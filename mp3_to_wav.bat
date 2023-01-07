for %%i in (cv-valid-dev\*) do (
	set var=%%i
	set name=%var:~0,-4%.wav
	ffmpeg -i %%i %%i.wav
	del %%i
)

cd cv-valid-dev
ren *.mp3.wav ?????????????.wav
cd ..

for %%i in (cv-valid-test\*) do (
	set var=%%i
	set name=%var:~0,-4%.wav
	ffmpeg -i %%i %%i.wav
	del %%i
)

cd cv-valid-test
ren *.mp3.wav ?????????????.wav
cd ..

for %%i in (cv-valid-train\*) do (
	set var=%%i
	set name=%var:~0,-4%.wav
	ffmpeg -i %%i %%i.wav
	del %%i
)

cd cv-valid-train
ren *.mp3.wav ?????????????.wav
cd ..