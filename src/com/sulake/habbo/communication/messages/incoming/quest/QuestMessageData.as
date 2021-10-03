package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_2149:String;
      
      private var var_2150:int;
      
      private var var_2151:int;
      
      private var var_1840:int;
      
      private var _id:int;
      
      private var var_2154:Boolean;
      
      private var _type:String;
      
      private var var_2936:String;
      
      private var var_2939:int;
      
      private var var_2153:String;
      
      private var var_2938:int;
      
      private var var_2937:int;
      
      private var var_1666:int;
      
      private var var_2152:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_2152 = new Date();
         super();
         this.var_2149 = param1.readString();
         this.var_2150 = param1.readInteger();
         this.var_2151 = param1.readInteger();
         this.var_1840 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2154 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2936 = param1.readString();
         this.var_2939 = param1.readInteger();
         this.var_2153 = param1.readString();
         this.var_2938 = param1.readInteger();
         this.var_2937 = param1.readInteger();
         this.var_1666 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_2149;
      }
      
      public function get localizationCode() : String
      {
         return this.var_2153;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2150;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2151;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1840;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_2154;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2936;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2939;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2938;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2937;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1666 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_2152.getTime();
         return int(Math.max(0,this.var_1666 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_2149;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_2153;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_2154 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_2150 >= this.var_2151;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_2152;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1666 = param1;
      }
   }
}
