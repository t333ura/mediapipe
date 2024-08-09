# Description:
#   OpenCV libraries for video/image processing on MacOS

load("@bazel_skylib//lib:paths.bzl", "paths")

licenses(["notice"])  # BSD license

exports_files(["LICENSE"])

config_setting(
    name = "arm64_debug",
    values = {
        "apple_platform_type": "macos",
        "cpu": "darwin_arm64",
        "compilation_mode": "dbg",
    },
)
config_setting(
    name = "arm64_release",
    values = {
        "apple_platform_type": "macos",
        "cpu": "darwin_arm64",
        "compilation_mode": "opt",
    },
)
config_setting(
    name = "x86_64_debug",
    values = {
        "apple_platform_type": "macos",
        "cpu": "darwin_x86_64",
        "compilation_mode": "dbg",
    },
)
config_setting(
    name = "x86_64_release",
    values = {
        "apple_platform_type": "macos",
        "cpu": "darwin_x86_64",
        "compilation_mode": "opt",
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
        ":arm64_debug": glob([
            "arm64/debug/lib/libopencv_core.dylib",
            "arm64/debug/lib/libopencv_calib3d.dylib",
            "arm64/debug/lib/libopencv_features2d.dylib",
            "arm64/debug/lib/libopencv_highgui.dylib",
            "arm64/debug/lib/libopencv_imgcodecs.dylib",
            "arm64/debug/lib/libopencv_imgproc.dylib",
            "arm64/debug/lib/libopencv_video.dylib",
            "arm64/debug/lib/libopencv_videoio.dylib",
        ]),
        ":arm64_release": glob([
            "arm64/release/lib/libopencv_core.dylib",
            "arm64/release/lib/libopencv_calib3d.dylib",
            "arm64/release/lib/libopencv_features2d.dylib",
            "arm64/release/lib/libopencv_highgui.dylib",
            "arm64/release/lib/libopencv_imgcodecs.dylib",
            "arm64/release/lib/libopencv_imgproc.dylib",
            "arm64/release/lib/libopencv_video.dylib",
            "arm64/release/lib/libopencv_videoio.dylib",
        ]),
        ":x86_64_debug": glob([
            "x86_64/debug/lib/libopencv_core.dylib",
            "x86_64/debug/lib/libopencv_calib3d.dylib",
            "x86_64/debug/lib/libopencv_features2d.dylib",
            "x86_64/debug/lib/libopencv_highgui.dylib",
            "x86_64/debug/lib/libopencv_imgcodecs.dylib",
            "x86_64/debug/lib/libopencv_imgproc.dylib",
            "x86_64/debug/lib/libopencv_video.dylib",
            "x86_64/debug/lib/libopencv_videoio.dylib",
        ]),
        ":x86_64_release": glob([
            "x86_64/release/lib/libopencv_core.dylib",
            "x86_64/release/lib/libopencv_calib3d.dylib",
            "x86_64/release/lib/libopencv_features2d.dylib",
            "x86_64/release/lib/libopencv_highgui.dylib",
            "x86_64/release/lib/libopencv_imgcodecs.dylib",
            "x86_64/release/lib/libopencv_imgproc.dylib",
            "x86_64/release/lib/libopencv_video.dylib",
            "x86_64/release/lib/libopencv_videoio.dylib",
        ]),
    }),
    hdrs = select({
        "//conditions:default": glob(["include/opencv4/opencv2/**/*.h*"]),
        ":arm64_debug": glob(["arm64/debug/include/opencv4/opencv2/**/*.h*"]),
        ":arm64_release": glob(["arm64/release/include/opencv4/opencv2/**/*.h*"]),
        ":x86_64_debug": glob(["x86_64/debug/include/opencv4/opencv2/**/*.h*"]),
        ":x86_64_release": glob(["x86_64/release/include/opencv4/opencv2/**/*.h*"]),
    }),
    includes = select({
        "//conditions:default": ["include/opencv4/"],
        ":arm64_debug": ["arm64/debug/include/opencv4/"],
        ":arm64_release": ["arm64/release/include/opencv4/"],
        ":x86_64_debug": ["x86_64/debug/include/opencv4/"],
        ":x86_64_release": ["x86_64/release/include/opencv4/"],
    }),
    linkstatic = 1,
    visibility = ["//visibility:public"],
)
