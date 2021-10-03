package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_839:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2298:int;
      
      private var var_2299:int;
      
      private var _color:uint;
      
      private var var_1352:int;
      
      private var var_2297:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_839);
         this.var_2298 = param1;
         this.var_2299 = param2;
         this._color = param3;
         this.var_1352 = param4;
         this.var_2297 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2298;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2299;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1352;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2297;
      }
   }
}
