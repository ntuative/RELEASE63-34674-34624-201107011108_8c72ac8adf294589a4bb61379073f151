package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_1934:int;
      
      private var var_2784:String;
      
      private var var_1933:String;
      
      private var _index:int;
      
      private var _category:FaqCategory;
      
      private var var_2783:Boolean = false;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         this.var_1934 = param1;
         this.var_2784 = param2;
         this._index = param3;
         this._category = param4;
      }
      
      public function get questionId() : int
      {
         return this.var_1934;
      }
      
      public function get questionText() : String
      {
         return this.var_2784;
      }
      
      public function get answerText() : String
      {
         return this.var_1933;
      }
      
      public function get hasAnswer() : Boolean
      {
         return this.var_2783;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get category() : FaqCategory
      {
         return this._category;
      }
      
      public function set answerText(param1:String) : void
      {
         this.var_1933 = param1;
         this.var_2783 = true;
      }
   }
}
