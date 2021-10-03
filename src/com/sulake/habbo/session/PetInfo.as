package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_2138:int;
      
      private var var_1276:int;
      
      private var var_2628:int;
      
      private var var_2296:int;
      
      private var var_2624:int;
      
      private var _energy:int;
      
      private var var_2625:int;
      
      private var _nutrition:int;
      
      private var var_2623:int;
      
      private var var_2629:int;
      
      private var _ownerName:String;
      
      private var var_2828:int;
      
      private var var_525:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_2138;
      }
      
      public function get level() : int
      {
         return this.var_1276;
      }
      
      public function get levelMax() : int
      {
         return this.var_2628;
      }
      
      public function get experience() : int
      {
         return this.var_2296;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2624;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2625;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2623;
      }
      
      public function get ownerId() : int
      {
         return this.var_2629;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2828;
      }
      
      public function get age() : int
      {
         return this.var_525;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_2138 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1276 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2628 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2296 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2624 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2625 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2623 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2629 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2828 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_525 = param1;
      }
   }
}
