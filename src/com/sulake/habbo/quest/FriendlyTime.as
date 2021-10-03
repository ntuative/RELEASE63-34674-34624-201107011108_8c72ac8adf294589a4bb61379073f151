package com.sulake.habbo.quest
{
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   
   public class FriendlyTime
   {
      
      private static const const_1079:int = 60;
      
      private static const const_1078:int = 3600;
      
      private static const const_1533:int = 3 * const_1079;
      
      private static const const_1532:int = 3 * const_1078;
       
      
      public function FriendlyTime()
      {
         super();
      }
      
      public static function getFriendlyTime(param1:IHabboLocalizationManager, param2:int) : String
      {
         if(param2 > const_1532)
         {
            return getLocalization(param1,"friendlytime.hours",Math.round(param2 / const_1078));
         }
         if(param2 > const_1533)
         {
            return getLocalization(param1,"friendlytime.minutes",Math.round(param2 / const_1079));
         }
         return getLocalization(param1,"friendlytime.seconds",Math.round(param2));
      }
      
      public static function getLocalization(param1:IHabboLocalizationManager, param2:String, param3:int) : String
      {
         param1.registerParameter(param2,"amount","" + param3);
         return param1.getKey(param2,param2);
      }
   }
}
