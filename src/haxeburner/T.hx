package haxeburner;
import haxeburner.Script;

class T {
    public function new() {}

    public function _x(ns: Dynamic) {
        if (ns == null)
            return;

        var cls = CompileTime.getAllClasses(Script);
        for (index => value in cls) {
            var inst = Type.createInstance(value, []);
            inst.run(cast ns);
        }
    }
}