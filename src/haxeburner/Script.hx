package haxeburner;

abstract class Script {
    public function new() {}

    public abstract function run(ns: Bitburner): Void;
}