package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1483:Boolean;
      
      private var var_2770:int;
      
      private var var_2074:int;
      
      private var var_2073:int;
      
      private var var_2771:int;
      
      private var var_2768:int;
      
      private var var_2769:int;
      
      private var var_2288:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1483;
      }
      
      public function get commission() : int
      {
         return this.var_2770;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2074;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2073;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2768;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2771;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2769;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2288;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1483 = param1.readBoolean();
         this.var_2770 = param1.readInteger();
         this.var_2074 = param1.readInteger();
         this.var_2073 = param1.readInteger();
         this.var_2768 = param1.readInteger();
         this.var_2771 = param1.readInteger();
         this.var_2769 = param1.readInteger();
         this.var_2288 = param1.readInteger();
         return true;
      }
   }
}
