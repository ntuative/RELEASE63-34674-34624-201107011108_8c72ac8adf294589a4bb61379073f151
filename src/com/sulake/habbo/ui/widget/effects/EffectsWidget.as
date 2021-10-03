package com.sulake.habbo.ui.widget.effects
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IScrollableListWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.enum.CatalogPageName;
   import com.sulake.habbo.ui.IRoomWidgetHandler;
   import com.sulake.habbo.ui.handler.EffectsWidgetHandler;
   import com.sulake.habbo.ui.widget.RoomWidgetBase;
   import com.sulake.habbo.ui.widget.memenu.IWidgetAvatarEffect;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.geom.Rectangle;
   
   public class EffectsWidget extends RoomWidgetBase
   {
      
      private static const const_1516:int = 320;
      
      private static const const_1515:int = 48;
      
      private static const const_1517:int = 2;
       
      
      private var _view:IWindowContainer;
      
      private var var_67:IScrollableListWindow;
      
      private var var_386:Map;
      
      public function EffectsWidget(param1:IRoomWidgetHandler, param2:IHabboWindowManager, param3:IAssetLibrary)
      {
         super(param1,param2,param3);
         this.handler.widget = this;
         this.var_386 = new Map();
      }
      
      public function get handler() : EffectsWidgetHandler
      {
         return var_938 as EffectsWidgetHandler;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(disposed)
         {
            return;
         }
         if(this.var_386)
         {
            for each(_loc1_ in this.var_386)
            {
               _loc1_.dispose();
            }
            this.var_386.dispose();
            this.var_386 = null;
         }
         this.var_67 = null;
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
         }
         super.dispose();
      }
      
      public function open() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!this._view)
         {
            _loc1_ = assets.getAssetByName("effects_widget") as XmlAsset;
            this._view = windowManager.buildFromXML(_loc1_.content as XML) as IWindowContainer;
            _loc2_ = this.handler.container.toolbar.getRect();
            this._view.x = _loc2_.right + const_1517;
            this._view.y = _loc2_.bottom - this._view.height;
            this.var_67 = this._view.findChildByName("list") as IScrollableListWindow;
            _loc3_ = this._view.findChildByName("close");
            _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClose);
            _loc3_ = this._view.findChildByName("get_more");
            _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onGetMore);
         }
         this.update();
         this._view.visible = true;
      }
      
      public function update() : void
      {
         var _loc1_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc2_:Array = this.handler.container.inventory.getAvatarEffects();
         for each(_loc3_ in _loc2_)
         {
            _loc1_ = this.var_386.getValue(_loc3_.type) as EffectView;
            if(_loc1_)
            {
               _loc1_.update();
            }
            else
            {
               _loc1_ = new EffectView(this,_loc3_);
               this.var_386.add(_loc3_.type,_loc1_);
               this.var_67.addListItem(_loc1_.window);
            }
         }
         _loc4_ = this.var_386.length - 1;
         while(_loc4_ >= 0)
         {
            _loc1_ = this.var_386.getWithIndex(_loc4_);
            if(_loc2_.indexOf(_loc1_.effect) == -1)
            {
               this.var_67.removeListItem(_loc1_.window);
               this.var_386.remove(this.var_386.getKey(_loc4_));
               _loc1_.dispose();
            }
            _loc4_--;
         }
         var _loc5_:int = this.var_67.scrollableRegion.height;
         this.var_67.height = Math.max(Math.min(_loc5_,const_1516),const_1515);
         this._view.findChildByName("no_effects").visible = _loc2_.length == 0;
      }
      
      public function selectEffect(param1:int, param2:Boolean) : void
      {
         if(param2)
         {
            this.handler.container.inventory.setEffectDeselected(param1);
         }
         else
         {
            this.handler.container.inventory.setEffectSelected(param1);
         }
      }
      
      private function onClose(param1:WindowMouseEvent) : void
      {
         this._view.visible = false;
      }
      
      private function onGetMore(param1:WindowMouseEvent) : void
      {
         this.handler.container.catalog.openCatalogPage(CatalogPageName.const_1274,true);
      }
   }
}