package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1761:String;
      
      private var var_2320:int;
      
      private var _password:String;
      
      private var var_1467:int;
      
      private var var_2326:int;
      
      private var var_935:Array;
      
      private var var_2324:Array;
      
      private var var_2325:Boolean;
      
      private var var_2318:Boolean;
      
      private var var_2321:Boolean;
      
      private var var_2322:Boolean;
      
      private var var_2327:int;
      
      private var var_2328:int;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2325;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2325 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2318;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2318 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2321;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2321 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2322;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2322 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2327;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2327 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2328;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2328 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1761;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1761 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2320;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2320 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1467;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1467 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2326;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2326 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_935;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_935 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2324;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2324 = param1;
      }
   }
}
