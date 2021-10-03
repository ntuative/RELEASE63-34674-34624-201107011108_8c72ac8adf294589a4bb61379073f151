package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_959:String = "";
      
      public static const const_419:int = 0;
      
      public static const const_587:int = 255;
      
      public static const const_1011:Boolean = false;
      
      public static const const_592:int = 0;
      
      public static const const_637:int = 0;
      
      public static const const_398:int = 0;
      
      public static const const_1220:int = 1;
      
      public static const const_1399:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2439:String = "";
      
      private var var_1997:int = 0;
      
      private var var_2437:int = 255;
      
      private var var_2435:Boolean = false;
      
      private var var_2434:int = 0;
      
      private var var_2436:int = 0;
      
      private var var_2438:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2439 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2439;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1997 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1997;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2437 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2437;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2435 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2435;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2434 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2434;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2436 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2436;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2438 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2438;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
