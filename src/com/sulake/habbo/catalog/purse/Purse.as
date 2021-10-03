package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1827:int = 0;
      
      private var var_1523:Dictionary;
      
      private var var_1890:int = 0;
      
      private var var_1889:int = 0;
      
      private var var_2364:Boolean = false;
      
      private var var_2578:int = 0;
      
      private var var_2577:int = 0;
      
      private var var_2366:Boolean = false;
      
      public function Purse()
      {
         this.var_1523 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1827;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1827 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1890;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1890 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1889;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1889 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1890 > 0 || this.var_1889 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2364;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2366;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2366 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2364 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2578;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2578 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2577;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2577 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1523;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1523 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1523[param1];
      }
   }
}
