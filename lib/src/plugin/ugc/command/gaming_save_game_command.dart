part of acanvas_framework.ugc;

class GamingSaveGameCommand extends AbstractUGCCommand {
  @override
  void execute([AcSignal event = null]) {
    super.execute(event);

    UGCGameDTO vo = event.data;
    vo.uid = _ugcModel.userDAO.uid;

    amfOperation("GamingEndpoint.saveGame", dto: vo);
  }

  @override
  bool dispatchCompleteEvent([dynamic result = null]) {
    return super.dispatchCompleteEvent();
  }
}
