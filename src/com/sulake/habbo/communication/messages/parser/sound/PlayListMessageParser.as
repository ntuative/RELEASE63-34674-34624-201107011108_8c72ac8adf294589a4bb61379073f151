package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.sound.PlayListEntry;
   
   public class PlayListMessageParser implements IMessageParser
   {
       
      
      private var var_1938:int;
      
      private var var_1937:Array;
      
      public function PlayListMessageParser()
      {
         super();
      }
      
      public function get synchronizationCount() : int
      {
         return this.var_1938;
      }
      
      public function get playList() : Array
      {
         return this.var_1937;
      }
      
      public function flush() : Boolean
      {
         this.var_1938 = -1;
         this.var_1937 = [];
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         this.var_1938 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readInteger();
            _loc5_ = param1.readInteger();
            _loc6_ = param1.readString();
            _loc7_ = param1.readString();
            this.var_1937.push(new PlayListEntry(_loc4_,_loc5_,_loc6_,_loc7_));
            _loc3_++;
         }
         return true;
      }
   }
}
