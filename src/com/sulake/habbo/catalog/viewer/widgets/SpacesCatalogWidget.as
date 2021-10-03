package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.IProduct;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetUpdateRoomPreviewEvent;
   import flash.utils.Dictionary;
   
   public class SpacesCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
      
      private static const const_108:String = "floor";
      
      private static const const_238:String = "wallpaper";
      
      private static const TYPE_LANDSCAPE:String = "landscape";
       
      
      private var var_1281:Array;
      
      private var var_680:Array;
      
      private var var_473:int = 0;
      
      private var var_472:int = 0;
      
      private var var_1031:int = 0;
      
      private var _floorType:String = "default";
      
      private var var_1283:Array;
      
      private var var_830:Array;
      
      private var var_470:int = 0;
      
      private var var_469:int = 0;
      
      private var var_1030:int = 0;
      
      private var var_1559:String = "default";
      
      private var _landscapeOffers:Array;
      
      private var var_831:Array;
      
      private var var_468:int = 0;
      
      private var var_471:int = 0;
      
      private var var_1029:int = 0;
      
      private var var_1560:String = "1.1";
      
      private var var_1032:Dictionary;
      
      private var var_1284:Dictionary;
      
      private var var_1282:Dictionary;
      
      public function SpacesCatalogWidget(param1:IWindowContainer)
      {
         this.var_1281 = [];
         this.var_680 = [];
         this.var_1283 = [];
         this.var_830 = [];
         this._landscapeOffers = [];
         this.var_831 = [];
         super(param1);
      }
      
      override public function dispose() : void
      {
         this.var_1032 = null;
         this.var_1284 = null;
         this.var_1282 = null;
         this.var_1281 = null;
         this.var_680 = null;
         this.var_1283 = null;
         this.var_830 = null;
         this._landscapeOffers = null;
         this.var_831 = null;
         super.dispose();
      }
      
      override public function init() : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         if(!super.init())
         {
            return false;
         }
         if(window == null)
         {
            return false;
         }
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("configuration_catalog_spaces") as XmlAsset;
         if(_loc1_ == null)
         {
            return false;
         }
         var _loc2_:XML = _loc1_.content as XML;
         if(_loc2_ == null)
         {
            return false;
         }
         this.var_1032 = this.parseElements(_loc2_.floors.pattern);
         this.var_1284 = this.parseElements(_loc2_.walls.pattern);
         this.var_1282 = this.parseElements(_loc2_.landscapes.pattern);
         for each(_loc3_ in page.offers)
         {
            _loc5_ = _loc3_.productContainer.firstProduct;
            _loc6_ = _loc3_.localizationId;
            _loc7_ = _loc6_ != null ? _loc6_.split(" ") : null;
            if(_loc7_ == null || _loc7_.length != 2)
            {
               continue;
            }
            _loc8_ = _loc7_[1];
            _loc9_ = _loc5_.furnitureData.name;
            switch(_loc9_)
            {
               case "floor":
                  for(_loc10_ in this.var_1032)
                  {
                     _loc11_ = this.var_1032[_loc10_];
                     if(this.var_680.indexOf(_loc10_) == -1)
                     {
                        this.var_680.push(_loc10_);
                        this.var_1281.push(_loc3_);
                     }
                  }
                  break;
               case "wallpaper":
                  if(this.var_1284[_loc8_] != null)
                  {
                     this.var_830.push(_loc8_);
                     this.var_1283.push(_loc3_);
                  }
                  else
                  {
                     Logger.log("[SpacesCatalogWidget] Could not find wallpaper pattern configuration! " + [_loc6_,_loc9_]);
                  }
                  break;
               case "landscape":
                  if(this.var_1282[_loc8_] != null)
                  {
                     this.var_831.push(_loc8_);
                     this._landscapeOffers.push(_loc3_);
                  }
                  else
                  {
                     Logger.log("[SpacesCatalogWidget] Could not find landscape pattern configuration! " + [_loc6_,_loc9_]);
                  }
                  break;
               default:
                  Logger.log("[SpacesCatalogWidget] : " + _loc9_);
                  break;
            }
         }
         _loc4_ = 0;
         while(_loc4_ < _window.numChildren)
         {
            _loc12_ = _window.getChildAt(_loc4_);
            if(_loc12_ is IButtonWindow)
            {
               _loc12_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClick);
            }
            _loc4_++;
         }
         this.changePattern(const_108,0);
         this.changePattern(const_238,0);
         this.changePattern(TYPE_LANDSCAPE,0);
         this.updateConfiguration();
         events.dispatchEvent(new CatalogWidgetUpdateRoomPreviewEvent(this._floorType,this.var_1559,this.var_1560,64));
         return true;
      }
      
      private function parseElements(param1:XMLList) : Dictionary
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc2_:Dictionary = new Dictionary();
         if(param1 != null)
         {
            for each(_loc3_ in param1)
            {
               _loc4_ = String(_loc3_.@id);
               if(_loc4_ != null)
               {
                  _loc5_ = new Array();
                  _loc2_[_loc4_] = _loc5_;
                  _loc6_ = _loc3_.children();
                  if(_loc6_ != null && _loc6_.length() > 0)
                  {
                     for each(_loc7_ in _loc6_)
                     {
                        _loc8_ = _loc7_.@id;
                        if(_loc8_ != null && _loc5_.indexOf(_loc8_) == -1)
                        {
                           _loc5_.push(_loc8_);
                        }
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      private function onClick(param1:WindowMouseEvent) : void
      {
         var _loc3_:* = null;
         var _loc2_:IWindow = param1.target as IWindow;
         if(_loc2_ == null)
         {
            return;
         }
         switch(_loc2_.name)
         {
            case "ctlg_wall_pattern_prev":
               this.changePattern(const_238,-1);
               break;
            case "ctlg_wall_pattern_next":
               this.changePattern(const_238,1);
               break;
            case "ctlg_wall_color_prev":
               this.changeColor(const_238,-1);
               break;
            case "ctlg_wall_color_next":
               this.changeColor(const_238,1);
               break;
            case "ctlg_buy_wall":
               _loc3_ = this.var_1283[this.var_470];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page.pageId,this.var_1559);
               }
               break;
            case "ctlg_floor_pattern_prev":
               this.changePattern(const_108,-1);
               break;
            case "ctlg_floor_pattern_next":
               this.changePattern(const_108,1);
               break;
            case "ctlg_floor_color_prev":
               this.changeColor(const_108,-1);
               break;
            case "ctlg_floor_color_next":
               this.changeColor(const_108,1);
               break;
            case "ctlg_buy_floor":
               _loc3_ = this.var_1281[this.var_473];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page.pageId,this._floorType);
               }
               break;
            case "ctlg_landscape_pattern_next":
               this.changePattern(TYPE_LANDSCAPE,-1);
               break;
            case "ctlg_landscape_pattern_prev":
               this.changePattern(TYPE_LANDSCAPE,1);
               break;
            case "ctlg_landscape_color_prev":
               this.changeColor(TYPE_LANDSCAPE,-1);
               break;
            case "ctlg_landscape_color_next":
               this.changeColor(TYPE_LANDSCAPE,1);
               break;
            case "ctlg_buy_landscape":
               _loc3_ = this._landscapeOffers[this.var_468];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page.pageId,this.var_1560);
               }
               break;
            default:
               Logger.log("Spaces, unknown button: " + _loc2_.name);
         }
         this.updateConfiguration();
         events.dispatchEvent(new CatalogWidgetUpdateRoomPreviewEvent(this._floorType,this.var_1559,this.var_1560,64));
      }
      
      private function updateConfiguration() : void
      {
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc1_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var _loc2_:String = this.var_680[this.var_473];
         var _loc3_:Array = this.var_1032[_loc2_];
         if(_loc3_ != null && this.var_472 >= 0)
         {
            _loc11_ = _loc3_[this.var_472];
            if(_loc11_ != null)
            {
               this._floorType = _loc11_;
            }
         }
         var _loc4_:Offer = this.var_1281[this.var_473];
         if(_loc4_ != null)
         {
            _loc12_ = _window.findChildByName("ctlg_floor_price") as ITextWindow;
            if(_loc12_ != null)
            {
               _loc12_.caption = _loc1_.registerParameter("catalog.purchase.price.credits","credits",String(_loc4_.priceInCredits));
            }
         }
         var _loc5_:String = this.var_830[this.var_470];
         var _loc6_:Array = this.var_1284[_loc5_];
         if(_loc6_ != null && this.var_469 >= 0)
         {
            _loc13_ = _loc6_[this.var_469];
            if(_loc13_ != null)
            {
               this.var_1559 = _loc13_;
            }
         }
         var _loc7_:Offer = this.var_1283[this.var_470];
         if(_loc7_ != null)
         {
            _loc14_ = _window.findChildByName("ctlg_wall_price") as ITextWindow;
            if(_loc14_ != null)
            {
               _loc14_.caption = _loc1_.registerParameter("catalog.purchase.price.credits","credits",String(_loc7_.priceInCredits));
            }
         }
         var _loc8_:String = this.var_831[this.var_468];
         var _loc9_:Array = this.var_1282[_loc8_];
         if(_loc9_ != null && this.var_471 >= 0)
         {
            _loc15_ = _loc9_[this.var_471];
            if(_loc15_ != null)
            {
               this.var_1560 = _loc15_;
            }
         }
         var _loc10_:Offer = this._landscapeOffers[this.var_468];
         if(_loc10_ != null)
         {
            _loc16_ = _window.findChildByName("ctlg_landscape_price") as ITextWindow;
            if(_loc16_ != null)
            {
               _loc16_.caption = _loc1_.registerParameter("catalog.purchase.price.credits","credits",String(_loc10_.priceInCredits));
            }
         }
      }
      
      private function changePattern(param1:String, param2:int) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         switch(param1)
         {
            case const_108:
               this.var_473 += param2;
               if(this.var_473 < 0)
               {
                  this.var_473 = this.var_680.length - 1;
               }
               if(this.var_473 >= this.var_680.length)
               {
                  this.var_473 = 0;
               }
               this.var_472 = 0;
               this.var_1031 = 0;
               _loc5_ = this.var_680[this.var_473];
               _loc6_ = this.var_1032[_loc5_];
               if(_loc6_ != null)
               {
                  this.var_1031 = _loc6_.length;
               }
               _loc4_ = _window.findChildByName("ctlg_floor_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_floor_color_next") as IButtonWindow;
               if(this.var_1031 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
               break;
            case const_238:
               this.var_470 += param2;
               if(this.var_470 < 0)
               {
                  this.var_470 = this.var_830.length - 1;
               }
               if(this.var_470 == this.var_830.length)
               {
                  this.var_470 = 0;
               }
               this.var_469 = 0;
               this.var_1030 = 0;
               _loc7_ = this.var_830[this.var_470];
               _loc8_ = this.var_1284[_loc7_];
               if(_loc8_ != null)
               {
                  this.var_1030 = _loc8_.length;
               }
               _loc4_ = _window.findChildByName("ctlg_wall_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_wall_color_next") as IButtonWindow;
               if(this.var_1030 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
               break;
            case TYPE_LANDSCAPE:
               this.var_468 += param2;
               if(this.var_468 < 0)
               {
                  this.var_468 = this.var_831.length - 1;
               }
               if(this.var_468 >= this.var_831.length)
               {
                  this.var_468 = 0;
               }
               this.var_471 = 0;
               this.var_1029 = 0;
               _loc9_ = this.var_831[this.var_468];
               _loc10_ = this.var_1282[_loc9_];
               if(_loc10_ != null)
               {
                  this.var_1029 = _loc10_.length;
               }
               _loc4_ = _window.findChildByName("ctlg_landscape_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_landscape_color_next") as IButtonWindow;
               if(this.var_1029 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
         }
      }
      
      private function changeColor(param1:String, param2:int) : void
      {
         switch(param1)
         {
            case const_108:
               this.var_472 += param2;
               if(this.var_472 < 0)
               {
                  if(this.var_1031 > 0)
                  {
                     this.var_472 = this.var_1031 - 1;
                  }
                  else
                  {
                     this.var_472 = 0;
                  }
               }
               if(this.var_472 >= this.var_1031)
               {
                  this.var_472 = 0;
               }
               break;
            case const_238:
               this.var_469 += param2;
               if(this.var_469 < 0)
               {
                  if(this.var_1030 > 0)
                  {
                     this.var_469 = this.var_1030 - 1;
                  }
                  else
                  {
                     this.var_469 = 0;
                  }
               }
               if(this.var_469 >= this.var_1030)
               {
                  this.var_469 = 0;
               }
               break;
            case TYPE_LANDSCAPE:
               this.var_471 += param2;
               if(this.var_471 < 0)
               {
                  if(this.var_1029 > 0)
                  {
                     this.var_471 = this.var_1029 - 1;
                  }
                  else
                  {
                     this.var_471 = 0;
                  }
               }
               if(this.var_471 >= this.var_1029)
               {
                  this.var_471 = 0;
               }
         }
      }
   }
}
