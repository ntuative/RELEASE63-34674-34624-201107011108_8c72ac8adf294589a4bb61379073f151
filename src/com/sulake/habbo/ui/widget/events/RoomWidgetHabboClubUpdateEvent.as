package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_288:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2421:int = 0;
      
      private var var_2418:int = 0;
      
      private var var_2419:int = 0;
      
      private var var_2420:Boolean = false;
      
      private var var_1913:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_288,param6,param7);
         this.var_2421 = param1;
         this.var_2418 = param2;
         this.var_2419 = param3;
         this.var_2420 = param4;
         this.var_1913 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2421;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2418;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2419;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2420;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1913;
      }
   }
}
