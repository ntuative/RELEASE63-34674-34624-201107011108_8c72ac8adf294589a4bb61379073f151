package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import flash.display.BitmapData;
   
   public class Animation implements IDisposable
   {
       
      
      private var var_100:IBitmapWrapperWindow;
      
      private var var_1065:int;
      
      private var var_1317:Boolean;
      
      private var var_229:Array;
      
      public function Animation(param1:IBitmapWrapperWindow)
      {
         this.var_229 = new Array();
         super();
         this.var_100 = param1;
         this.var_100.visible = false;
         if(param1.bitmap == null)
         {
            param1.bitmap = new BitmapData(param1.width,param1.height,true,0);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         this.var_100 = null;
         if(this.var_229)
         {
            for each(_loc1_ in this.var_229)
            {
               _loc1_.dispose();
            }
            this.var_229 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_100 == null;
      }
      
      public function addObject(param1:AnimationObject) : void
      {
         this.var_229.push(param1);
      }
      
      public function stop() : void
      {
         this.var_1317 = false;
         this.var_100.visible = false;
      }
      
      public function restart() : void
      {
         var _loc1_:* = null;
         this.var_1065 = 0;
         this.var_1317 = true;
         for each(_loc1_ in this.var_229)
         {
            _loc1_.onAnimationStart();
         }
         this.draw();
         this.var_100.visible = true;
      }
      
      public function update(param1:uint) : void
      {
         if(this.var_1317)
         {
            this.var_1065 += param1;
            this.draw();
         }
      }
      
      private function draw() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:* = null;
         this.var_100.bitmap.fillRect(this.var_100.bitmap.rect,0);
         if(this.var_1317)
         {
            _loc1_ = false;
            for each(_loc2_ in this.var_229)
            {
               if(!_loc2_.isFinished(this.var_1065))
               {
                  _loc1_ = true;
                  _loc3_ = _loc2_.getBitmap(this.var_1065);
                  if(_loc3_ != null)
                  {
                     this.var_100.bitmap.copyPixels(_loc3_,_loc3_.rect,_loc2_.getPosition(this.var_1065));
                  }
               }
            }
         }
         this.var_100.invalidate(this.var_100.rectangle);
         this.var_1317 = _loc1_;
      }
   }
}
