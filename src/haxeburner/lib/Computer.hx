package haxeburner.lib;

class Computer implements IJSAsync {
    private var hostname: String;

    @:jsasync
    public function hack(): Promise<Float> {
        return jsawait(Bitburner.NS.hack(hostname));
    }

    @:jsasync
    public function grow(): Promise<Float> {
        return jsawait(Bitburner.NS.grow(hostname));
    }

    @:jsasync
    public function weaken(): Promise<Float> {
        return jsawait(Bitburner.NS.weaken(hostname));
    }

    public function bruteSSH(): Void {
        Bitburner.NS.brutessh(hostname);
    }

    public function maxMoney(): Float {
        return Bitburner.NS.getServerMaxMoney(hostname);
    }

    public function moneyAvailable(): Float {
        return Bitburner.NS.getServerMoneyAvailable(hostname);
    }

    public function minSecurityLevel(): Float {
        return Bitburner.NS.getServerMinSecurityLevel(hostname);
    }

    public function securityLevel(): Float {
        return Bitburner.NS.getServerSecurityLevel(hostname);
    }

    public function nuke(): Void {
        Bitburner.NS.nuke(hostname);
    }

    @:allow(haxeburner)
    function new(_hn: String) {
        this.hostname = _hn;
    }
}