package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2138:int;
      
      private var _name:String;
      
      private var var_1276:int;
      
      private var var_2956:int;
      
      private var var_2296:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_2954:int;
      
      private var var_2955:int;
      
      private var var_2957:int;
      
      private var var_2828:int;
      
      private var var_2629:int;
      
      private var _ownerName:String;
      
      private var var_525:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_2138;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1276;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2956;
      }
      
      public function get experience() : int
      {
         return this.var_2296;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2954;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2955;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2957;
      }
      
      public function get respect() : int
      {
         return this.var_2828;
      }
      
      public function get ownerId() : int
      {
         return this.var_2629;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_525;
      }
      
      public function flush() : Boolean
      {
         this.var_2138 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_2138 = param1.readInteger();
         this._name = param1.readString();
         this.var_1276 = param1.readInteger();
         this.var_2956 = param1.readInteger();
         this.var_2296 = param1.readInteger();
         this.var_2954 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2955 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2957 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2828 = param1.readInteger();
         this.var_2629 = param1.readInteger();
         this.var_525 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
