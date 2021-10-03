package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_2162:IID;
      
      private var var_1142:Boolean;
      
      private var var_1383:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_2162 = param1;
         this.var_1383 = new Array();
         this.var_1142 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_2162;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1142;
      }
      
      public function get receivers() : Array
      {
         return this.var_1383;
      }
      
      public function dispose() : void
      {
         if(!this.var_1142)
         {
            this.var_1142 = true;
            this.var_2162 = null;
            while(this.var_1383.length > 0)
            {
               this.var_1383.pop();
            }
            this.var_1383 = null;
         }
      }
   }
}
