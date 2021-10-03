package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2441:String;
      
      private var var_1636:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         this.var_2441 = param1;
         this.var_1636 = param2;
      }
      
      public function get postureType() : String
      {
         return this.var_2441;
      }
      
      public function get parameter() : String
      {
         return this.var_1636;
      }
   }
}
