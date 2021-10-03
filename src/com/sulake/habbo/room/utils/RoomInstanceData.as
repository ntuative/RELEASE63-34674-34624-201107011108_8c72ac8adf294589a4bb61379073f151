package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_912:TileHeightMap = null;
      
      private var var_1388:LegacyWallGeometry = null;
      
      private var var_1389:RoomCamera = null;
      
      private var var_913:SelectedRoomObjectData = null;
      
      private var var_911:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_592:Map;
      
      private var var_593:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_592 = new Map();
         this.var_593 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1388 = new LegacyWallGeometry();
         this.var_1389 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_912;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_912 != null)
         {
            this.var_912.dispose();
         }
         this.var_912 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1388;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1389;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_913;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_913 != null)
         {
            this.var_913.dispose();
         }
         this.var_913 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_911;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_911 != null)
         {
            this.var_911.dispose();
         }
         this.var_911 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_912 != null)
         {
            this.var_912.dispose();
            this.var_912 = null;
         }
         if(this.var_1388 != null)
         {
            this.var_1388.dispose();
            this.var_1388 = null;
         }
         if(this.var_1389 != null)
         {
            this.var_1389.dispose();
            this.var_1389 = null;
         }
         if(this.var_913 != null)
         {
            this.var_913.dispose();
            this.var_913 = null;
         }
         if(this.var_911 != null)
         {
            this.var_911.dispose();
            this.var_911 = null;
         }
         if(this.var_592 != null)
         {
            this.var_592.dispose();
            this.var_592 = null;
         }
         if(this.var_593 != null)
         {
            this.var_593.dispose();
            this.var_593 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_592.remove(param1.id);
            this.var_592.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_592.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_592.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_592.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_593.remove(param1.id);
            this.var_593.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_593.length > 0)
         {
            return this.getWallItemDataWithId(this.var_593.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_593.remove(param1);
      }
   }
}
