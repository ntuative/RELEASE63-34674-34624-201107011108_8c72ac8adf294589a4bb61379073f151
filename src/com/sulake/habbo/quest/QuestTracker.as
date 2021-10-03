package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.communication.messages.outgoing.quest.StartCampaignMessageComposer;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class QuestTracker implements IDisposable
   {
      
      private static const const_319:int = 0;
      
      private static const const_723:int = 1;
      
      private static const const_724:int = 2;
      
      private static const const_1149:int = 3;
      
      private static const const_1143:int = 4;
      
      private static const const_1141:int = 5;
      
      private static const const_1147:int = 6;
      
      private static const const_1142:Array = [-2,-3,-2,0,2,3,2,0,2,1,0,1];
      
      private static const const_1146:Array = [1,1,2,2,3,3,4,4,5,5,6,6,4];
      
      private static const const_1148:int = 6;
      
      private static const const_1697:int = 4;
      
      private static const const_725:int = 2;
      
      private static const const_1144:int = 200;
      
      private static const const_320:Array = ["a","b","c","d"];
      
      private static const const_1145:int = 10000;
      
      private static const const_1700:int = 0;
      
      private static const const_722:int = -1;
      
      private static const const_1701:Point = new Point(10,87);
      
      private static const const_1703:int = 162;
      
      private static const const_1698:Number = 0.01;
      
      private static const const_1704:Number = 100;
      
      private static const const_1699:int = 1000;
      
      private static const const_697:String = "quest_tracker";
      
      private static const const_1702:int = 10;
       
      
      private var var_49:HabboQuestEngine;
      
      private var var_234:QuestMessageData;
      
      private var _window:IWindowContainer;
      
      private var var_594:Timer;
      
      private var var_915:ProgressBar;
      
      private var var_266:int = 0;
      
      private var var_1117:int = 0;
      
      private var var_1676:int = 0;
      
      private var var_1392:int = -1;
      
      private var var_914:int = -1;
      
      private var var_1118:int = -1;
      
      private var var_1393:int;
      
      private var var_1677:int;
      
      private var var_2997:Boolean;
      
      public function QuestTracker(param1:HabboQuestEngine)
      {
         super();
         this.var_49 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_49)
         {
            this.var_49.toolbar.extensionView.detachExtension(const_697);
         }
         this.var_49 = null;
         this.var_234 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_594)
         {
            this.var_594.stop();
            this.var_594 = null;
         }
         if(this.var_915)
         {
            this.var_915.dispose();
            this.var_915 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_49 == null;
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         if(this._window)
         {
            this.method_11();
            this.var_234 = param1;
            this.var_1117 = 0;
            this.refreshTrackerDetails();
            this.var_1392 = 0;
            this.var_266 = const_1149;
         }
      }
      
      public function onQuestCancelled() : void
      {
         this.var_234 = null;
         if(this._window)
         {
            this.method_11();
            this.var_915.refresh(0,100,-1);
            this.var_266 = const_724;
         }
      }
      
      public function onRoomEnter() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Boolean = Boolean(parseInt(this.var_49.configuration.getKey("new.identity","0")));
         var _loc2_:String = this.getDefaultCampaign();
         if(this.var_594 == null && _loc1_ && _loc2_ != "")
         {
            _loc3_ = int(this.var_49.configuration.getKey("questing.startQuestDelayInSeconds","30"));
            this.var_594 = new Timer(_loc3_ * 1000,1);
            this.var_594.addEventListener(TimerEvent.TIMER,this.onStartQuestTimer);
            this.var_594.start();
            Logger.log("Initialized start quest timer with period: " + _loc3_);
         }
      }
      
      public function onRoomExit() : void
      {
         if(this._window != null && this._window.visible)
         {
            this._window.findChildByName("more_info_txt").visible = false;
            this._window.findChildByName("more_info_region").visible = false;
         }
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         var _loc2_:Boolean = this._window && this._window.visible;
         if(param1.waitPeriodSeconds > 0)
         {
            if(_loc2_)
            {
               this.setWindowVisible(false);
            }
            return;
         }
         this.var_234 = param1;
         this.prepareTrackerWindow();
         this.refreshTrackerDetails();
         this.refreshPromptFrames();
         this.setWindowVisible(true);
         this.hideSuccessFrames();
         if(_loc2_)
         {
            if(this.var_266 == const_724)
            {
               this.var_266 = const_723;
            }
            this.setupPrompt(this.var_914,const_1697,false);
         }
         else
         {
            this._window.x = this.getOutScreenLocationX();
            this.var_266 = const_723;
            this.setupPrompt(const_1700,const_725,false);
         }
      }
      
      private function refreshPromptFrames() : void
      {
         if(!this.var_49.isQuestWithPrompts(this.var_234))
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < const_320.length)
         {
            this.var_49.setupPromptFrameImage(this._window,this.var_234,const_320[_loc1_]);
            _loc1_++;
         }
      }
      
      private function prepareTrackerWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this.var_49.getXmlWindow("QuestTracker"));
         this._window.findChildByName("more_info_region").procedure = this.onMoreInfo;
         new PendingImage(this.var_49,this._window.findChildByName("quest_tracker_bg"),"quest_tracker_with_bar");
         var _loc1_:int = 1;
         while(_loc1_ <= const_1148)
         {
            new PendingImage(this.var_49,this.getSuccessFrame(_loc1_),"checkanim" + _loc1_);
            _loc1_++;
         }
         this.hideSuccessFrames();
         this.var_915 = new ProgressBar(this.var_49,IWindowContainer(this._window.findChildByName("content_cont")),const_1703,"quests.tracker.progress",false,const_1701);
      }
      
      private function hideSuccessFrames() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= const_1148)
         {
            this.getSuccessFrame(_loc1_).visible = false;
            _loc1_++;
         }
      }
      
      private function hidePromptFrames() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < const_320.length)
         {
            this.getPromptFrame(const_320[_loc1_]).visible = false;
            _loc1_++;
         }
      }
      
      private function getSuccessFrame(param1:int) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("success_pic_" + param1));
      }
      
      private function getPromptFrame(param1:String) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("prompt_pic_" + param1));
      }
      
      private function refreshTrackerDetails() : void
      {
         this.var_49.localization.registerParameter("quests.tracker.caption","quest_name",this.var_49.getQuestName(this.var_234));
         this._window.findChildByName("desc_txt").caption = this.var_49.getQuestDesc(this.var_234);
         this._window.findChildByName("more_info_txt").visible = this.var_49.currentlyInRoom;
         this._window.findChildByName("more_info_region").visible = this.var_49.currentlyInRoom;
         var _loc1_:int = Math.round(100 * this.var_234.completedSteps / this.var_234.totalSteps);
         this.var_915.refresh(_loc1_,100,this.var_234.id);
         this.var_49.setupQuestImage(this._window,this.var_234);
      }
      
      private function onMoreInfo(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_49.questController.questDetails.showDetails(this.var_234);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._window == null)
         {
            return;
         }
         this.var_915.updateView();
         switch(this.var_266)
         {
            case const_723:
               _loc2_ = this.getDefaultLocationX();
               _loc3_ = this._window.x - _loc2_;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(_loc3_ * param1 * const_1698));
                  this._window.x -= _loc4_;
               }
               else
               {
                  this.var_266 = const_319;
                  this._window.x = _loc2_;
               }
               break;
            case const_724:
               _loc2_ = this.getOutScreenLocationX();
               _loc3_ = this._window.width - this._window.x;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(param1 * const_1704 / _loc3_));
                  this._window.x += _loc4_;
               }
               else
               {
                  this.var_266 = const_319;
                  this._window.x = _loc2_;
                  this.setWindowVisible(false);
               }
               break;
            case const_1149:
               this.hideSuccessFrames();
               this.getSuccessFrame(const_1146[this.var_1392]).visible = true;
               ++this.var_1392;
               if(this.var_1392 >= const_1146.length)
               {
                  this.var_266 = const_1141;
                  this.var_1676 = const_1699;
               }
               break;
            case const_1147:
               this.setQuestImageVisible(false);
               this.hidePromptFrames();
               this.var_1393 -= param1;
               this.getPromptFrame(const_320[this.var_1118]).visible = true;
               if(this.var_1393 < 0)
               {
                  this.var_1393 = const_1144;
                  ++this.var_1118;
                  if(this.var_1118 >= const_320.length)
                  {
                     this.var_1118 = 0;
                     --this.var_1677;
                     if(this.var_1677 < 1)
                     {
                        this.setupPrompt(const_1145,const_725,true);
                        this.var_266 = const_319;
                     }
                  }
               }
               break;
            case const_1143:
               if(this.var_1117 >= -1)
               {
                  this._window.x = this.getDefaultLocationX();
                  this.var_266 = const_319;
                  this.setupPrompt(const_1145,const_725,false);
               }
               else
               {
                  this._window.x = this.getDefaultLocationX() + const_1142[this.var_1117];
                  ++this.var_1117;
               }
               break;
            case const_1141:
               this.var_1676 -= param1;
               if(this.var_1676 < 0)
               {
                  this.var_266 = const_319;
                  this.setWindowVisible(false);
               }
               break;
            case const_319:
               if(this.var_914 != const_722)
               {
                  this.var_914 -= param1;
                  if(this.var_914 < 0)
                  {
                     this.var_914 = const_722;
                     if(this.var_234 != null && this.var_49.isQuestWithPrompts(this.var_234))
                     {
                        if(this.var_2997)
                        {
                           this.startNudge();
                        }
                        else
                        {
                           this.var_266 = const_1147;
                           this.var_1118 = 0;
                           this.var_1393 = const_1144;
                        }
                     }
                  }
               }
         }
      }
      
      private function getDefaultLocationX() : int
      {
         return 0;
      }
      
      private function getOutScreenLocationX() : int
      {
         return this._window.width + const_1702;
      }
      
      public function isVisible() : Boolean
      {
         return this._window && this._window.visible;
      }
      
      private function onStartQuestTimer(param1:TimerEvent) : void
      {
         if(this.hasBlockingWindow())
         {
            Logger.log("Quest start blocked. Waiting some more");
            this.var_594.reset();
            this.var_594.start();
         }
         else
         {
            this.var_49.questController.questDetails.openForNextQuest = this.var_49.configuration.getKey("questing.showDetailsForNextQuest") == "true";
            this.var_49.send(new StartCampaignMessageComposer(this.getDefaultCampaign(),this.var_49.configuration.getBoolean("questing.useWing",false)));
         }
      }
      
      private function getDefaultCampaign() : String
      {
         var _loc1_:String = this.var_49.configuration.getKey("questing.defaultCampaign");
         return _loc1_ == null ? "" : _loc1_;
      }
      
      private function hasBlockingWindow() : Boolean
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ <= 2)
         {
            _loc2_ = this.var_49.windowManager.getDesktop(_loc1_);
            if(_loc2_ != null && this.hasBlockingWindowInLayer(_loc2_))
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      private function hasBlockingWindowInLayer(param1:IWindowContainer) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         while(_loc2_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc3_ != null && _loc3_.visible)
            {
               if(_loc3_ as IFrameWindow != null)
               {
                  if(_loc3_.name != "mod_start_panel")
                  {
                     return true;
                  }
               }
               else if(_loc3_.name == "welcome_screen")
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      private function setQuestImageVisible(param1:Boolean) : void
      {
         this._window.findChildByName("quest_pic_bitmap").visible = param1;
      }
      
      private function method_11() : void
      {
         this.setupPrompt(const_722,0,false);
      }
      
      private function setupPrompt(param1:int, param2:int, param3:Boolean) : void
      {
         this.setQuestImageVisible(true);
         this.hidePromptFrames();
         this.var_914 = param1;
         this.var_1677 = param2;
         this.var_2997 = param3;
      }
      
      private function startNudge() : void
      {
         this.var_1117 = 0;
         this.var_266 = const_1143;
      }
      
      private function setWindowVisible(param1:Boolean) : void
      {
         this._window.visible = param1;
         if(!param1)
         {
            this.var_49.toolbar.extensionView.detachExtension(const_697);
         }
         else
         {
            this.var_49.toolbar.extensionView.attachExtension(const_697,this._window);
         }
      }
   }
}
