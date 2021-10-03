package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1890:int = 0;
      
      private var var_1889:int = 0;
      
      private var var_2365:int = 0;
      
      private var var_2363:Boolean = false;
      
      private var var_2364:Boolean = false;
      
      private var var_2366:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1890 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1889 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2365 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2363 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2364 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2366 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1890;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1889;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2365;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2363;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2364;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2366;
      }
   }
}
