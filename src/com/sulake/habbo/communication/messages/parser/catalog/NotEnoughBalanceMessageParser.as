package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1800:int = 0;
      
      private var var_1799:int = 0;
      
      private var var_1840:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1800;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1799;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1840;
      }
      
      public function flush() : Boolean
      {
         this.var_1800 = 0;
         this.var_1799 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1800 = param1.readInteger();
         this.var_1799 = param1.readInteger();
         this.var_1840 = param1.readInteger();
         return true;
      }
   }
}
