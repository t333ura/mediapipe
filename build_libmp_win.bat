@echo off
setlocal

SET "BAZEL_VS=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools"
SET "BAZEL_VC=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC"
@REM SET "BAZEL_VS=C:\Program Files\Microsoft Visual Studio\2022\Professional"
@REM SET "BAZEL_VC=C:\Program Files\Microsoft Visual Studio\2022\Professional\VC"
SET "BAZEL_SH=C:\msys64\usr\bin\bash.exe"

@REM Optional vars
SET "BAZEL_VC_FULL_VERSION=14.40.33807"
SET "BAZEL_WINSDK_FULL_VERSION=10.0.26100.0"

@REM Use double slashes
SET "PYTHON_BIN_PATH=C:\\Python\\Python312\\python.exe"

rmdir /s /q libmp
bazelisk clean

bazelisk build -c opt --define MEDIAPIPE_DISABLE_GPU=1 mediapipe/examples/desktop/libmp:libmp.dll --verbose_failures
mkdir libmp
copy mediapipe\examples\desktop\libmp\libmp.h libmp\libmp.h
copy bazel-bin\mediapipe\examples\desktop\libmp\libmp.dll.if.lib libmp\libmp.dll.if.lib
copy bazel-bin\mediapipe\examples\desktop\libmp\libmp.dll libmp\libmp.dll
xcopy /s /e /i bazel-bin\mediapipe\modules libmp\modules

exit /b
