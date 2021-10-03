package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1276:int;
      
      private var var_1712:int;
      
      private var var_2400:int;
      
      private var var_2403:int;
      
      private var var_2399:int;
      
      private var var_1885:int;
      
      private var var_2401:String = "";
      
      private var var_2402:String = "";
      
      private var var_2404:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1276 = param1.readInteger();
         this.var_1885 = param1.readInteger();
         this.var_2401 = param1.readString();
         this.var_1712 = param1.readInteger();
         this.var_2400 = param1.readInteger();
         this.var_2403 = param1.readInteger();
         this.var_2399 = param1.readInteger();
         this.var_2404 = param1.readInteger();
         this.var_2402 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1276;
      }
      
      public function get points() : int
      {
         return this.var_1712;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2400;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2403;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2399;
      }
      
      public function get badgeId() : int
      {
         return this.var_1885;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2401;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2402;
      }
      
      public function get achievementID() : int
      {
         return this.var_2404;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
