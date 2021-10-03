package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectController;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.object.logic.ObjectLogicBase;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class MovingObjectLogic extends ObjectLogicBase
   {
      
      public static const const_789:int = 500;
      
      private static var var_698:Vector3d = new Vector3d();
       
      
      private var var_482:Vector3d;
      
      private var var_106:Vector3d;
      
      private var var_1069:Number = 0.0;
      
      private var _lastUpdateTime:int = 0;
      
      private var var_2799:int;
      
      private var var_1068:int = 500;
      
      public function MovingObjectLogic()
      {
         this.var_482 = new Vector3d();
         this.var_106 = new Vector3d();
         super();
      }
      
      protected function get lastUpdateTime() : int
      {
         return this._lastUpdateTime;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_106 = null;
         this.var_482 = null;
      }
      
      override public function set object(param1:IRoomObjectController) : void
      {
         super.object = param1;
         if(param1 != null)
         {
            this.var_106.assign(param1.getLocation());
         }
      }
      
      protected function set moveUpdateInterval(param1:int) : void
      {
         if(param1 <= 0)
         {
            param1 = 1;
         }
         this.var_1068 = param1;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         if(param1.loc != null)
         {
            this.var_106.assign(param1.loc);
         }
         var _loc2_:RoomObjectMoveUpdateMessage = param1 as RoomObjectMoveUpdateMessage;
         if(_loc2_ == null)
         {
            return;
         }
         if(object != null)
         {
            if(param1.loc != null)
            {
               _loc3_ = _loc2_.targetLoc;
               this.var_2799 = this._lastUpdateTime;
               this.var_482.assign(_loc3_);
               this.var_482.sub(this.var_106);
            }
         }
      }
      
      protected function getLocationOffset() : IVector3d
      {
         return null;
      }
      
      override public function update(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc2_:IVector3d = this.getLocationOffset();
         var _loc3_:IRoomObjectModelController = object.getModelController();
         if(_loc3_ != null)
         {
            if(_loc2_ != null)
            {
               if(this.var_1069 != _loc2_.z)
               {
                  this.var_1069 = _loc2_.z;
                  _loc3_.setNumber(RoomObjectVariableEnum.const_823,this.var_1069);
               }
            }
            else if(this.var_1069 != 0)
            {
               this.var_1069 = 0;
               _loc3_.setNumber(RoomObjectVariableEnum.const_823,this.var_1069);
            }
         }
         if(this.var_482.length > 0 || _loc2_ != null)
         {
            _loc4_ = param1 - this.var_2799;
            if(_loc4_ == this.var_1068 >> 1)
            {
               _loc4_++;
            }
            if(_loc4_ > this.var_1068)
            {
               _loc4_ = this.var_1068;
            }
            if(this.var_482.length > 0)
            {
               var_698.assign(this.var_482);
               var_698.mul(_loc4_ / Number(this.var_1068));
               var_698.add(this.var_106);
            }
            else
            {
               var_698.assign(this.var_106);
            }
            if(_loc2_ != null)
            {
               var_698.add(_loc2_);
            }
            if(object != null)
            {
               object.setLocation(var_698);
            }
            if(_loc4_ == this.var_1068)
            {
               this.var_482.x = 0;
               this.var_482.y = 0;
               this.var_482.z = 0;
            }
         }
         this._lastUpdateTime = param1;
      }
   }
}
