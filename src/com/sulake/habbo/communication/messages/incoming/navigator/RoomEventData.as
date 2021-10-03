package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_2169:Boolean;
      
      private var var_2977:int;
      
      private var var_2974:String;
      
      private var var_420:int;
      
      private var var_2976:int;
      
      private var var_1973:String;
      
      private var var_2975:String;
      
      private var var_2978:String;
      
      private var var_935:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_935 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_2169 = false;
            return;
         }
         this.var_2169 = true;
         this.var_2977 = int(_loc2_);
         this.var_2974 = param1.readString();
         this.var_420 = int(param1.readString());
         this.var_2976 = param1.readInteger();
         this.var_1973 = param1.readString();
         this.var_2975 = param1.readString();
         this.var_2978 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_935.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_935 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2977;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2974;
      }
      
      public function get flatId() : int
      {
         return this.var_420;
      }
      
      public function get eventType() : int
      {
         return this.var_2976;
      }
      
      public function get eventName() : String
      {
         return this.var_1973;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2975;
      }
      
      public function get creationTime() : String
      {
         return this.var_2978;
      }
      
      public function get tags() : Array
      {
         return this.var_935;
      }
      
      public function get exists() : Boolean
      {
         return this.var_2169;
      }
   }
}
