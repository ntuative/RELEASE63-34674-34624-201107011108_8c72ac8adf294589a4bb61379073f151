package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2293:int;
      
      private var var_2292:int;
      
      private var var_1216:int;
      
      private var var_1215:int;
      
      private var var_1840:int;
      
      private var var_2294:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2293 = param1.readInteger();
         this.var_2292 = param1.readInteger();
         this.var_1216 = param1.readInteger();
         this.var_1215 = param1.readInteger();
         this.var_1840 = param1.readInteger();
         this.var_2294 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2293;
      }
      
      public function get charges() : int
      {
         return this.var_2292;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1216;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1215;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2294;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1840;
      }
   }
}
