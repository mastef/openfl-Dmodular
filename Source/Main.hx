import haxe.Log;
import openfl.Assets;
import openfl.display.MovieClip;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.events.UncaughtErrorEvent;
import openfl.external.ExternalInterface;
import openfl.system.Security;
import openfl.ui.Mouse;


class Main extends Sprite
{
	public function new()
	{
		super();

		addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);

	}

	private function addedToStageHandler(e : Event) : Void
	{
		removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);

		#if debug
		Security.allowDomain("*");
		Security.allowInsecureDomain("*");
		#end

		trace("added to stage");

		Bundle.load(Module1).then(function(_) {
			// Module1 and its dependencies was split out and is now loaded yay!
			new Module1();
		});

		Bundle.load(fla.Fla).then(function(_) {
			// Module1 and its dependencies was split out and is now loaded yay!
			var m = new fla.Fla();
		});
		
	}

}