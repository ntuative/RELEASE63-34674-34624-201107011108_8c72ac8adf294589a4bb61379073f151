package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_862:int = 1;
      
      public static const const_797:int = 2;
      
      public static const const_782:int = 3;
      
      public static const const_1348:int = 4;
      
      public static const const_894:int = 5;
      
      public static const const_1380:int = 6;
       
      
      private var _type:int;
      
      private var var_1231:int;
      
      private var var_2398:String;
      
      private var var_2949:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1231 = param2;
         this.var_2398 = param3;
         this.var_2949 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2398;
      }
      
      public function get time() : String
      {
         return this.var_2949;
      }
      
      public function get senderId() : int
      {
         return this.var_1231;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
