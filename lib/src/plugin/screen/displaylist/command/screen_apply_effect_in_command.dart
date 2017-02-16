part of rockdot_framework.screen;

//@retain
class ScreenApplyEffectInCommand extends AbstractScreenCommand {
  @override
  void execute([RdSignal event = null]) {
    super.execute(event);
    ScreenDisplaylistEffectApplyVO vo = event.data;

    vo.effect.runInEffect(vo.target, vo.duration, dispatchCompleteEvent);
  }

  @override
  bool dispatchCompleteEvent([dynamic result = null]) {
    return super.dispatchCompleteEvent(result);
  }
}
