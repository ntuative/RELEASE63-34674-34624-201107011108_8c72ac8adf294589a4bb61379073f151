package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2326:int = 16777215;
      
      public static const const_1184:int = 8191;
      
      public static const const_1354:int = 8191;
      
      public static const const_2205:int = 1;
      
      public static const const_1393:int = 1;
      
      public static const const_1269:int = 1;
      
      private static var var_550:uint = 0;
      
      private static var var_551:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1184)
         {
            param2 = const_1184;
         }
         else if(param2 < const_1393)
         {
            param2 = const_1393;
         }
         if(param3 > const_1354)
         {
            param3 = const_1354;
         }
         else if(param3 < const_1269)
         {
            param3 = const_1269;
         }
         super(param2,param3,param4,param5);
         ++var_550;
         var_551 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_550;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_551;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_551 -= width * height * 4;
            --var_550;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
