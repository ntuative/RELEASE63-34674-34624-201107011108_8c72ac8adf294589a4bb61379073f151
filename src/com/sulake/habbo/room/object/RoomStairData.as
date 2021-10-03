package com.sulake.habbo.room.object
{
   public class RoomStairData
   {
       
      
      private var var_2883:int;
      
      private var var_2089:Boolean;
      
      private var var_2090:Boolean;
      
      private var var_47:Boolean;
      
      public function RoomStairData(param1:int, param2:Boolean, param3:Boolean, param4:Boolean)
      {
         super();
         this.var_47 = param4;
         this.var_2883 = param1;
         this.var_2089 = param2;
         this.var_2090 = param3;
      }
      
      public function get stairHeight() : int
      {
         return this.var_2883;
      }
      
      public function get neighbourStairMin() : Boolean
      {
         return this.var_2089;
      }
      
      public function get neighbourStairMax() : Boolean
      {
         return this.var_2090;
      }
      
      public function get neighbourStair() : Boolean
      {
         return this.var_2089 || this.var_2090;
      }
      
      public function get border() : Boolean
      {
         return this.var_47;
      }
   }
}
