package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1853:int;
      
      private var var_1900:Number;
      
      private var var_2590:Number;
      
      private var var_2589:int;
      
      private var var_2591:Number;
      
      private var var_2592:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1853 = param1;
         this.var_1900 = param2;
         this.var_2590 = param3;
         this.var_2591 = param4;
         this.var_2592 = param5;
         this.var_2589 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1853;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1900 < 0)
         {
            return 0;
         }
         return this.var_1900 + (getTimer() - this.var_2589) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2590;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2591;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2592;
      }
   }
}
