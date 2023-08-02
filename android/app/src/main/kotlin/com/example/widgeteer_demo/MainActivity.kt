package com.example.widgeteer_demo

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun getDartEntrypointArgs(): List<String> {
        System.loadLibrary("icudata")
        System.loadLibrary("icuuc")
        System.loadLibrary("icui18n")
        System.loadLibrary("BlocksRuntime")
        System.loadLibrary("android-spawn")
        System.loadLibrary("c++_shared")
        System.loadLibrary("dispatch")
        System.loadLibrary("swiftCore")
        System.loadLibrary("swiftDispatch")
        System.loadLibrary("swiftGlibc")
        System.loadLibrary("swiftRegexBuilder")
        System.loadLibrary("swiftSwiftOnoneSupport")
        System.loadLibrary("swift_Concurrency")
        System.loadLibrary("swift_Differentiation")
        System.loadLibrary("swift_RegexParser")
        System.loadLibrary("swift_StringProcessing")
        System.loadLibrary("Foundation")
        // System.loadLibrary("Widgeteer")

        return listOf("libWidgeteerDemo.so")
    }
}
