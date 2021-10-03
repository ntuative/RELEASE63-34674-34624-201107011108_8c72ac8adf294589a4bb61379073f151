package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2488:int;
      
      private var var_2489:int;
      
      private var var_2487:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2488 = param1;
         this.var_2489 = param2;
         this.var_2487 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2488,this.var_2489,this.var_2487];
      }
      
      public function dispose() : void
      {
      }
   }
}
