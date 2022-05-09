package haxeburner;

@:build(jsasync.JSAsync.build())
class Script implements IJSAsync {
    public function new() {}

    @:jsasync
    public function run(ns: Bitburner): Promise<Nothing> {
        return;
    }
}