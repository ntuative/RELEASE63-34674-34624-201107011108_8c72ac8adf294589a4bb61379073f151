package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1340:int;
      
      private var var_2658:Boolean;
      
      private var var_2276:Boolean;
      
      private var var_2659:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1340 = param1.readInteger();
         this.var_2658 = param1.readBoolean();
         this.var_2659 = param1.readInteger();
         this.var_2276 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1340;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2658;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2276;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2659;
      }
   }
}
