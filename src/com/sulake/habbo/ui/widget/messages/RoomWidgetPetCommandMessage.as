package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetPetCommandMessage extends RoomWidgetMessage
   {
      
      public static const const_977:String = "RWPCM_REQUEST_PET_COMMANDS";
      
      public static const const_524:String = "RWPCM_PET_COMMAND";
       
      
      private var var_2138:int = 0;
      
      private var var_197:String;
      
      public function RoomWidgetPetCommandMessage(param1:String, param2:int, param3:String = null)
      {
         super(param1);
         this.var_2138 = param2;
         this.var_197 = param3;
      }
      
      public function get petId() : int
      {
         return this.var_2138;
      }
      
      public function get value() : String
      {
         return this.var_197;
      }
   }
}
