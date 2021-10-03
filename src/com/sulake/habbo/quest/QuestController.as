package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_49:HabboQuestEngine;
      
      private var var_554:QuestsList;
      
      private var var_455:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_388:QuestTracker;
      
      private var var_665:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_49 = param1;
         this.var_388 = new QuestTracker(this.var_49);
         this.var_554 = new QuestsList(this.var_49);
         this.var_455 = new QuestDetails(this.var_49);
         this._questCompleted = new QuestCompleted(this.var_49);
         this.var_665 = new NextQuestTimer(this.var_49);
      }
      
      public function onToolbarClick() : void
      {
         this.var_554.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_554.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_388.onQuest(param1);
         this.var_455.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_665.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_388.onQuestCompleted(param1);
         this.var_455.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_388.onQuestCancelled();
         this.var_455.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_665.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_388.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_554.onRoomExit();
         this.var_388.onRoomExit();
         this.var_455.onRoomExit();
         this.var_665.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_388.update(param1);
         this.var_665.update(param1);
         this.var_554.update(param1);
         this.var_455.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_49 = null;
         if(this.var_554)
         {
            this.var_554.dispose();
            this.var_554 = null;
         }
         if(this.var_388)
         {
            this.var_388.dispose();
            this.var_388 = null;
         }
         if(this.var_455)
         {
            this.var_455.dispose();
            this.var_455 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_665)
         {
            this.var_665.dispose();
            this.var_665 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_49 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_554;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_455;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_388;
      }
   }
}
