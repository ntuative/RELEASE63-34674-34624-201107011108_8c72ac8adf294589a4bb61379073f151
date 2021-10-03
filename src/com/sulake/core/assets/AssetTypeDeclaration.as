package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2483:String;
      
      private var var_2482:Class;
      
      private var var_2481:Class;
      
      private var var_1831:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2483 = param1;
         this.var_2482 = param2;
         this.var_2481 = param3;
         if(rest == null)
         {
            this.var_1831 = new Array();
         }
         else
         {
            this.var_1831 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2483;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2482;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2481;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1831;
      }
   }
}
