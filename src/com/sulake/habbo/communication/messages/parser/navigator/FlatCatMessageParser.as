package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_420:int;
      
      private var var_1731:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_420 = param1.readInteger();
         this.var_1731 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_420 = 0;
         this.var_1731 = 0;
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_420;
      }
      
      public function get nodeId() : int
      {
         return this.var_1731;
      }
   }
}
