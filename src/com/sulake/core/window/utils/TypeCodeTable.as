package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_955;
         param1["badge"] = const_1020;
         param1["bitmap"] = const_447;
         param1["border"] = const_746;
         param1["border_notify"] = const_1845;
         param1["bubble"] = const_1014;
         param1["bubble_pointer_up"] = const_1383;
         param1["bubble_pointer_right"] = const_1161;
         param1["bubble_pointer_down"] = const_1297;
         param1["bubble_pointer_left"] = const_1183;
         param1["button"] = const_640;
         param1["button_thick"] = const_880;
         param1["button_icon"] = const_1975;
         param1["button_group_left"] = const_1006;
         param1["button_group_center"] = const_865;
         param1["button_group_right"] = const_801;
         param1["canvas"] = const_937;
         param1["checkbox"] = const_935;
         param1["closebutton"] = const_1305;
         param1["container"] = const_405;
         param1["container_button"] = const_898;
         param1["display_object_wrapper"] = const_863;
         param1["dropmenu"] = const_521;
         param1["dropmenu_item"] = const_634;
         param1["frame"] = const_417;
         param1["frame_notify"] = const_1864;
         param1["header"] = const_791;
         param1["html"] = const_1234;
         param1["icon"] = const_1159;
         param1["itemgrid"] = const_1287;
         param1["itemgrid_horizontal"] = const_586;
         param1["itemgrid_vertical"] = const_793;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_458;
         param1["itemlist_vertical"] = const_445;
         param1["label"] = const_903;
         param1["maximizebox"] = const_1964;
         param1["menu"] = const_1923;
         param1["menu_item"] = const_2025;
         param1["submenu"] = const_1166;
         param1["minimizebox"] = const_2023;
         param1["notify"] = const_1753;
         param1["null"] = const_761;
         param1["password"] = const_798;
         param1["radiobutton"] = const_829;
         param1["region"] = const_345;
         param1["restorebox"] = const_1802;
         param1["scaler"] = const_505;
         param1["scaler_horizontal"] = const_1783;
         param1["scaler_vertical"] = const_1865;
         param1["scrollbar_horizontal"] = const_547;
         param1["scrollbar_vertical"] = const_826;
         param1["scrollbar_slider_button_up"] = const_1227;
         param1["scrollbar_slider_button_down"] = const_1340;
         param1["scrollbar_slider_button_left"] = const_1310;
         param1["scrollbar_slider_button_right"] = const_1247;
         param1["scrollbar_slider_bar_horizontal"] = const_1327;
         param1["scrollbar_slider_bar_vertical"] = const_1320;
         param1["scrollbar_slider_track_horizontal"] = const_1174;
         param1["scrollbar_slider_track_vertical"] = const_1378;
         param1["scrollable_itemlist"] = const_1791;
         param1["scrollable_itemlist_vertical"] = const_529;
         param1["scrollable_itemlist_horizontal"] = const_1198;
         param1["selector"] = const_775;
         param1["selector_list"] = const_927;
         param1["submenu"] = const_1166;
         param1["tab_button"] = const_802;
         param1["tab_container_button"] = const_1288;
         param1["tab_context"] = const_430;
         param1["tab_content"] = const_1284;
         param1["tab_selector"] = const_934;
         param1["text"] = const_1019;
         param1["input"] = const_887;
         param1["toolbar"] = const_1988;
         param1["tooltip"] = const_426;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
