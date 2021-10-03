package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_517:String = "RWUAM_WHISPER_USER";
      
      public static const const_638:String = "RWUAM_IGNORE_USER";
      
      public static const const_564:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_425:String = "RWUAM_KICK_USER";
      
      public static const const_491:String = "RWUAM_BAN_USER";
      
      public static const const_502:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_557:String = "RWUAM_RESPECT_USER";
      
      public static const const_647:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_655:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_568:String = "RWUAM_START_TRADING";
      
      public static const const_731:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_591:String = "RWUAM_KICK_BOT";
      
      public static const const_571:String = "RWUAM_REPORT";
      
      public static const const_503:String = "RWUAM_PICKUP_PET";
      
      public static const const_1905:String = "RWUAM_TRAIN_PET";
      
      public static const const_593:String = " RWUAM_RESPECT_PET";
      
      public static const const_304:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_580:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
