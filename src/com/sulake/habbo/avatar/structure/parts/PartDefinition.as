package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2544:String;
      
      private var var_1859:String;
      
      private var var_2545:String;
      
      private var var_1860:Boolean;
      
      private var var_1861:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2544 = String(param1["set-type"]);
         this.var_1859 = String(param1["flipped-set-type"]);
         this.var_2545 = String(param1["remove-set-type"]);
         this.var_1860 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1861 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1861;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1861 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2544;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1859;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2545;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1860;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1860 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1859 = param1;
      }
   }
}
