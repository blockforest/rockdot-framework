part of rockdot_dart;

	 @retain
class ScreenPluginInitCommand extends AbstractScreenCommand {

		@override dynamic execute([RockdotEvent event=null])
		 {
			super.execute(event);
			
			IScreenService _uiService = _context.getObject(ScreenPluginBase.SERVICE_UI);
			_uiService.init(dispatchCompleteEvent);
			return;
			
		}
	}
