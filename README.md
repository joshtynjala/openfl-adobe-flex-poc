# Adobe Flex 3 for OpenFL

An Adobe Flex 3 "Hello World" app compiled to JavaScript with the [Apache Royale](https://royale.apache.org/) compiler and running on the [OpenFL](https://openfl.org/) library.

## Introduction

This project is a proof of concept that I challenged myself to build. I bootstrapped enough to get this simple application running, and nothing more. In other words, you shouldn't expect the entire framework to be working, nor should you expect that it'll be easy to get a production Flex app running in JS.

To see how the everything is bootstrapped, look at _index.template.html_ and _src/Flex3ForOpenFL.as_.

## Compile Instructions

You will need to download [Apache Royale](https://royale.apache.org/) 0.9.9-SNAPSHOT. The 0.9.8 release will not work. I had to fix a couple of compiler issues to make this work, and they will be released in the next version of Royale.

You will also need _playerglobal.swc_ from Adobe. You can download it from [Flash Player debug downloads](https://www.adobe.com/support/flashplayer/debug_downloads.html). Place it at _royale-asjs/frameworks/projects/libs/player/11.1/playerglobal.swc_ in the Royale SDK.

If you have Node.js installed, you can run the following command:

```sh
npx asconfigc --sdk path/to/royale-asjs
```

Without Node.js, the following command works for me to compile the project on macOS:

```sh
asjsc --debug=true +configname=js --targets=JSRoyale --html-template=index.template.html --source-path+=src --source-path+=flex_sdk_3.0.0.477A/frameworks/projects/framework/src --js-library-path+=\${royalelib}/js/libs/LanguageJS.swc --js-library-path+=\${royalelib}/js/libs/ReflectionJS.swc --js-external-library-path+=\${royalelib}/libs/player/11.1/playerglobal.swc --source-map=true -js-getter-prefix=get_ -js-setter-prefix=set_ -- src/Flex3ForOpenFL.as
```

On Windows, the command may need some minor tweaks.

The **asjsc** command is located at _royale-asjs/js/bin/asjsc_ in the Royale SDK. On Windows, you should use _asjsc.bat_.