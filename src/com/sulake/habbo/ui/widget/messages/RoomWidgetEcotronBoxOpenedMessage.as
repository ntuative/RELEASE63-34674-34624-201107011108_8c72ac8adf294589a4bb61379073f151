package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1859:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1648:String;
      
      private var var_1787:int;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1648 = param2;
         this.var_1787 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1648;
      }
      
      public function get classId() : int
      {
         return this.var_1787;
      }
   }
}
