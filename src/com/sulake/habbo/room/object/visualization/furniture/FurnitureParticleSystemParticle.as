package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.geom.Vector3D;
   
   public class FurnitureParticleSystemParticle
   {
       
      
      private var _x:Number;
      
      private var var_186:Number;
      
      private var var_185:Number;
      
      private var var_1782:Number;
      
      private var var_1783:Number;
      
      private var var_1781:Number;
      
      private var var_1187:Boolean = false;
      
      private var _direction:Vector3D;
      
      private var var_525:int = 0;
      
      private var var_958:int;
      
      private var var_2368:Boolean = false;
      
      private var var_1780:Boolean = false;
      
      private var var_1700:Number;
      
      private var _alphaMultiplier:Number = 1.0;
      
      private var _frames:Array;
      
      public function FurnitureParticleSystemParticle()
      {
         super();
      }
      
      public function get fade() : Boolean
      {
         return this.var_1780;
      }
      
      public function get alphaMultiplier() : Number
      {
         return this._alphaMultiplier;
      }
      
      public function get direction() : Vector3D
      {
         return this._direction;
      }
      
      public function get age() : int
      {
         return this.var_525;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:int, param8:Boolean = false, param9:Array = null, param10:Boolean = false) : void
      {
         this._x = param1;
         this.var_186 = param2;
         this.var_185 = param3;
         this._direction = new Vector3D(param4.x,param4.y,param4.z);
         this._direction.scaleBy(param5);
         this.var_1782 = this._x - this._direction.x * param6;
         this.var_1783 = this.var_186 - this._direction.y * param6;
         this.var_1781 = this.var_185 - this._direction.z * param6;
         this.var_525 = 0;
         this.var_1187 = false;
         this.var_958 = param7;
         this.var_2368 = param8;
         this._frames = param9;
         this.var_1780 = param10;
         this._alphaMultiplier = 1;
         this.var_1700 = 0.5 + Math.random() * 0.5;
      }
      
      public function update() : void
      {
         ++this.var_525;
         if(this.var_525 == this.var_958)
         {
            this.ignite();
         }
         if(this.var_1780)
         {
            if(this.var_525 / this.var_958 > this.var_1700)
            {
               this._alphaMultiplier = (this.var_958 - this.var_525) / (this.var_958 * (1 - this.var_1700));
            }
         }
      }
      
      public function getAsset() : IGraphicAsset
      {
         if(this._frames && this._frames.length > 0)
         {
            return this._frames[this.var_525 % this._frames.length];
         }
         return null;
      }
      
      protected function ignite() : void
      {
      }
      
      public function get isEmitter() : Boolean
      {
         return this.var_2368;
      }
      
      public function get isAlive() : Boolean
      {
         return this.var_525 <= this.var_958;
      }
      
      public function dispose() : void
      {
         this._direction = null;
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
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.var_186 = param1;
      }
      
      public function set z(param1:Number) : void
      {
         this.var_185 = param1;
      }
      
      public function get lastX() : Number
      {
         return this.var_1782;
      }
      
      public function set lastX(param1:Number) : void
      {
         this.var_1187 = true;
         this.var_1782 = param1;
      }
      
      public function get lastY() : Number
      {
         return this.var_1783;
      }
      
      public function set lastY(param1:Number) : void
      {
         this.var_1187 = true;
         this.var_1783 = param1;
      }
      
      public function get lastZ() : Number
      {
         return this.var_1781;
      }
      
      public function set lastZ(param1:Number) : void
      {
         this.var_1187 = true;
         this.var_1781 = param1;
      }
      
      public function get hasMoved() : Boolean
      {
         return this.var_1187;
      }
      
      public function toString() : String
      {
         return [this._x,this.var_186,this.var_185].toString();
      }
   }
}
