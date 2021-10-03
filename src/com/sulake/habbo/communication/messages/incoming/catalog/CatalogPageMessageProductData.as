package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_64:String = "i";
      
      public static const const_79:String = "s";
      
      public static const const_181:String = "e";
       
      
      private var var_1596:String;
      
      private var var_2981:int;
      
      private var var_1060:String;
      
      private var var_1597:int;
      
      private var var_2021:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1596 = param1.readString();
         this.var_2981 = param1.readInteger();
         this.var_1060 = param1.readString();
         this.var_1597 = param1.readInteger();
         this.var_2021 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1596;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2981;
      }
      
      public function get extraParam() : String
      {
         return this.var_1060;
      }
      
      public function get productCount() : int
      {
         return this.var_1597;
      }
      
      public function get expiration() : int
      {
         return this.var_2021;
      }
   }
}
