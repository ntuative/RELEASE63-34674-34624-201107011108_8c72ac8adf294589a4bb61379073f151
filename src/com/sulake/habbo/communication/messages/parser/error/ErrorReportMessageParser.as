package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1837:int;
      
      private var var_1855:int;
      
      private var var_1854:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1855 = param1.readInteger();
         this.var_1837 = param1.readInteger();
         this.var_1854 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1837 = 0;
         this.var_1855 = 0;
         this.var_1854 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1837;
      }
      
      public function get messageId() : int
      {
         return this.var_1855;
      }
      
      public function get timestamp() : String
      {
         return this.var_1854;
      }
   }
}
