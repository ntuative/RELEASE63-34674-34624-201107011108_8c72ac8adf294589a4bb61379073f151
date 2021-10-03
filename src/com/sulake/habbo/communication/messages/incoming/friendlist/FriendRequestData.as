package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1318:int;
      
      private var var_2444:String;
      
      private var var_2445:int;
      
      private var var_2417:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1318 = param1.readInteger();
         this.var_2444 = param1.readString();
         this.var_2417 = param1.readString();
         this.var_2445 = this.var_1318;
      }
      
      public function get requestId() : int
      {
         return this.var_1318;
      }
      
      public function get requesterName() : String
      {
         return this.var_2444;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2445;
      }
      
      public function get figureString() : String
      {
         return this.var_2417;
      }
   }
}
