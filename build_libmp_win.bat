SET BAZEL_VC=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC
SET BAZEL_VS=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools
REM Use double slashes
SET PYTHON_BIN_PATH=C:\\Users\\rk274\\AppData\\Local\\miniconda3\\envs\\cpp_mp\\python.exe
SET BAZEL_SH=C:\\msys64\\usr\\bin\\bash.exe

bazel build -c opt --define MEDIAPIPE_DISABLE_GPU=1 mediapipe/examples/desktop/libmp:libmp.dll
