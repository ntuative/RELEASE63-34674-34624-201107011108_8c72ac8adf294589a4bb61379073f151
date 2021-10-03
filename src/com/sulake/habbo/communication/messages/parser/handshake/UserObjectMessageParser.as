package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_999:String;
      
      private var var_2651:String;
      
      private var var_1817:String;
      
      private var var_2652:int;
      
      private var var_2650:String;
      
      private var var_2649:int;
      
      private var var_2654:int;
      
      private var var_2653:int;
      
      private var var_1250:int;
      
      private var var_813:int;
      
      private var var_2607:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_999 = param1.readString();
         this.var_2651 = param1.readString();
         this.var_1817 = param1.readString();
         this.var_2652 = param1.readInteger();
         this.var_2650 = param1.readString();
         this.var_2649 = param1.readInteger();
         this.var_2654 = param1.readInteger();
         this.var_2653 = param1.readInteger();
         this.var_1250 = param1.readInteger();
         this.var_813 = param1.readInteger();
         this.var_2607 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_999;
      }
      
      public function get customData() : String
      {
         return this.var_2651;
      }
      
      public function get realName() : String
      {
         return this.var_1817;
      }
      
      public function get tickets() : int
      {
         return this.var_2652;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2650;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2649;
      }
      
      public function get directMail() : int
      {
         return this.var_2654;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2653;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1250;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_813;
      }
      
      public function get identityId() : int
      {
         return this.var_2607;
      }
   }
}
