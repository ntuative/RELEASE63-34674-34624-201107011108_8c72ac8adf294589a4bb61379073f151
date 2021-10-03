package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2373:int;
      
      private var var_2026:String;
      
      private var var_2615:String;
      
      private var var_2617:Boolean;
      
      private var var_2616:Boolean;
      
      private var var_2620:int;
      
      private var var_2618:String;
      
      private var var_2619:String;
      
      private var var_1817:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2373 = param1.readInteger();
         this.var_2026 = param1.readString();
         this.var_2615 = param1.readString();
         this.var_2617 = param1.readBoolean();
         this.var_2616 = param1.readBoolean();
         param1.readString();
         this.var_2620 = param1.readInteger();
         this.var_2618 = param1.readString();
         this.var_2619 = param1.readString();
         this.var_1817 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2373;
      }
      
      public function get avatarName() : String
      {
         return this.var_2026;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2615;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2617;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2616;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2620;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2618;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2619;
      }
      
      public function get realName() : String
      {
         return this.var_1817;
      }
   }
}
