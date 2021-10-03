package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_975:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_677:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_975);
         this.var_677 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_677;
      }
   }
}
