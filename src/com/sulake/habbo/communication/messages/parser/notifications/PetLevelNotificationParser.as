package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_2138:int;
      
      private var var_2537:String;
      
      private var var_1276:int;
      
      private var var_1169:int;
      
      private var var_1752:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2138 = param1.readInteger();
         this.var_2537 = param1.readString();
         this.var_1276 = param1.readInteger();
         this.var_1169 = param1.readInteger();
         this.var_1752 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_2138;
      }
      
      public function get petName() : String
      {
         return this.var_2537;
      }
      
      public function get level() : int
      {
         return this.var_1276;
      }
      
      public function get petType() : int
      {
         return this.var_1169;
      }
      
      public function get breed() : int
      {
         return this.var_1752;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
