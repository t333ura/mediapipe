# Description:
#   OpenCV libraries for video/image processing on MacOS

load("@bazel_skylib//lib:paths.bzl", "paths")

licenses(["notice"])  # BSD license

exports_files(["LICENSE"])

config_setting(
    name = "arm64",
    values = {
        "apple_platform_type": "macos",
        "cpu": "darwin_arm64",
    },
)
config_setting(
    name = "x86_64",
    values = {
        "apple_platform_type": "macos",
        "cpu": "darwin_x86_64",
    },
)

cc_library(
    name = "opencv",
    srcs = select({
        "//conditions:default": glob([
            "lib/libopencv_core.dylib",
            "lib/libopencv_calib3d.dylib",
            "lib/libopencv_features2d.dylib",
            "lib/libopencv_highgui.dylib",
            "lib/libopencv_imgcodecs.dylib",
            "lib/libopencv_imgproc.dylib",
            "lib/libopencv_video.dylib",
            "lib/libopencv_videoio.dylib",
        ]),
        ":arm64": glob([
            "arm64/lib/libopencv_core.dylib",
            "arm64/lib/libopencv_calib3d.dylib",
            "arm64/lib/libopencv_features2d.dylib",
            "arm64/lib/libopencv_highgui.dylib",
            "arm64/lib/libopencv_imgcodecs.dylib",
            "arm64/lib/libopencv_imgproc.dylib",
            "arm64/lib/libopencv_video.dylib",
            "arm64/lib/libopencv_videoio.dylib",
        ]),
        ":x86_64": glob([
            "x86_64/lib/libopencv_core.dylib",
            "x86_64/lib/libopencv_calib3d.dylib",
            "x86_64/lib/libopencv_features2d.dylib",
            "x86_64/lib/libopencv_highgui.dylib",
            "x86_64/lib/libopencv_imgcodecs.dylib",
            "x86_64/lib/libopencv_imgproc.dylib",
            "x86_64/lib/libopencv_video.dylib",
            "x86_64/lib/libopencv_videoio.dylib",
        ]),
    }),
    hdrs = select({
        "//conditions:default": glob(["include/opencv4/opencv2/**/*.h*"]),
        ":arm64": glob(["arm64/include/opencv4/opencv2/**/*.h*"]),
        ":x86_64": glob(["x86_64/include/opencv4/opencv2/**/*.h*"]),
    }),
    includes = select({
        "//conditions:default": ["include/opencv4/"],
        ":arm64": ["arm64/include/opencv4/"],
        ":x86_64": ["x86_64/include/opencv4/"],
    }),
    linkstatic = 1,
    visibility = ["//visibility:public"],
)
