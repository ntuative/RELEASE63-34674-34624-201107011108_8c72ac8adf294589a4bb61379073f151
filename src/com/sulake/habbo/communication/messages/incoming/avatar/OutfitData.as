package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1811:int;
      
      private var var_2417:String;
      
      private var var_970:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1811 = param1.readInteger();
         this.var_2417 = param1.readString();
         this.var_970 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1811;
      }
      
      public function get figureString() : String
      {
         return this.var_2417;
      }
      
      public function get gender() : String
      {
         return this.var_970;
      }
   }
}
