package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_986:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_2134:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_986,false,false);
         this.var_2134 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_2134;
      }
   }
}
