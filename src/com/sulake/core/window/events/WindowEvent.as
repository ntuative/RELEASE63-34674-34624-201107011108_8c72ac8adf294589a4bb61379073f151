package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1792:String = "WE_DESTROY";
      
      public static const const_367:String = "WE_DESTROYED";
      
      public static const const_1927:String = "WE_OPEN";
      
      public static const const_1960:String = "WE_OPENED";
      
      public static const const_1813:String = "WE_CLOSE";
      
      public static const const_2015:String = "WE_CLOSED";
      
      public static const const_1734:String = "WE_FOCUS";
      
      public static const const_348:String = "WE_FOCUSED";
      
      public static const const_1967:String = "WE_UNFOCUS";
      
      public static const const_1747:String = "WE_UNFOCUSED";
      
      public static const const_1891:String = "WE_ACTIVATE";
      
      public static const const_645:String = "WE_ACTIVATED";
      
      public static const const_1800:String = "WE_DEACTIVATE";
      
      public static const const_496:String = "WE_DEACTIVATED";
      
      public static const const_368:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_615:String = "WE_UNSELECT";
      
      public static const const_619:String = "WE_UNSELECTED";
      
      public static const const_1907:String = "WE_LOCK";
      
      public static const const_1933:String = "WE_LOCKED";
      
      public static const const_1832:String = "WE_UNLOCK";
      
      public static const const_1740:String = "WE_UNLOCKED";
      
      public static const const_972:String = "WE_ENABLE";
      
      public static const const_291:String = "WE_ENABLED";
      
      public static const const_917:String = "WE_DISABLE";
      
      public static const const_313:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_422:String = "WE_RELOCATED";
      
      public static const const_1212:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1935:String = "WE_MINIMIZE";
      
      public static const const_2027:String = "WE_MINIMIZED";
      
      public static const const_2016:String = "WE_MAXIMIZE";
      
      public static const const_1871:String = "WE_MAXIMIZED";
      
      public static const const_1842:String = "WE_RESTORE";
      
      public static const const_2030:String = "WE_RESTORED";
      
      public static const const_599:String = "WE_CHILD_ADDED";
      
      public static const const_442:String = "WE_CHILD_REMOVED";
      
      public static const const_216:String = "WE_CHILD_RELOCATED";
      
      public static const const_145:String = "WE_CHILD_RESIZED";
      
      public static const const_334:String = "WE_CHILD_ACTIVATED";
      
      public static const const_566:String = "WE_PARENT_ADDED";
      
      public static const const_2028:String = "WE_PARENT_REMOVED";
      
      public static const const_1887:String = "WE_PARENT_RELOCATED";
      
      public static const const_600:String = "WE_PARENT_RESIZED";
      
      public static const const_1342:String = "WE_PARENT_ACTIVATED";
      
      public static const const_156:String = "WE_OK";
      
      public static const const_670:String = "WE_CANCEL";
      
      public static const const_113:String = "WE_CHANGE";
      
      public static const const_618:String = "WE_SCROLL";
      
      public static const const_109:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_746:IWindow;
      
      protected var var_1141:Boolean;
      
      protected var var_505:Boolean;
      
      protected var var_169:Boolean;
      
      protected var var_745:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_746 = param3;
         _loc5_.var_505 = param4;
         _loc5_.var_169 = false;
         _loc5_.var_745 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_746;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_505;
      }
      
      public function recycle() : void
      {
         if(this.var_169)
         {
            throw new Error("Event already recycled!");
         }
         this.var_746 = null;
         this._window = null;
         this.var_169 = true;
         this.var_1141 = false;
         this.var_745.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1141;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1141 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1141;
      }
      
      public function stopPropagation() : void
      {
         this.var_1141 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1141 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_505 + " window: " + this._window + " }";
      }
   }
}
