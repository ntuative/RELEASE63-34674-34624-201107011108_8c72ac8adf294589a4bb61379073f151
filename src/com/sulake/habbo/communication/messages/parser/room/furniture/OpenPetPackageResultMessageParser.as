package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_239:int = 0;
      
      private var var_2047:int = 0;
      
      private var var_1963:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_239;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_2047;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1963;
      }
      
      public function flush() : Boolean
      {
         this.var_239 = 0;
         this.var_2047 = 0;
         this.var_1963 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_239 = param1.readInteger();
         this.var_2047 = param1.readInteger();
         this.var_1963 = param1.readString();
         return true;
      }
   }
}
