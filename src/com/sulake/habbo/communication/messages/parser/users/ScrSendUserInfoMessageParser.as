package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2270:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1261:int = 3;
       
      
      private var var_1135:String;
      
      private var var_3011:int;
      
      private var var_3009:int;
      
      private var var_3013:int;
      
      private var var_3006:int;
      
      private var var_3012:Boolean;
      
      private var var_2364:Boolean;
      
      private var var_2578:int;
      
      private var var_2577:int;
      
      private var var_3010:Boolean;
      
      private var var_3008:int;
      
      private var var_3007:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1135 = param1.readString();
         this.var_3011 = param1.readInteger();
         this.var_3009 = param1.readInteger();
         this.var_3013 = param1.readInteger();
         this.var_3006 = param1.readInteger();
         this.var_3012 = param1.readBoolean();
         this.var_2364 = param1.readBoolean();
         this.var_2578 = param1.readInteger();
         this.var_2577 = param1.readInteger();
         this.var_3010 = param1.readBoolean();
         this.var_3008 = param1.readInteger();
         this.var_3007 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1135;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_3011;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_3009;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_3013;
      }
      
      public function get responseType() : int
      {
         return this.var_3006;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_3012;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2364;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2578;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2577;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_3010;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_3008;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_3007;
      }
   }
}
