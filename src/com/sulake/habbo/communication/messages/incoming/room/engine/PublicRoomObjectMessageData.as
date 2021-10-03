package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_186:Number = 0;
      
      private var var_185:Number = 0;
      
      private var var_464:int = 0;
      
      private var var_595:int = 0;
      
      private var var_738:int = 0;
      
      private var var_196:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_196 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_196)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_196)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_196)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_186;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_196)
         {
            this.var_186 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_185;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_196)
         {
            this.var_185 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_464;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_464 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_595;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_595 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_738;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_738 = param1;
         }
      }
   }
}
