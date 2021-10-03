package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_2087:String = "";
      
      private var var_1968:String = "";
      
      private var var_2602:String = "";
      
      private var var_2601:Number = 0;
      
      private var var_2600:Number = 0;
      
      private var var_2603:Number = 0;
      
      private var var_2604:Number = 0;
      
      private var var_2313:Boolean = false;
      
      private var var_2312:Boolean = false;
      
      private var var_2311:Boolean = false;
      
      private var var_2310:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_2087 = param2;
         this.var_1968 = param3;
         this.var_2602 = param4;
         this.var_2601 = param5;
         this.var_2600 = param6;
         this.var_2603 = param7;
         this.var_2604 = param8;
         this.var_2313 = param9;
         this.var_2312 = param10;
         this.var_2311 = param11;
         this.var_2310 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_2087;
      }
      
      public function get canvasId() : String
      {
         return this.var_1968;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2602;
      }
      
      public function get screenX() : Number
      {
         return this.var_2601;
      }
      
      public function get screenY() : Number
      {
         return this.var_2600;
      }
      
      public function get localX() : Number
      {
         return this.var_2603;
      }
      
      public function get localY() : Number
      {
         return this.var_2604;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2313;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2312;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2311;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2310;
      }
   }
}
