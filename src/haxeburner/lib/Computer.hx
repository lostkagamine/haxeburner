package haxeburner.lib;

class Computer {
    private var hostname: String;

    @:jsasync
    public function hack(): Promise<Float> {
        return Bitburner.NS.hack(hostname).jsawait();
    }

    @:jsasync
    public function grow(): Promise<Float> {
        return Bitburner.NS.grow(hostname).jsawait();
    }

    @:jsasync
    public function weaken(): Promise<Float> {
        return Bitburner.NS.weaken(hostname).jsawait();
    }

    public function maxMoney(): Float {
        return Bitburner.NS.getServerMaxMoney(hostname);
    }

    @:allow(haxeburner)
    function new(_hn: String) {
        this.hostname = _hn;
    }
}