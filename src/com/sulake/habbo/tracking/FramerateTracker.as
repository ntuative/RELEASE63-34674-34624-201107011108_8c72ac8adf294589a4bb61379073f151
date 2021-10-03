package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1806:int;
      
      private var var_2984:int;
      
      private var var_871:int;
      
      private var var_533:Number;
      
      private var var_2983:Boolean;
      
      private var var_2985:int;
      
      private var var_2175:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_533);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2984 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2985 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2983 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_871;
         if(this.var_871 == 1)
         {
            this.var_533 = param1;
            this.var_1806 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_871);
            this.var_533 = this.var_533 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2983 && param3 - this.var_1806 >= this.var_2984)
         {
            this.var_871 = 0;
            if(this.var_2175 < this.var_2985)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_2175;
               this.var_1806 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
