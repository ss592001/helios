
const mongoose=require('mongoose');

const Schema=mongoose.Schema;
const Role=new Schema({
 name:{
    type:String
 },
 features:{
    type:Array
 }

   })
module.exports=mongoose.model('Role',Role);