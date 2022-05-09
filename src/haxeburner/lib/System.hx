package haxeburner.lib;
import haxeburner.Bitburner;

class System {
    public function alert(x: String) {
        Bitburner.NS.alert(x);
    }

    public function tprint(x: String) {
        Bitburner.NS.tprint(x);
    }

    function new() {}

    @:allow(haxeburner)
    private static var instance: System = new System();
}