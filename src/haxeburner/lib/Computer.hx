package haxeburner.lib;
import jsasync.JSAsyncTools;
import js.lib.Promise;

class Computer {
    private var hostname: String;

    @:jsasync
    public function hack(): Promise<Int> {
        return JSAsyncTools.jsawait(Bitburner.NS.hack(hostname));
    }

    function new(_hn: String) {
        this.hostname = _hn;
    }
}