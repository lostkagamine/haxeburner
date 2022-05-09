package haxeburner;

class M implements IJSAsync {
    @:jsasync
    static function asyncMain() {
        new haxeburner.T()._x(null).jsawait();
        js.Syntax.code("await new haxeburner_T()._x(ns);");
    }

    public static function main() {
        M.asyncMain();
    }
}