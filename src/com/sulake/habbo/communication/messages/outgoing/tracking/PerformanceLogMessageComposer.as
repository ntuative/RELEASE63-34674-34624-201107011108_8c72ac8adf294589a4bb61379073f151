package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2912:int = 0;
      
      private var var_1478:String = "";
      
      private var var_1807:String = "";
      
      private var var_2426:String = "";
      
      private var var_2926:String = "";
      
      private var var_2146:int = 0;
      
      private var var_2928:int = 0;
      
      private var var_2925:int = 0;
      
      private var var_1479:int = 0;
      
      private var var_2927:int = 0;
      
      private var var_1481:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2912 = param1;
         this.var_1478 = param2;
         this.var_1807 = param3;
         this.var_2426 = param4;
         this.var_2926 = param5;
         if(param6)
         {
            this.var_2146 = 1;
         }
         else
         {
            this.var_2146 = 0;
         }
         this.var_2928 = param7;
         this.var_2925 = param8;
         this.var_1479 = param9;
         this.var_2927 = param10;
         this.var_1481 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2912,this.var_1478,this.var_1807,this.var_2426,this.var_2926,this.var_2146,this.var_2928,this.var_2925,this.var_1479,this.var_2927,this.var_1481];
      }
   }
}
