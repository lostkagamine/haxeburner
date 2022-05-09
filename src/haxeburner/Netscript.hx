package haxeburner;

@:allow(haxeburner)
@:allow(haxeburner.lib)
@:build(jsasync.JSAsync.build())
extern class Netscript {
    private var args: Array<String>;

    private function tprint(msg: String): Void;

    private function alert(msg: String): Void;

    private function hack(hostname: String): Promise<Int>;
}