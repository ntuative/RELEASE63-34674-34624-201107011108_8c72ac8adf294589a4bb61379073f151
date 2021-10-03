package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1333:Boolean;
      
      private var var_1334:Boolean;
      
      private var var_1623:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1333;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1334;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1623;
      }
      
      public function flush() : Boolean
      {
         this.var_1333 = false;
         this.var_1334 = false;
         this.var_1623 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1333 = param1.readBoolean();
         this.var_1334 = param1.readBoolean();
         this.var_1623 = param1.readBoolean();
         return true;
      }
   }
}
