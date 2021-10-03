package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1917:int;
      
      private var var_2612:int;
      
      private var var_1571:int;
      
      private var var_2611:int;
      
      private var var_128:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1917 = param1.readInteger();
         this.var_2612 = param1.readInteger();
         this.var_1571 = param1.readInteger();
         this.var_2611 = param1.readInteger();
         this.var_128 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1917);
      }
      
      public function get callId() : int
      {
         return this.var_1917;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2612;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1571;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2611;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_128;
      }
   }
}
