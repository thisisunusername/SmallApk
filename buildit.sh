#!/bin/sh
aapt2 link -o unsigned.apk \
                                          -I ./android.jar \
                                          --manifest AndroidManifest.xml
zipalign -f -p 4 unsigned.apk aligned.apk
apksigner sign \
                                        --ks my-ec.keystore --ks-key-alias mykey \
                                        --min-sdk-version 21 \
                                        --v1-signing-enabled true \
                                        --v2-signing-enabled false \
                                        --v3-signing-enabled false \
                                        --out signed-v1-ec.apk aligned.apk