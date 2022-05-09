# haxeburner
A thing for compiling Haxe into Bitburner NS2

## How do I use it?
In build.hxml,
```hxml
-L haxeburner
-m haxeburner.M
--macro haxe.macro.Compiler.include('your_package')
--macro haxe.macro.Compiler.keep('your_package.YourScriptClass')
```
(We need the macros to make Haxe not eat your class when optimising.)

Also set up a Justfile (or your command runner of choice) containing:
```
default: all

build:
    haxe build.hxml

minify: build
    npx uglifyjs bin/x.js -o bin/x2.js

bitburnerise: minify build
    echo "export async function main(ns){$(cat bin/x2.js)}" > bin/x3.js

all: bitburnerise minify build
```

Make sure you have `uglifyjs` installed!

## Why?
Because I could