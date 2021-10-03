package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1820:Boolean;
      
      private var var_2446:int;
      
      private var _owner:Boolean;
      
      private var var_1202:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get privateRoom() : Boolean
      {
         return this.var_1820;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2446;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1202;
      }
      
      public function get owner() : Boolean
      {
         return this._owner;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1202 != null)
         {
            this.var_1202.dispose();
            this.var_1202 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1820 = param1.readBoolean();
         if(this.var_1820)
         {
            this.var_2446 = param1.readInteger();
            this._owner = param1.readBoolean();
         }
         else
         {
            this.var_1202 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
