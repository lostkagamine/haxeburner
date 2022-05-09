package haxeburner;

class M implements IJSAsync {
    @:jsasync
    @:keep
    static function asyncMain() {
        new haxeburner.T()._x(null).jsawait();
        js.Syntax.code("await (async function() { await new haxeburner_T()._x(ns); })();");
    }

    public static function main() {
        // stub
    }
}