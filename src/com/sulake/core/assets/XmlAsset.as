package com.sulake.core.assets
{
   import flash.utils.ByteArray;
   
   public class XmlAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_207:XML;
      
      private var var_1794:AssetTypeDeclaration;
      
      private var var_1148:String;
      
      public function XmlAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_1794 = param1;
         this.var_1148 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1148;
      }
      
      public function get content() : Object
      {
         return this.var_207 as Object;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_1794;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_207 = null;
            this.var_1794 = null;
            this.var_1148 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         var _loc2_:* = null;
         if(param1 is Class)
         {
            _loc2_ = new param1() as ByteArray;
            this.var_207 = new XML(_loc2_.readUTFBytes(_loc2_.length));
            return;
         }
         if(param1 is ByteArray)
         {
            _loc2_ = param1 as ByteArray;
            this.var_207 = new XML(_loc2_.readUTFBytes(_loc2_.length));
            return;
         }
         if(param1 is String)
         {
            this.var_207 = new XML(param1 as String);
            return;
         }
         if(param1 is XML)
         {
            this.var_207 = param1 as XML;
            return;
         }
         if(param1 is XmlAsset)
         {
            this.var_207 = XmlAsset(param1).var_207;
            return;
         }
      }
      
      public function method_2(param1:IAsset) : void
      {
         if(param1 is XmlAsset)
         {
            this.var_207 = XmlAsset(param1).var_207;
            return;
         }
         throw Error("Provided asset is not of type XmlAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
