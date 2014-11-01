 part of stagexl_rockdot;

	 @retain
class FBPhotoGetFromAlbumCommand extends AbstractFBCommand {

		@override 
		  void execute([XLSignal event=null]) {
			super.execute(event);
//			dispatchMessage("notification.facebook.loading");
			
	    js.JsObject queryConfig = new js.JsObject.jsify({});
      _fbModel.FB.callMethod("api", ["/${event.data}/photos", "get", queryConfig, _handleResult]);
    }

    void _handleResult(js.JsObject response) {
//			hideMessage("notification.facebook.loading");
      if(containsError(response)) return;
      
      List photos = [];
      response["data"].forEach((e){
        photos.add( new FBPhotoVO(e) );
      });
      
			_fbModel.userAlbumPhotos = photos;
			_fbModel.userAlbumPhotos[0].totalrows = photos.length;
			
			dispatchCompleteEvent(_fbModel.userAlbumPhotos);
		}

		
	}

