package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_776:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1142)
         {
            _structure = null;
            _assets = null;
            var_299 = null;
            var_313 = null;
            _figure = null;
            var_605 = null;
            var_359 = null;
            if(!var_1409 && var_46)
            {
               var_46.dispose();
            }
            var_46 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_803 = null;
            var_1142 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_776[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_776[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_443:
               switch(_loc3_)
               {
                  case AvatarAction.const_954:
                  case AvatarAction.const_597:
                  case AvatarAction.const_461:
                  case AvatarAction.const_993:
                  case AvatarAction.const_439:
                  case AvatarAction.const_759:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_376:
            case AvatarAction.const_147:
            case AvatarAction.const_250:
            case AvatarAction.const_1009:
            case AvatarAction.const_938:
            case AvatarAction.const_751:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
