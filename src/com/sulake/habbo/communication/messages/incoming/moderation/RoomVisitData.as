package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_2120:Boolean;
      
      private var _roomId:int;
      
      private var var_941:String;
      
      private var var_2427:int;
      
      private var var_2428:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2120 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_941 = param1.readString();
         this.var_2427 = param1.readInteger();
         this.var_2428 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_2120;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_941;
      }
      
      public function get enterHour() : int
      {
         return this.var_2427;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2428;
      }
   }
}
