package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_970:int;
      
      private var var_858:Boolean;
      
      private var var_1819:Boolean;
      
      private var _figure:String;
      
      private var var_1467:int;
      
      private var var_1816:String;
      
      private var var_1818:String;
      
      private var var_1817:String;
      
      private var var_2940:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_970 = param1.readInteger();
         this.var_858 = param1.readBoolean();
         this.var_1819 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1467 = param1.readInteger();
         this.var_1816 = param1.readString();
         this.var_1818 = param1.readString();
         this.var_1817 = param1.readString();
         this.var_2940 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_970;
      }
      
      public function get online() : Boolean
      {
         return this.var_858;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1819;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1467;
      }
      
      public function get motto() : String
      {
         return this.var_1816;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1818;
      }
      
      public function get realName() : String
      {
         return this.var_1817;
      }
      
      public function get facebookId() : String
      {
         return this.var_2940;
      }
   }
}
