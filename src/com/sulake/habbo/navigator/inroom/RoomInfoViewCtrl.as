package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_207:IWindowContainer;
      
      private var var_3083:int;
      
      private var var_395:RoomEventViewCtrl;
      
      private var var_396:Timer;
      
      private var var_157:RoomSettingsCtrl;
      
      private var var_295:RoomThumbnailCtrl;
      
      private var var_1037:TagRenderer;
      
      private var var_397:IWindowContainer;
      
      private var var_394:IWindowContainer;
      
      private var var_684:IWindowContainer;
      
      private var var_1972:IWindowContainer;
      
      private var var_1974:IWindowContainer;
      
      private var var_1288:IWindowContainer;
      
      private var var_941:ITextWindow;
      
      private var var_1036:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_837:ITextWindow;
      
      private var var_1289:ITextWindow;
      
      private var var_1038:ITextWindow;
      
      private var var_834:ITextWindow;
      
      private var var_1565:ITextWindow;
      
      private var var_294:IWindowContainer;
      
      private var var_836:IWindowContainer;
      
      private var var_1569:IWindowContainer;
      
      private var var_1973:ITextWindow;
      
      private var var_683:ITextWindow;
      
      private var var_1975:IWindow;
      
      private var var_1291:IContainerButtonWindow;
      
      private var var_1290:IContainerButtonWindow;
      
      private var var_1294:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1293:IContainerButtonWindow;
      
      private var var_1568:IButtonWindow;
      
      private var var_1564:IButtonWindow;
      
      private var var_1567:IButtonWindow;
      
      private var var_833:IWindowContainer;
      
      private var var_1292:ITextWindow;
      
      private var var_1039:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_835:IButtonWindow;
      
      private var var_1566:Boolean = false;
      
      private const const_834:int = 75;
      
      private const const_1010:int = 3;
      
      private const const_1015:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_395 = new RoomEventViewCtrl(this._navigator);
         this.var_157 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_295 = new RoomThumbnailCtrl(this._navigator);
         this.var_1037 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_157);
         this.var_396 = new Timer(6000,1);
         this.var_396.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_396)
         {
            this.var_396.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_396.reset();
            this.var_396 = null;
         }
         this._navigator = null;
         this.var_395 = null;
         this.var_157 = null;
         this.var_295 = null;
         if(this.var_1037)
         {
            this.var_1037.dispose();
            this.var_1037 = null;
         }
         this.var_207 = null;
         this.var_397 = null;
         this.var_394 = null;
         this.var_684 = null;
         this.var_1972 = null;
         this.var_1974 = null;
         this.var_1288 = null;
         this.var_941 = null;
         this.var_1036 = null;
         this._ownerName = null;
         this.var_837 = null;
         this.var_1289 = null;
         this.var_1038 = null;
         this.var_834 = null;
         this.var_1565 = null;
         this.var_294 = null;
         this.var_836 = null;
         this.var_1569 = null;
         this.var_1973 = null;
         this.var_683 = null;
         this.var_1975 = null;
         this.var_1291 = null;
         this.var_1290 = null;
         this.var_1294 = null;
         this._remFavouriteButton = null;
         this.var_1293 = null;
         this.var_1568 = null;
         this.var_1564 = null;
         this.var_1567 = null;
         this.var_833 = null;
         this.var_1292 = null;
         this.var_1039 = null;
         this._buttons = null;
         this.var_835 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_396.reset();
         this.var_395.active = true;
         this.var_157.active = false;
         this.var_295.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_396.reset();
         this.var_157.load(param1);
         this.var_157.active = true;
         this.var_395.active = false;
         this.var_295.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_157.active = true;
         this.var_395.active = false;
         this.var_295.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_396.reset();
         this.var_157.active = false;
         this.var_395.active = false;
         this.var_295.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this.var_1566 = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_396.reset();
         this.var_395.active = false;
         this.var_157.active = false;
         this.var_295.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_1010;
         this._window.y = this.const_834;
         if(this._navigator.configuration.getBoolean("club.membership.extend.promotion.enabled",false))
         {
            this._window.y = 91;
         }
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_207,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_207.height = Util.getLowestPoint(this.var_207);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_1015;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_397);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_157.refresh(this.var_397);
         this.var_295.refresh(this.var_397);
         Util.moveChildrenToColumn(this.var_397,["room_details","room_buttons"],0,2);
         this.var_397.height = Util.getLowestPoint(this.var_397);
         this.var_397.visible = true;
         Logger.log("XORP: " + this.var_394.visible + ", " + this.var_1288.visible + ", " + this.var_684.visible + ", " + this.var_684.rectangle + ", " + this.var_397.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_294);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_395.refresh(this.var_294);
         if(Util.hasVisibleChildren(this.var_294) && !(this.var_157.active || this.var_295.active))
         {
            Util.moveChildrenToColumn(this.var_294,["event_details","event_buttons"],0,2);
            this.var_294.height = Util.getLowestPoint(this.var_294);
            this.var_294.visible = true;
         }
         else
         {
            this.var_294.visible = false;
         }
         Logger.log("EVENT: " + this.var_294.visible + ", " + this.var_294.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_157.active && !this.var_295.active && !this.var_395.active)
         {
            this.var_833.visible = true;
            this.var_1039.text = this.getEmbedData();
         }
         else
         {
            this.var_833.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_157.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_835)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_835.visible = _loc1_;
            if(this.var_1566)
            {
               this.var_835.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_835.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_157.active || this.var_295.active)
         {
            return;
         }
         this.var_941.text = param1.roomName;
         this.var_941.height = this.var_941.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_837.text = param1.description;
         this.var_1037.refreshTags(this.var_394,param1.tags);
         this.var_837.visible = false;
         if(param1.description != "")
         {
            this.var_837.height = this.var_837.textHeight + 5;
            this.var_837.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1290,"facebook_logo_small",_loc3_,null,0);
         this.var_1290.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1291,"thumb_up",_loc4_,null,0);
         this.var_1291.visible = _loc4_;
         this.var_834.visible = !_loc4_;
         this.var_1565.visible = !_loc4_;
         this.var_1565.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_394,"home",param2,null,0);
         this._navigator.refreshButton(this.var_394,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_394,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_941.y,0);
         this.var_394.visible = true;
         this.var_394.height = Util.getLowestPoint(this.var_394);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_394.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_157.active || this.var_295.active)
         {
            return;
         }
         this.var_1036.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1036.height = this.var_1036.textHeight + 5;
         this.var_1289.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1289.height = this.var_1289.textHeight + 5;
         Util.moveChildrenToColumn(this.var_684,["public_space_name","public_space_desc"],this.var_1036.y,0);
         this.var_684.visible = true;
         this.var_684.height = Math.max(86,Util.getLowestPoint(this.var_684));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_395.active)
         {
            return;
         }
         this.var_1973.text = param1.eventName;
         this.var_683.text = param1.eventDescription;
         this.var_1037.refreshTags(this.var_836,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_683.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_683.height = this.var_683.textHeight + 5;
            this.var_683.y = Util.getLowestPoint(this.var_836) + 2;
            this.var_683.visible = true;
         }
         this.var_836.visible = true;
         this.var_836.height = Util.getLowestPoint(this.var_836);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_157.active || this.var_295.active)
         {
            return;
         }
         this.var_1568.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1294.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1293.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1288.visible = Util.hasVisibleChildren(this.var_1288);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_395.active)
         {
            return;
         }
         this.var_1564.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1567.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1569.visible = Util.hasVisibleChildren(this.var_1569);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_207 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_397 = IWindowContainer(this.find("room_info"));
         this.var_394 = IWindowContainer(this.find("room_details"));
         this.var_684 = IWindowContainer(this.find("public_space_details"));
         this.var_1972 = IWindowContainer(this.find("owner_name_cont"));
         this.var_1974 = IWindowContainer(this.find("rating_cont"));
         this.var_1288 = IWindowContainer(this.find("room_buttons"));
         this.var_941 = ITextWindow(this.find("room_name"));
         this.var_1036 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_837 = ITextWindow(this.find("room_desc"));
         this.var_1289 = ITextWindow(this.find("public_space_desc"));
         this.var_1038 = ITextWindow(this.find("owner_caption"));
         this.var_834 = ITextWindow(this.find("rating_caption"));
         this.var_1565 = ITextWindow(this.find("rating_txt"));
         this.var_294 = IWindowContainer(this.find("event_info"));
         this.var_836 = IWindowContainer(this.find("event_details"));
         this.var_1569 = IWindowContainer(this.find("event_buttons"));
         this.var_1973 = ITextWindow(this.find("event_name"));
         this.var_683 = ITextWindow(this.find("event_desc"));
         this.var_1290 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1291 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1975 = this.find("staff_pick_button");
         this.var_1294 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1293 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1568 = IButtonWindow(this.find("room_settings_button"));
         this.var_1564 = IButtonWindow(this.find("create_event_button"));
         this.var_1567 = IButtonWindow(this.find("edit_event_button"));
         this.var_833 = IWindowContainer(this.find("embed_info"));
         this.var_1292 = ITextWindow(this.find("embed_info_txt"));
         this.var_1039 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_835 = IButtonWindow(this.find("zoom_button"));
         this.addMouseClickListener(this.var_1294,this.onAddFavouriteClick);
         this.addMouseClickListener(this._remFavouriteButton,this.onRemoveFavouriteClick);
         this.addMouseClickListener(this.var_1568,this.onRoomSettingsClick);
         this.addMouseClickListener(this.var_1293,this.onMakeHomeClick);
         this.addMouseClickListener(this.var_1564,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1567,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1039,this.onEmbedSrcClick);
         this.addMouseClickListener(this.var_1291,this.onThumbUp);
         this.addMouseClickListener(this.var_1975,this.onStaffPick);
         this.addMouseClickListener(this.var_1290,this.onFacebookLike);
         this.addMouseClickListener(this.var_835,this.onZoomClick);
         this._navigator.refreshButton(this.var_1294,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1293,"home",true,null,0);
         this.addMouseClickListener(this._window.findChildByTag("close"),this.onCloseButtonClick);
         this.addMouseOverListener(this.var_397,this.onHover);
         this.addMouseOverListener(this.var_294,this.onHover);
         this.var_1038.width = this.var_1038.textWidth;
         Util.moveChildrenToRow(this.var_1972,["owner_caption","owner_name"],this.var_1038.x,this.var_1038.y,3);
         this.var_834.width = this.var_834.textWidth;
         Util.moveChildrenToRow(this.var_1974,["rating_caption","rating_txt"],this.var_834.x,this.var_834.y,3);
         this.var_1292.height = this.var_1292.textHeight + 5;
         Util.moveChildrenToColumn(this.var_833,["embed_info_txt","embed_src_txt"],this.var_1292.y,2);
         this.var_833.height = Util.getLowestPoint(this.var_833) + 5;
         this.var_3083 = this._window.y + this._window.height;
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function addMouseOverListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc2_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc2_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc2_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc2_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc2_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent) : void
      {
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent) : void
      {
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent) : void
      {
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onFacebookLike(param1:WindowEvent) : void
      {
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent) : void
      {
         this.var_1039.setSelection(0,this.var_1039.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent) : void
      {
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.const_326));
         this.var_1566 = !this.var_1566;
         this.refreshButtons();
      }
      
      private function onHover(param1:WindowEvent) : void
      {
         this.var_396.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_157 != null)
         {
            this.var_157.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
