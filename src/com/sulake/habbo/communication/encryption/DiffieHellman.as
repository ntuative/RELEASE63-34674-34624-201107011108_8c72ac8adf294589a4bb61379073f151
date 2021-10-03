package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1024:BigInteger;
      
      private var var_2744:BigInteger;
      
      private var var_2131:BigInteger;
      
      private var var_2914:BigInteger;
      
      private var var_1653:BigInteger;
      
      private var var_2130:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1653 = param1;
         this.var_2130 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1653.toString() + ",generator: " + this.var_2130.toString() + ",secret: " + param1);
         this.var_1024 = new BigInteger();
         this.var_1024.fromRadix(param1,param2);
         this.var_2744 = this.var_2130.modPow(this.var_1024,this.var_1653);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2131 = new BigInteger();
         this.var_2131.fromRadix(param1,param2);
         this.var_2914 = this.var_2131.modPow(this.var_1024,this.var_1653);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2744.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2914.toRadix(param1);
      }
   }
}
