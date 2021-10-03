package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_929:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1818:String = "inventory_effects";
      
      public static const const_1202:String = "inventory_badges";
      
      public static const const_1857:String = "inventory_clothes";
      
      public static const const_1911:String = "inventory_furniture";
       
      
      private var var_2584:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_929);
         this.var_2584 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2584;
      }
   }
}
