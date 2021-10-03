package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   
   public class RoomObjectRoomPlanePropertyUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_1231:String = "RORPPUM_WALL_THICKNESS";
      
      public static const const_691:String = "RORPVUM_FLOOR_THICKNESS";
       
      
      private var _type:String = "";
      
      private var var_197:Number = 0.0;
      
      public function RoomObjectRoomPlanePropertyUpdateMessage(param1:String, param2:Number)
      {
         super(null,null);
         this._type = param1;
         this.var_197 = param2;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get value() : Number
      {
         return this.var_197;
      }
   }
}
