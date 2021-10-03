package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_186:Number = 0;
      
      private var var_185:Number = 0;
      
      private var var_2509:Number = 0;
      
      private var var_2512:Number = 0;
      
      private var var_2508:Number = 0;
      
      private var var_2511:Number = 0;
      
      private var var_464:int = 0;
      
      private var var_2507:int = 0;
      
      private var var_359:Array;
      
      private var var_2510:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_359 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_186 = param3;
         this.var_185 = param4;
         this.var_2509 = param5;
         this.var_464 = param6;
         this.var_2507 = param7;
         this.var_2512 = param8;
         this.var_2508 = param9;
         this.var_2511 = param10;
         this.var_2510 = param11;
         this.var_359 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_186;
      }
      
      public function get z() : Number
      {
         return this.var_185;
      }
      
      public function get localZ() : Number
      {
         return this.var_2509;
      }
      
      public function get targetX() : Number
      {
         return this.var_2512;
      }
      
      public function get targetY() : Number
      {
         return this.var_2508;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2511;
      }
      
      public function get dir() : int
      {
         return this.var_464;
      }
      
      public function get dirHead() : int
      {
         return this.var_2507;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2510;
      }
      
      public function get actions() : Array
      {
         return this.var_359.slice();
      }
   }
}
