package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1498:IID;
      
      private var var_1841:String;
      
      private var var_119:IUnknown;
      
      private var var_789:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1498 = param1;
         this.var_1841 = getQualifiedClassName(this.var_1498);
         this.var_119 = param2;
         this.var_789 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1498;
      }
      
      public function get iis() : String
      {
         return this.var_1841;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_119;
      }
      
      public function get references() : uint
      {
         return this.var_789;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_119 == null;
      }
      
      public function dispose() : void
      {
         this.var_1498 = null;
         this.var_1841 = null;
         this.var_119 = null;
         this.var_789 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_789;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_789) : uint(0);
      }
   }
}
