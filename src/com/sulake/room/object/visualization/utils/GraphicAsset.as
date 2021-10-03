package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2788:String;
      
      private var var_2908:String;
      
      private var var_476:BitmapDataAsset;
      
      private var var_1492:Boolean;
      
      private var var_1491:Boolean;
      
      private var var_2907:Boolean;
      
      private var _offsetX:int;
      
      private var var_1170:int;
      
      private var var_220:int;
      
      private var _height:int;
      
      private var var_765:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2788 = param1;
         this.var_2908 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_476 = _loc9_;
            this.var_765 = false;
         }
         else
         {
            this.var_476 = null;
            this.var_765 = true;
         }
         this.var_1492 = param4;
         this.var_1491 = param5;
         this._offsetX = param6;
         this.var_1170 = param7;
         this.var_2907 = param8;
      }
      
      public function dispose() : void
      {
         this.var_476 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_765 && this.var_476 != null)
         {
            _loc1_ = this.var_476.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_220 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_765 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1491;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1492;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_220;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2788;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2908;
      }
      
      public function get asset() : IAsset
      {
         return this.var_476;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2907;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1492)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1491)
         {
            return this.var_1170;
         }
         return -(this.height + this.var_1170);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1170;
      }
   }
}
