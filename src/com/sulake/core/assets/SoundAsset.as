package com.sulake.core.assets
{
   import flash.media.Sound;
   import flash.utils.ByteArray;
   
   public class SoundAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_207:Sound = null;
      
      private var var_1794:AssetTypeDeclaration;
      
      private var var_1148:String;
      
      public function SoundAsset(param1:AssetTypeDeclaration, param2:String = null)
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
         if(param1 is Sound)
         {
            if(this.var_207)
            {
               this.var_207.close();
            }
            this.var_207 = param1 as Sound;
            return;
         }
         if(param1 is ByteArray)
         {
         }
         if(param1 is Class)
         {
            if(this.var_207)
            {
               this.var_207.close();
            }
            this.var_207 = new param1() as Sound;
            return;
         }
         if(param1 is SoundAsset)
         {
            if(this.var_207)
            {
               this.var_207.close();
            }
            this.var_207 = SoundAsset(param1).var_207;
            return;
         }
      }
      
      public function method_2(param1:IAsset) : void
      {
         if(param1 is SoundAsset)
         {
            this.var_207 = SoundAsset(param1).var_207;
         }
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
