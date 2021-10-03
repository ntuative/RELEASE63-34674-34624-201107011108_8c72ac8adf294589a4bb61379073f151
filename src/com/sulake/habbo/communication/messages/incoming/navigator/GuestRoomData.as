package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_420:int;
      
      private var var_845:Boolean;
      
      private var var_941:String;
      
      private var _ownerName:String;
      
      private var var_2320:int;
      
      private var var_2281:int;
      
      private var var_2679:int;
      
      private var var_1761:String;
      
      private var var_2682:int;
      
      private var var_2405:Boolean;
      
      private var var_761:int;
      
      private var var_1467:int;
      
      private var var_2678:String;
      
      private var var_935:Array;
      
      private var var_2681:RoomThumbnailData;
      
      private var var_2325:Boolean;
      
      private var var_2680:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_935 = new Array();
         super();
         this.var_420 = param1.readInteger();
         this.var_845 = param1.readBoolean();
         this.var_941 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2320 = param1.readInteger();
         this.var_2281 = param1.readInteger();
         this.var_2679 = param1.readInteger();
         this.var_1761 = param1.readString();
         this.var_2682 = param1.readInteger();
         this.var_2405 = param1.readBoolean();
         this.var_761 = param1.readInteger();
         this.var_1467 = param1.readInteger();
         this.var_2678 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_935.push(_loc4_);
            _loc3_++;
         }
         this.var_2681 = new RoomThumbnailData(param1);
         this.var_2325 = param1.readBoolean();
         this.var_2680 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_420;
      }
      
      public function get event() : Boolean
      {
         return this.var_845;
      }
      
      public function get roomName() : String
      {
         return this.var_941;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2320;
      }
      
      public function get userCount() : int
      {
         return this.var_2281;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2679;
      }
      
      public function get description() : String
      {
         return this.var_1761;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2682;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2405;
      }
      
      public function get score() : int
      {
         return this.var_761;
      }
      
      public function get categoryId() : int
      {
         return this.var_1467;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2678;
      }
      
      public function get tags() : Array
      {
         return this.var_935;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2681;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2325;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2680;
      }
   }
}
