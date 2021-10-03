package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2214:int = 0;
      
      public static const const_1725:int = 1;
      
      public static const const_1785:int = 2;
      
      public static const const_2308:int = 3;
      
      public static const const_2179:int = 4;
      
      public static const const_2306:int = 5;
      
      public static const const_1944:int = 10;
      
      public static const const_2321:int = 11;
      
      public static const const_2267:int = 12;
      
      public static const const_2324:int = 13;
      
      public static const const_2293:int = 16;
      
      public static const const_2317:int = 17;
      
      public static const const_2269:int = 18;
      
      public static const const_2217:int = 19;
      
      public static const const_2258:int = 20;
      
      public static const const_2300:int = 22;
      
      public static const const_2184:int = 23;
      
      public static const const_2198:int = 24;
      
      public static const const_2153:int = 25;
      
      public static const const_2154:int = 26;
      
      public static const const_2143:int = 27;
      
      public static const const_2148:int = 28;
      
      public static const const_2115:int = 29;
      
      public static const const_2244:int = 100;
      
      public static const const_2116:int = 101;
      
      public static const const_2260:int = 102;
      
      public static const const_2322:int = 103;
      
      public static const const_2190:int = 104;
      
      public static const const_2195:int = 105;
      
      public static const const_2296:int = 106;
      
      public static const const_2311:int = 107;
      
      public static const const_2135:int = 108;
      
      public static const const_2133:int = 109;
      
      public static const const_2112:int = 110;
      
      public static const const_2120:int = 111;
      
      public static const const_2141:int = 112;
      
      public static const const_2204:int = 113;
      
      public static const const_2301:int = 114;
      
      public static const const_2181:int = 115;
      
      public static const const_2224:int = 116;
      
      public static const const_2283:int = 117;
      
      public static const const_2212:int = 118;
      
      public static const const_2109:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1725:
            case const_1944:
               return "banned";
            case const_1785:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
