package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_3003:Boolean;
      
      private var var_3002:int;
      
      private var var_2096:Array;
      
      private var var_873:Array;
      
      private var var_874:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_3003;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_3002;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_2096 = [];
         this.var_873 = [];
         this.var_874 = [];
         this.var_3003 = param1.readBoolean();
         this.var_3002 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_2096.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_873.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_874.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
