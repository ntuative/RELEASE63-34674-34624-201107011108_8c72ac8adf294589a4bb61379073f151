package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_167:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_142:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1401:String;
      
      private var var_1536:Array;
      
      private var var_1277:Array;
      
      private var var_2100:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1401 = param2;
         this.var_1536 = param3;
         this.var_1277 = param4;
         if(this.var_1277 == null)
         {
            this.var_1277 = [];
         }
         this.var_2100 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1401;
      }
      
      public function get choices() : Array
      {
         return this.var_1536.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1277.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2100;
      }
   }
}
