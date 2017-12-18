package;


class Module1 {
	
	public function new () {
		trace("module 1 loaded");
		new Module2();
	}
	
}