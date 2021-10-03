package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class EventStreamData
   {
      
      public static const const_1862:uint = 0;
      
      public static const const_1775:uint = 1;
      
      public static const const_1766:uint = 2;
      
      public static const const_2233:int = 0;
      
      public static const const_2125:int = 1;
      
      public static const LINK_TARGET_VISIT_ROOM:int = 2;
      
      public static const const_2236:int = 3;
       
      
      private var _id:int;
      
      private var var_2714:int;
      
      private var var_2719:String;
      
      private var var_2717:String;
      
      private var var_2713:String;
      
      private var var_2715:int;
      
      private var var_2718:int;
      
      private var var_2716:Object;
      
      public function EventStreamData(param1:int, param2:int, param3:String, param4:String, param5:String, param6:int, param7:int, param8:IMessageDataWrapper)
      {
         super();
         this._id = param1;
         this.var_2714 = param2;
         this.var_2719 = param3;
         this.var_2717 = param4;
         this.var_2713 = param5;
         this.var_2715 = param6;
         this.var_2718 = param7;
         this.var_2716 = parse(param2,param8);
      }
      
      protected static function parse(param1:int, param2:IMessageDataWrapper) : Object
      {
         var _loc3_:Object = new Object();
         switch(param1)
         {
            case const_1862:
               _loc3_.friendId = param2.readString();
               _loc3_.friendName = param2.readString();
               break;
            case const_1775:
               _loc3_.roomId = param2.readString();
               _loc3_.roomName = param2.readString();
               break;
            case const_1766:
               _loc3_.achievementCode = param2.readString();
         }
         return _loc3_;
      }
      
      public function get actionId() : int
      {
         return this.var_2714;
      }
      
      public function get accountId() : String
      {
         return this.var_2719;
      }
      
      public function get accountName() : String
      {
         return this.var_2717;
      }
      
      public function get imageFilePath() : String
      {
         return this.var_2713;
      }
      
      public function get minutesSinceEvent() : int
      {
         return this.var_2715;
      }
      
      public function get linkTargetType() : int
      {
         return this.var_2718;
      }
      
      public function get extraDataStruct() : Object
      {
         return this.var_2716;
      }
   }
}

class Struct
{
    
   
   function Struct()
   {
      super();
   }
}

class FriendMadeStruct extends Struct
{
    
   
   public var friendId:String;
   
   public var friendName:String;
   
   function FriendMadeStruct(param1:String, param2:String)
   {
      super();
      this.friendId = param1;
      this.friendName = param2;
   }
}

class RoomLikedStruct extends Struct
{
    
   
   public var roomId:String;
   
   public var roomName:String;
   
   function RoomLikedStruct(param1:String, param2:String)
   {
      super();
      this.roomId = param1;
      this.roomName = param2;
   }
}

class AchievementEarnedStruct extends Struct
{
    
   
   public var achievementCode:String;
   
   function AchievementEarnedStruct(param1:String)
   {
      super();
      this.achievementCode = param1;
   }
}
