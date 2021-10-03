package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_111:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_165:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_743:int = 2;
      
      public static const const_853:int = 3;
      
      public static const const_1958:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1816:String = "";
      
      private var var_2355:int;
      
      private var var_2452:int = 0;
      
      private var var_2454:int = 0;
      
      private var _figure:String = "";
      
      private var var_46:BitmapData = null;
      
      private var var_261:Array;
      
      private var var_1689:int = 0;
      
      private var var_2729:String = "";
      
      private var var_2733:int = 0;
      
      private var var_2738:int = 0;
      
      private var var_1723:Boolean = false;
      
      private var var_1817:String = "";
      
      private var var_2257:Boolean = false;
      
      private var var_2734:Boolean = false;
      
      private var var_2730:Boolean = true;
      
      private var var_1250:int = 0;
      
      private var var_2732:Boolean = false;
      
      private var var_2740:Boolean = false;
      
      private var var_2739:Boolean = false;
      
      private var var_2737:Boolean = false;
      
      private var var_2735:Boolean = false;
      
      private var var_2731:Boolean = false;
      
      private var var_2736:int = 0;
      
      private var var_1722:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_261 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1816 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1816;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2355 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2355;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2452 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2452;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2454 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2454;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_46 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_261 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_261;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1689 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1689;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2729 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2729;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2734 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2734;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1250 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1250;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2732 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2732;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2740 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2740;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2739 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2739;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2737 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2737;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2735 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2735;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2731 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2731;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2736 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2736;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2730 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2730;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1722 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1722;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2733 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2733;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2738 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2738;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1723 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1723;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1817 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1817;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2257 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2257;
      }
   }
}
