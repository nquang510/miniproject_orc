# google_mlkit_text_recognition references the optional Chinese, Devanagari,
# Japanese and Korean recognisers. This app only bundles the Latin model, so
# R8 must not fail on those missing classes in release builds.
-dontwarn com.google.mlkit.vision.text.chinese.**
-dontwarn com.google.mlkit.vision.text.devanagari.**
-dontwarn com.google.mlkit.vision.text.japanese.**
-dontwarn com.google.mlkit.vision.text.korean.**
-keep class com.google.mlkit.** { *; }
