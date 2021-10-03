package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.notifications.AchievementLevelUpData;
   import com.sulake.habbo.communication.messages.outgoing.tracking.EventLogMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.users.GetAchievementShareIdComposer;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   
   public class AchievementLevelUp implements IDisposable
   {
      
      private static const const_1075:int = 2000;
      
      private static const const_1527:int = 500;
      
      private static const const_1531:int = 500;
      
      private static const const_2077:int = 300;
      
      private static const const_1528:int = 1400;
      
      private static const const_1530:Number = 1;
      
      private static const const_1529:int = 3;
      
      private static const const_1077:int = 0;
      
      private static const const_1076:int = 1;
      
      private static const const_694:int = 2;
      
      private static const const_1074:int = 3;
       
      
      private var _window:IFrameWindow;
      
      private var var_49:HabboQuestEngine;
      
      private var var_69:AchievementLevelUpData;
      
      private var var_806:Array;
      
      private var var_808:int;
      
      private var var_1895:int = 0;
      
      private var var_1896:int;
      
      private var var_553:int;
      
      private var var_1524:int;
      
      private var var_1525:int = 3;
      
      private var var_807:BitmapData;
      
      private var var_2583:Point;
      
      private var var_552:Array;
      
      private var var_1894:ColorMatrixFilter;
      
      private var var_723:Animation;
      
      public function AchievementLevelUp(param1:HabboQuestEngine)
      {
         this.var_806 = new Array();
         this.var_552 = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0];
         this.var_1894 = new ColorMatrixFilter(this.var_552);
         super();
         this.var_49 = param1;
      }
      
      public function dispose() : void
      {
         this.var_49 = null;
         this.var_806 = null;
         this.var_69 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_723)
         {
            this.var_723.dispose();
            this.var_723 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._window == null;
      }
      
      public function onLevelUp(param1:AchievementLevelUpData) : void
      {
         this.var_806.push(param1);
         this.var_49.sessionDataManager.getBadgeImage(param1.badgeCode);
         this.var_49.sessionDataManager.getBadgeImage(this.var_49.localization.getPreviousLevelBadgeId(param1.badgeCode));
         if(this._window == null || !this._window.visible)
         {
            this.var_808 = const_1075;
         }
         this.prepare();
      }
      
      private function close() : void
      {
         if(this._window)
         {
            this._window.visible = false;
            if(this.var_806.length > 0)
            {
               this.var_808 = const_1527;
            }
         }
      }
      
      private function prepare() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IFrameWindow(this.var_49.getXmlWindow("AchievementLevelUp"));
         this._window.findChildByTag("close").procedure = this.onCloseLink;
         this._window.findChildByName("ok_button").procedure = this.onOkButton;
         this._window.findChildByName("share_button").procedure = this.onShareButton;
         new PendingImage(this.var_49,this._window.findChildByName("reward_icon"),"ach_receive_star");
         this._window.findChildByName("achievements_link_region").procedure = this.onAchievementsLink;
         this._window.findChildByName("close_link_region").procedure = this.onCloseLink;
         this.var_723 = this.var_49.getTwinkleAnimation(this._window);
         this._window.visible = false;
      }
      
      private function show() : void
      {
         this.prepare();
         this.registerParameter("achievements.levelup.title","category",this.var_49.getAchievementCategoryName(this.var_69.category));
         this.registerParameter("achievements.levelup.reward","amount","" + this.var_69.levelRewardPoints);
         this.registerParameter("achievements.levelup.reward","currency_name",this.var_49.getActivityPointName(this.var_69.levelRewardPointType));
         this.registerParameter("achievements.levelup.score","amount","" + this.var_69.points);
         this.registerParameter("achievements.levelup.sharedesc","amount","" + this.var_69.bonusPoints);
         this._window.findChildByName("achievement_name_txt").caption = "\'" + this.var_49.localization.getBadgeName(this.var_69.badgeCode) + "\'";
         var _loc1_:Boolean = this.isFacebookPostingEnabled();
         this._window.findChildByName("achievements_link_region").visible = !_loc1_;
         this._window.findChildByName("close_link_region").visible = _loc1_;
         this._window.findChildByName("ok_button").visible = !_loc1_;
         this._window.findChildByName("share_button").visible = _loc1_;
         this._window.findChildByName("facebook_info_txt").visible = _loc1_;
         this.doFacebookLogging();
         if(this.var_69.level > 1)
         {
            this.setFadeStatus(const_1076);
         }
         else
         {
            this.setFadeStatus(const_694,const_1528);
         }
         this.var_723.restart();
      }
      
      private function setFadeStatus(param1:int, param2:int = 300) : void
      {
         this.var_807 = null;
         this.var_1895 = param1;
         this.var_553 = param2;
         this.var_1896 = param2;
         this.var_1524 = const_1531;
      }
      
      private function isFacebookPostingEnabled() : Boolean
      {
         return this.var_69.bonusPoints > 0 && this.isPostingEnabled() && this.var_49.configuration.keyExists("facebook.user");
      }
      
      private function isPostingEnabled() : Boolean
      {
         return this.var_49.configuration.getKey("achievement.post.enabled","1") != "0";
      }
      
      private function doFacebookLogging() : void
      {
         var _loc1_:Boolean = this.var_49.configuration.keyExists("facebook.user");
         var _loc2_:String = this.var_69.badgeCode;
         if(this.var_69.bonusPoints <= 0 || !this.isPostingEnabled())
         {
            this.var_49.send(new EventLogMessageComposer("Achievements",_loc2_,"client.show.no_post"));
         }
         else if(_loc1_)
         {
            this.var_49.send(new EventLogMessageComposer("Achievements",_loc2_,"client.show.post"));
         }
         else
         {
            this.var_49.send(new EventLogMessageComposer("Achievements",_loc2_,"client.show.no_fb"));
         }
      }
      
      private function onOkButton(param1:WindowEvent, param2:IWindow = null) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.close();
         }
      }
      
      private function onCloseLink(param1:WindowEvent, param2:IWindow = null) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.close();
         }
      }
      
      private function onAchievementsLink(param1:WindowEvent, param2:IWindow = null) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_49.achievementController.show();
            this.close();
         }
      }
      
      private function onShareButton(param1:WindowEvent, param2:IWindow = null) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_49.send(new GetAchievementShareIdComposer(this.var_69.achievementID));
            this.var_49.send(new EventLogMessageComposer("Achievements",this.var_69.badgeCode,"client.start_post"));
         }
      }
      
      public function update(param1:uint) : void
      {
         if(this.var_808 > 0)
         {
            this.checkDialogOpen(param1);
            return;
         }
         if(this.var_723 != null)
         {
            this.var_723.update(param1);
         }
         if(this._window == null || this.var_1895 == const_1077)
         {
            return;
         }
         switch(this.var_1895)
         {
            case const_1076:
               this.var_1524 -= param1;
               this.animateBadgeImage(true);
               if(this.var_1524 < 0)
               {
                  this.setFadeStatus(const_1074);
               }
               break;
            case const_1074:
               this.var_553 -= param1;
               this.animateBadgeImage(true);
               if(this.var_553 < 0)
               {
                  this.setFadeStatus(const_694);
               }
               break;
            case const_694:
               this.var_553 -= param1;
               this.animateBadgeImage(false);
               if(this.var_553 < 0)
               {
                  this.setFadeStatus(const_1077);
               }
         }
      }
      
      private function checkDialogOpen(param1:uint) : void
      {
         this.var_808 -= param1;
         if(this.var_808 > 0)
         {
            return;
         }
         if(this.var_806.length < 1)
         {
            return;
         }
         var _loc2_:AchievementLevelUpData = this.var_806.pop();
         if(this.var_49.sessionDataManager.getBadgeImageWithInfo(_loc2_.badgeCode).placeHolder || this.var_49.sessionDataManager.getBadgeImageWithInfo(this.var_49.localization.getPreviousLevelBadgeId(_loc2_.badgeCode)).placeHolder)
         {
            if(this.var_1525 > 0)
            {
               this.var_806.push(_loc2_);
               this.var_808 = const_1075;
               --this.var_1525;
               return;
            }
            this.var_1525 = const_1529;
         }
         this.var_69 = _loc2_;
         this.show();
         this._window.center();
         this._window.visible = true;
         this._window.activate();
      }
      
      public function requestFacebookPostDialog(param1:String, param2:String) : void
      {
         if(this._window == null || this.var_69 == null || this.var_69.badgeCode != param1)
         {
            Logger.log("Invalid facebook post: " + param1 + ", " + (this.var_69 == null ? "current is null" : this.var_69.badgeCode));
            return;
         }
         var _loc3_:String = this.getFacebookText("notifications.text.achievement_facebook");
         var _loc4_:String = this.getFacebookText("notifications.text.achievement_facebook_title");
         HabboWebTools.facebookAchievementPost(this.var_69.badgeCode,_loc4_,_loc3_,param2);
         this.close();
      }
      
      private function getFacebookText(param1:String) : String
      {
         var _loc2_:String = this.var_49.sessionDataManager.userName;
         var _loc3_:String = this.var_49.sessionDataManager.realName;
         var _loc4_:String = this.var_49.localization.getAchievementNameForFacebook(this.var_69.badgeCode,_loc2_,_loc3_,this.var_69.level);
         var _loc5_:String = this.var_49.localization.getAchievementDescForFacebook(this.var_69.badgeCode,_loc2_,_loc3_,this.var_69.level);
         this.registerParameter(param1,"badge_name",this.var_49.localization.getBadgeName(this.var_69.badgeCode));
         this.registerParameter(param1,"badge_desc",this.var_49.localization.getBadgeDesc(this.var_69.badgeCode));
         this.registerParameter(param1,"badge_name_fb",_loc4_);
         this.registerParameter(param1,"badge_desc_fb",_loc5_);
         this.registerParameter(param1,"level",this.var_69.level.toString());
         this.registerParameter(param1,"name",_loc2_);
         this.registerParameter(param1,"realname",_loc3_);
         return this.var_49.localization.getKey(param1,param1);
      }
      
      private function registerParameter(param1:String, param2:String, param3:String) : void
      {
         this.var_49.localization.registerParameter(param1,param2,param3);
      }
      
      private function animateBadgeImage(param1:Boolean) : void
      {
         this.changeBadgeColorFilter(param1);
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this._window.findChildByName("achievement_pic_bitmap"));
         if(_loc2_.bitmap == null)
         {
            _loc2_.bitmap = new BitmapData(_loc2_.width,_loc2_.height,true,0);
         }
         if(this.var_807 == null)
         {
            this.var_807 = !!param1 ? this.var_49.sessionDataManager.getBadgeImage(this.var_49.localization.getPreviousLevelBadgeId(this.var_69.badgeCode)) : this.var_49.sessionDataManager.getBadgeImage(this.var_69.badgeCode);
            this.var_2583 = new Point((_loc2_.width - this.var_807.width) / 2,(_loc2_.height - this.var_807.height) / 2);
         }
         _loc2_.bitmap.fillRect(_loc2_.bitmap.rect,0);
         _loc2_.bitmap.applyFilter(this.var_807,this.var_807.rect,this.var_2583,this.var_1894);
         _loc2_.invalidate(_loc2_.rectangle);
      }
      
      private function changeBadgeColorFilter(param1:Boolean) : void
      {
         var _loc2_:int = Math.max(0,!param1 ? Number(this.var_553) : Number(this.var_1896 - this.var_553));
         var _loc3_:Number = _loc2_ / this.var_1896 * const_1530;
         this.var_552[3] = _loc3_;
         this.var_552[8] = _loc3_;
         this.var_552[13] = _loc3_;
         this.var_552[0] = 1 - _loc3_;
         this.var_552[6] = 1 - _loc3_;
         this.var_552[12] = 1 - _loc3_;
         this.var_1894.matrix = this.var_552;
      }
   }
}
