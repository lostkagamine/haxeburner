package haxeburner;

@:build(jsasync.JSAsync.build())
class Script implements IJSAsync {
    public function new() {}

    public function run(ns: Bitburner): js.lib.Promise<jsasync.Nothing> {
        return js.lib.Promise.resolve(null);
    }
}