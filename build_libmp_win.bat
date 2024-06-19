SET "BAZEL_VS=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools"
SET "BAZEL_VC=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC"
@REM SET "BAZEL_VS=C:\Program Files\Microsoft Visual Studio\2022\Professional"
@REM SET "BAZEL_VC=C:\Program Files\Microsoft Visual Studio\2022\Professional\VC"

@REM Use double slashes
SET "PYTHON_BIN_PATH=C:\\Python\\Python312\\python.exe"

@REM Optional vars
SET "BAZEL_VC_FULL_VERSION=14.40.33807"
SET "BAZEL_WINSDK_FULL_VERSION=10.0.26100.0"

bazelisk build -c opt --define MEDIAPIPE_DISABLE_GPU=1 mediapipe/examples/desktop/libmp:libmp.dll --verbose_failures
