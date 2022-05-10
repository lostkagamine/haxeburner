package haxeburner;
import haxe.PosInfos;
import haxeburner.Script;

class T implements IJSAsync {
    public function new() {}

    @:jsasync
    public function _x(_ns: Dynamic) {
        if (_ns == null)
            return;

        Bitburner.NS = _ns;

        haxe.Log.trace = function(v: Dynamic, ?infos: PosInfos) {
            var res: String;
            if (infos != null) {
                res = '[${infos.fileName}:${infos.lineNumber} ${infos.className}.${infos.methodName}]: ${v}';
            } else {
                res = '${v}';
            }
            Bitburner.NS.print(res);
        }

        var api = new Bitburner();
        Bitburner.instance = api;

        var cls = CompileTime.getAllClasses(Script);
        for (index => value in cls) {
            var inst = Type.createInstance(value, []);
            try {
                inst.run(api).jsawait();
            } catch(e: Dynamic) {
                trace('UNCAUGHT EXCEPTION: $e');
            }
        }
    }
}