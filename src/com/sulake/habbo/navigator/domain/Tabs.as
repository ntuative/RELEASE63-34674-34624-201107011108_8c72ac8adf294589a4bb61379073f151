package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_375:int = 1;
      
      public static const const_207:int = 2;
      
      public static const const_280:int = 3;
      
      public static const const_365:int = 4;
      
      public static const const_315:int = 5;
      
      public static const const_411:int = 1;
      
      public static const const_987:int = 2;
      
      public static const const_989:int = 3;
      
      public static const const_969:int = 4;
      
      public static const const_283:int = 5;
      
      public static const const_914:int = 6;
      
      public static const const_877:int = 7;
      
      public static const const_408:int = 8;
      
      public static const const_601:int = 9;
      
      public static const const_2222:int = 10;
      
      public static const const_781:int = 11;
      
      public static const const_595:int = 12;
       
      
      private var var_478:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_478 = new Array();
         this.var_478.push(new Tab(this._navigator,const_375,const_595,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_489));
         this.var_478.push(new Tab(this._navigator,const_207,const_411,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_489));
         this.var_478.push(new Tab(this._navigator,const_365,const_781,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1262));
         this.var_478.push(new Tab(this._navigator,const_280,const_283,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_489));
         this.var_478.push(new Tab(this._navigator,const_315,const_408,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1384));
         this.setSelectedTab(const_375);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_365;
      }
      
      public function get tabs() : Array
      {
         return this.var_478;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_478)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_478)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_478)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
