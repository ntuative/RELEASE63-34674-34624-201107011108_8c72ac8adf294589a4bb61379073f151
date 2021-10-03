package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_420:int;
      
      private var var_2281:int;
      
      private var var_2866:Boolean;
      
      private var var_2629:int;
      
      private var _ownerName:String;
      
      private var var_128:RoomData;
      
      private var var_845:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_420 = param1.readInteger();
         this.var_2281 = param1.readInteger();
         this.var_2866 = param1.readBoolean();
         this.var_2629 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_128 = new RoomData(param1);
         this.var_845 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_128 != null)
         {
            this.var_128.dispose();
            this.var_128 = null;
         }
         if(this.var_845 != null)
         {
            this.var_845.dispose();
            this.var_845 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_420;
      }
      
      public function get userCount() : int
      {
         return this.var_2281;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2866;
      }
      
      public function get ownerId() : int
      {
         return this.var_2629;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_128;
      }
      
      public function get event() : RoomData
      {
         return this.var_845;
      }
   }
}
