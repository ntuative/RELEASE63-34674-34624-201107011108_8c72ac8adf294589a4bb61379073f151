package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2490:String;
      
      private var var_2780:int;
      
      private var var_2491:int;
      
      private var var_2781:String;
      
      private var var_2964:int;
      
      private var var_1731:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2490 = param1.readString();
         this.var_2780 = param1.readInteger();
         this.var_2491 = param1.readInteger();
         this.var_2781 = param1.readString();
         this.var_2964 = param1.readInteger();
         this.var_1731 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2490;
      }
      
      public function get unitPort() : int
      {
         return this.var_2780;
      }
      
      public function get worldId() : int
      {
         return this.var_2491;
      }
      
      public function get castLibs() : String
      {
         return this.var_2781;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2964;
      }
      
      public function get nodeId() : int
      {
         return this.var_1731;
      }
   }
}
