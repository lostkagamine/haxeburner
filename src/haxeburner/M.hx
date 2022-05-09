package haxeburner;

class M {
    public static function main(): Void {
        new haxeburner.T()._x(null);
        js.Syntax.code("new haxeburner_T()._x(ns);");
    }
}