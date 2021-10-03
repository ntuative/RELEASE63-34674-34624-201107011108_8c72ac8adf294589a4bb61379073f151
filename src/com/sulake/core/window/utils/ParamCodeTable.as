package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_188;
         param1["bound_to_parent_rect"] = const_102;
         param1["child_window"] = const_1303;
         param1["embedded_controller"] = const_1244;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_973;
         param1["mouse_dragging_target"] = const_278;
         param1["mouse_dragging_trigger"] = const_432;
         param1["mouse_scaling_target"] = const_344;
         param1["mouse_scaling_trigger"] = const_610;
         param1["horizontal_mouse_scaling_trigger"] = const_287;
         param1["vertical_mouse_scaling_trigger"] = const_270;
         param1["observe_parent_input_events"] = const_1306;
         param1["optimize_region_to_layout_size"] = const_628;
         param1["parent_window"] = const_1191;
         param1["relative_horizontal_scale_center"] = const_231;
         param1["relative_horizontal_scale_fixed"] = const_174;
         param1["relative_horizontal_scale_move"] = const_457;
         param1["relative_horizontal_scale_strech"] = const_413;
         param1["relative_scale_center"] = const_1185;
         param1["relative_scale_fixed"] = const_819;
         param1["relative_scale_move"] = const_1177;
         param1["relative_scale_strech"] = const_1173;
         param1["relative_vertical_scale_center"] = const_232;
         param1["relative_vertical_scale_fixed"] = const_169;
         param1["relative_vertical_scale_move"] = const_292;
         param1["relative_vertical_scale_strech"] = const_373;
         param1["on_resize_align_left"] = const_755;
         param1["on_resize_align_right"] = const_607;
         param1["on_resize_align_center"] = const_672;
         param1["on_resize_align_top"] = const_909;
         param1["on_resize_align_bottom"] = const_603;
         param1["on_resize_align_middle"] = const_585;
         param1["on_accommodate_align_left"] = const_1333;
         param1["on_accommodate_align_right"] = const_536;
         param1["on_accommodate_align_center"] = const_869;
         param1["on_accommodate_align_top"] = const_1221;
         param1["on_accommodate_align_bottom"] = const_501;
         param1["on_accommodate_align_middle"] = const_995;
         param1["route_input_events_to_parent"] = const_579;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1190;
         param1["scalable_with_mouse"] = const_1249;
         param1["reflect_horizontal_resize_to_parent"] = const_596;
         param1["reflect_vertical_resize_to_parent"] = const_550;
         param1["reflect_resize_to_parent"] = const_336;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1214;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
