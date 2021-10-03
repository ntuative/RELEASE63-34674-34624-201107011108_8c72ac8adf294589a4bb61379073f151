package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2848:int;
      
      private var var_2846:int;
      
      private var var_858:Boolean;
      
      private var var_2844:int;
      
      private var var_2847:int;
      
      private var var_2845:int;
      
      private var var_2843:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2848 = param1.readInteger();
         this.var_2846 = param1.readInteger();
         this.var_858 = param1.readBoolean();
         this.var_2844 = param1.readInteger();
         this.var_2847 = param1.readInteger();
         this.var_2845 = param1.readInteger();
         this.var_2843 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2848;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2846;
      }
      
      public function get online() : Boolean
      {
         return this.var_858;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2844;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2847;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2845;
      }
      
      public function get banCount() : int
      {
         return this.var_2843;
      }
   }
}
