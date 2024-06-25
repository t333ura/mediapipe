export BAZEL_VC='C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC'
export BAZEL_VS='C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools'
# Use double slashes
# Note: Bazel requires NumPy (and potentially other packages?)
# A new conda environment with numpy installed (`conda install numpy`) has been tested and works
export PYTHON_BIN_PATH='C:\\Users\\rk274\\AppData\\Local\\miniconda3\\envs\\cpp_mp\\python.exe'

bazel build -c opt --define MEDIAPIPE_DISABLE_GPU=1 mediapipe/examples/desktop/libmp:libmp.dll
