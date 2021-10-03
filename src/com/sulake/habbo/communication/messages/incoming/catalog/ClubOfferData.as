package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1340:int;
      
      private var var_1788:String;
      
      private var var_1977:int;
      
      private var _upgrade:Boolean;
      
      private var var_2970:Boolean;
      
      private var var_2969:int;
      
      private var var_2968:int;
      
      private var var_2966:int;
      
      private var var_2971:int;
      
      private var var_2967:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1340 = param1.readInteger();
         this.var_1788 = param1.readString();
         this.var_1977 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2970 = param1.readBoolean();
         this.var_2969 = param1.readInteger();
         this.var_2968 = param1.readInteger();
         this.var_2966 = param1.readInteger();
         this.var_2971 = param1.readInteger();
         this.var_2967 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1340;
      }
      
      public function get productCode() : String
      {
         return this.var_1788;
      }
      
      public function get price() : int
      {
         return this.var_1977;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2970;
      }
      
      public function get periods() : int
      {
         return this.var_2969;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2968;
      }
      
      public function get year() : int
      {
         return this.var_2966;
      }
      
      public function get month() : int
      {
         return this.var_2971;
      }
      
      public function get day() : int
      {
         return this.var_2967;
      }
   }
}
