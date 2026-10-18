## SmallApk
#这个项目尽可能让apk最小
使用了aapt,aapt2,keytool,apksigner工具
使用的文件:android.jar,从AndroidSDK提取，使用Apache 2.0许可
核心:AndroidManifest.xml
为了更小，所以使用了v1only+ec的签名
buildit.sh构建