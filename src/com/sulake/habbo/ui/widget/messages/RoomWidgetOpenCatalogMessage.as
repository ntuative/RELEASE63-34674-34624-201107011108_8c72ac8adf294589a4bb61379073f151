package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_856:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1394:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2131:String = "RWOCM_PIXELS";
      
      public static const const_2194:String = "RWOCM_CREDITS";
      
      public static const const_2183:String = "RWOCM_SHELLS";
       
      
      private var var_2782:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_856);
         this.var_2782 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2782;
      }
   }
}
