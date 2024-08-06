#!/opt/homebrew/bin/zsh -e

export PYTHON_BIN_PATH="$HOME/.pyenv/versions/3.11.9/bin/python"
rm -rf libmp
bazelisk clean

bazelisk build --config darwin_arm64 -c opt --define MEDIAPIPE_DISABLE_GPU=1 --macos_sdk_version 14.5 mediapipe/examples/desktop/libmp:libmp.dylib --verbose_failures
mkdir -p libmp/arm64
cp mediapipe/examples/desktop/libmp/libmp.h libmp/arm64/libmp.h
cp bazel-bin/mediapipe/examples/desktop/libmp/libmp.dylib libmp/arm64/libmp.dylib
install_name_tool -id @rpath/libmp.dylib libmp/arm64/libmp.dylib
cp -r bazel-bin/mediapipe/modules libmp/arm64/modules

bazelisk build --config darwin_x86_64 -c opt --define MEDIAPIPE_DISABLE_GPU=1 --macos_sdk_version 14.5 mediapipe/examples/desktop/libmp:libmp.dylib --verbose_failures
mkdir -p libmp/x86_64
cp mediapipe/examples/desktop/libmp/libmp.h libmp/x86_64/libmp.h
cp bazel-bin/mediapipe/examples/desktop/libmp/libmp.dylib libmp/x86_64/libmp.dylib
install_name_tool -id @rpath/libmp.dylib libmp/x86_64/libmp.dylib
cp -r bazel-bin/mediapipe/modules libmp/x86_64/modules

exit 0
