package haxeburner;
import haxeburner.lib.System;

class Bitburner {
    @:allow(haxeburner)
    function new() {}

    @:allow(haxeburner)
    private static var NS: Dynamic;

    public var args(get, null): Array<String>;

    function get_args() {
        return NS.args;
    }

    public var system(get, null): System;

    function get_system() {
        return System.instance;
    }
}