package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1250:int = 1;
      
      public static const const_918:int = 2;
      
      public static const const_997:int = 3;
      
      public static const const_2022:int = 4;
       
      
      private var _index:int;
      
      private var var_3034:String;
      
      private var var_3032:String;
      
      private var var_3031:Boolean;
      
      private var var_3033:String;
      
      private var var_943:String;
      
      private var var_3035:int;
      
      private var var_2281:int;
      
      private var _type:int;
      
      private var var_2439:String;
      
      private var var_1136:GuestRoomData;
      
      private var var_1137:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_3034 = param1.readString();
         this.var_3032 = param1.readString();
         this.var_3031 = param1.readInteger() == 1;
         this.var_3033 = param1.readString();
         this.var_943 = param1.readString();
         this.var_3035 = param1.readInteger();
         this.var_2281 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1250)
         {
            this.var_2439 = param1.readString();
         }
         else if(this._type == const_997)
         {
            this.var_1137 = new PublicRoomData(param1);
         }
         else if(this._type == const_918)
         {
            this.var_1136 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1136 != null)
         {
            this.var_1136.dispose();
            this.var_1136 = null;
         }
         if(this.var_1137 != null)
         {
            this.var_1137.dispose();
            this.var_1137 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_3034;
      }
      
      public function get popupDesc() : String
      {
         return this.var_3032;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_3031;
      }
      
      public function get picText() : String
      {
         return this.var_3033;
      }
      
      public function get picRef() : String
      {
         return this.var_943;
      }
      
      public function get folderId() : int
      {
         return this.var_3035;
      }
      
      public function get tag() : String
      {
         return this.var_2439;
      }
      
      public function get userCount() : int
      {
         return this.var_2281;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1136;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1137;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1250)
         {
            return 0;
         }
         if(this.type == const_918)
         {
            return this.var_1136.maxUserCount;
         }
         if(this.type == const_997)
         {
            return this.var_1137.maxUsers;
         }
         return 0;
      }
   }
}
