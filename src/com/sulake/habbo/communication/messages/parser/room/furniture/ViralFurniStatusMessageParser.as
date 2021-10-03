package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      private var var_198:String;
      
      private var var_239:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1555:int = 0;
      
      private var var_432:int;
      
      private var _shareId:String;
      
      private var var_2458:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get campaignID() : String
      {
         return this.var_198;
      }
      
      public function get objectId() : int
      {
         return this.var_239;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1555;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get status() : int
      {
         return this.var_432;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2458;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_198 = param1.readString();
         this.var_239 = param1.readInteger();
         this.var_432 = param1.readInteger();
         this._shareId = param1.readString();
         this.var_2458 = param1.readString();
         this.var_1555 = param1.readInteger();
         return true;
      }
   }
}
