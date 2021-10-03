package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1731:int;
      
      private var var_2274:String;
      
      private var var_338:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1731 = param1.readInteger();
         this.var_2274 = param1.readString();
         this.var_338 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1731;
      }
      
      public function get nodeName() : String
      {
         return this.var_2274;
      }
      
      public function get visible() : Boolean
      {
         return this.var_338;
      }
   }
}
