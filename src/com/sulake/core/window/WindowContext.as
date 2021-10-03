package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_590:uint = 0;
      
      public static const const_2013:uint = 1;
      
      public static const const_2232:int = 0;
      
      public static const const_2318:int = 1;
      
      public static const const_2123:int = 2;
      
      public static const const_2169:int = 3;
      
      public static const const_1795:int = 4;
      
      public static const const_420:int = 5;
      
      public static var var_426:IEventQueue;
      
      private static var var_653:IEventProcessor;
      
      private static var var_1847:uint = const_590;
      
      private static var stage:Stage;
      
      private static var var_170:IWindowRenderer;
       
      
      private var var_2506:EventProcessorState;
      
      private var var_2504:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_146:DisplayObjectContainer;
      
      protected var var_3099:Boolean = true;
      
      protected var var_1414:Error;
      
      protected var var_2250:int = -1;
      
      protected var var_1413:IInternalWindowServices;
      
      protected var var_1698:IWindowParser;
      
      protected var var_3046:IWindowFactory;
      
      protected var var_96:IDesktopWindow;
      
      protected var var_1699:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_609:Boolean = false;
      
      private var var_2505:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_170 = param2;
         this._localization = param4;
         this.var_146 = param5;
         this.var_1413 = new ServiceManager(this,param5);
         this.var_3046 = param3;
         this.var_1698 = new WindowParser(this);
         this.var_2504 = param7;
         if(!stage)
         {
            if(this.var_146 is Stage)
            {
               stage = this.var_146 as Stage;
            }
            else if(this.var_146.stage)
            {
               stage = this.var_146.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_96 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_96.limits.maxWidth = param6.width;
         this.var_96.limits.maxHeight = param6.height;
         this.var_146.addChild(this.var_96.getDisplayObject());
         this.var_146.doubleClickEnabled = true;
         this.var_146.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2506 = new EventProcessorState(var_170,this.var_96,this.var_96,null,this.var_2504);
         inputMode = const_590;
         this.var_1699 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1847;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_426)
         {
            if(var_426 is IDisposable)
            {
               IDisposable(var_426).dispose();
            }
         }
         if(var_653)
         {
            if(var_653 is IDisposable)
            {
               IDisposable(var_653).dispose();
            }
         }
         switch(value)
         {
            case const_590:
               var_426 = new MouseEventQueue(stage);
               var_653 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_2013:
               var_426 = new TabletEventQueue(stage);
               var_653 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_590;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_146.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_146.removeChild(IGraphicContextHost(this.var_96).getGraphicContext(true) as DisplayObject);
            this.var_96.destroy();
            this.var_96 = null;
            this.var_1699.destroy();
            this.var_1699 = null;
            if(this.var_1413 is IDisposable)
            {
               IDisposable(this.var_1413).dispose();
            }
            this.var_1413 = null;
            this.var_1698.dispose();
            this.var_1698 = null;
            var_170 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1414;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2250;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1414 = param2;
         this.var_2250 = param1;
         if(this.var_3099)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1414 = null;
         this.var_2250 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1413;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1698;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_3046;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_96;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_96.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1795,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1699;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_96,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_96)
         {
            this.var_96 = null;
         }
         if(param1.state != WindowState.const_534)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_170.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_609 = true;
         if(this.var_1414)
         {
            throw this.var_1414;
         }
         var_653.process(this.var_2506,var_426);
         this.var_609 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2505 = true;
         var_170.update(param1);
         this.var_2505 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_96 != null && !this.var_96.disposed)
         {
            if(this.var_146 is Stage)
            {
               this.var_96.limits.maxWidth = Stage(this.var_146).stageWidth;
               this.var_96.limits.maxHeight = Stage(this.var_146).stageHeight;
               this.var_96.width = Stage(this.var_146).stageWidth;
               this.var_96.height = Stage(this.var_146).stageHeight;
            }
            else
            {
               this.var_96.limits.maxWidth = this.var_146.width;
               this.var_96.limits.maxHeight = this.var_146.height;
               this.var_96.width = this.var_146.width;
               this.var_96.height = this.var_146.height;
            }
         }
      }
   }
}
