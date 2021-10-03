package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1340:int;
      
      private var _furniId:int;
      
      private var var_2410:int;
      
      private var var_2245:String;
      
      private var var_1977:int;
      
      private var var_432:int;
      
      private var var_2409:int = -1;
      
      private var var_2381:int;
      
      private var var_1976:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1340 = param1;
         this._furniId = param2;
         this.var_2410 = param3;
         this.var_2245 = param4;
         this.var_1977 = param5;
         this.var_432 = param6;
         this.var_2409 = param7;
         this.var_2381 = param8;
         this.var_1976 = param9;
      }
      
      public function get offerId() : int
      {
         return this.var_1340;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2410;
      }
      
      public function get stuffData() : String
      {
         return this.var_2245;
      }
      
      public function get price() : int
      {
         return this.var_1977;
      }
      
      public function get status() : int
      {
         return this.var_432;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2409;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2381;
      }
      
      public function get offerCount() : int
      {
         return this.var_1976;
      }
   }
}
