package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1483:Boolean = false;
      
      private var var_1977:int;
      
      private var var_2096:Array;
      
      private var var_873:Array;
      
      private var var_874:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1483 = _loc2_.isWrappingEnabled;
         this.var_1977 = _loc2_.wrappingPrice;
         this.var_2096 = _loc2_.stuffTypes;
         this.var_873 = _loc2_.boxTypes;
         this.var_874 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1483;
      }
      
      public function get price() : int
      {
         return this.var_1977;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_2096;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_873;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_874;
      }
   }
}
