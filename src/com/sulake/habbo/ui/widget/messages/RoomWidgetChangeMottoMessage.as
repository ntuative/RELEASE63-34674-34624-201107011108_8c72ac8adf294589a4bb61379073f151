package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChangeMottoMessage extends RoomWidgetMessage
   {
      
      public static const const_924:String = "RWVM_CHANGE_MOTTO_MESSAGE";
       
      
      private var var_1816:String;
      
      public function RoomWidgetChangeMottoMessage(param1:String)
      {
         super(const_924);
         this.var_1816 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1816;
      }
   }
}
