package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1276:int;
      
      private var var_1885:String;
      
      private var var_2124:int;
      
      private var var_2400:int;
      
      private var var_2403:int;
      
      private var var_2123:int;
      
      private var var_2125:Boolean;
      
      private var _category:String;
      
      private var var_2901:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1276 = param1.readInteger();
         this.var_1885 = param1.readString();
         this.var_2124 = Math.max(1,param1.readInteger());
         this.var_2400 = param1.readInteger();
         this.var_2403 = param1.readInteger();
         this.var_2123 = param1.readInteger();
         this.var_2125 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2901 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_1885;
      }
      
      public function get level() : int
      {
         return this.var_1276;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2124;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2400;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2403;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2123;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_2125;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2901;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1276 > 1 || this.var_2125;
      }
      
      public function setMaxProgress() : void
      {
         this.var_2123 = this.var_2124;
      }
   }
}
