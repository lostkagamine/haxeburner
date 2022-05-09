package haxeburner.lib;
import haxe.exceptions.ArgumentException;
import haxeburner.Bitburner;

class System {
    public function alert(x: String) {
        Bitburner.NS.alert(x);
    }

    public function tprint(x: String) {
        Bitburner.NS.tprint(x);
    }

    public function getComputer(hostname: String) {
        // Verify the computer is actually present
        var comps: Array<String> = Bitburner.NS.scan();
        if (!comps.contains(hostname)) {
            throw new ArgumentException('The hostname $hostname was not found.');
        }
        return new Computer(hostname);
    }

    function new() {}

    @:allow(haxeburner)
    private static var instance: System = new System();
}