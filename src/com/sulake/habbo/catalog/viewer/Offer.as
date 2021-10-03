package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_2012:String = "pricing_model_unknown";
      
      public static const const_421:String = "pricing_model_single";
      
      public static const const_433:String = "pricing_model_multi";
      
      public static const const_636:String = "pricing_model_bundle";
      
      public static const const_1793:String = "price_type_none";
      
      public static const const_831:String = "price_type_credits";
      
      public static const const_1280:String = "price_type_activitypoints";
      
      public static const const_1338:String = "price_type_credits_and_activitypoints";
       
      
      private var var_788:String;
      
      private var var_1217:String;
      
      private var var_1340:int;
      
      private var var_1839:String;
      
      private var var_1216:int;
      
      private var var_1215:int;
      
      private var var_1840:int;
      
      private var var_251:ICatalogPage;
      
      private var var_651:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_1913:int = 0;
      
      private var var_2496:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1340 = param1;
         this.var_1839 = param2;
         this.var_1216 = param3;
         this.var_1215 = param4;
         this.var_1840 = param5;
         this.var_251 = param8;
         this.var_1913 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_1913;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_251;
      }
      
      public function get offerId() : int
      {
         return this.var_1340;
      }
      
      public function get localizationId() : String
      {
         return this.var_1839;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1216;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1215;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1840;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_651;
      }
      
      public function get pricingModel() : String
      {
         return this.var_788;
      }
      
      public function get priceType() : String
      {
         return this.var_1217;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2496;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2496 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1340 = 0;
         this.var_1839 = "";
         this.var_1216 = 0;
         this.var_1215 = 0;
         this.var_1840 = 0;
         this.var_251 = null;
         if(this.var_651 != null)
         {
            this.var_651.dispose();
            this.var_651 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_788)
         {
            case const_421:
               this.var_651 = new SingleProductContainer(this,param1);
               break;
            case const_433:
               this.var_651 = new MultiProductContainer(this,param1);
               break;
            case const_636:
               this.var_651 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_788);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_788 = const_421;
            }
            else
            {
               this.var_788 = const_433;
            }
         }
         else if(param1.length > 1)
         {
            this.var_788 = const_636;
         }
         else
         {
            this.var_788 = const_2012;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1216 > 0 && this.var_1215 > 0)
         {
            this.var_1217 = const_1338;
         }
         else if(this.var_1216 > 0)
         {
            this.var_1217 = const_831;
         }
         else if(this.var_1215 > 0)
         {
            this.var_1217 = const_1280;
         }
         else
         {
            this.var_1217 = const_1793;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_251.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_651.products)
         {
            _loc4_ = this.var_251.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
