<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use Illuminate\Support\Facades\Validator;
class BlogCategoryController extends Controller
{
    /**
* Display a listing of the resource.
*
* @return \Illuminate\Http\Response
*/
public function index()
{
$category = Category::all();
return response()->json([
"success" => true,
"message" => "Blog List",
"data" => $category
]);
}
/**
* Store a newly created resource in storage.
*
* @param  \Illuminate\Http\Request  $request
* @return \Illuminate\Http\Response
*/
public function store(Request $request)
{
$input = $request->all();
$validator = Validator::make($input, [
'name' => 'required','string','max:200',
'slug' => 'required','string','max:200',
'description' => 'required',
'meta_title' => 'required','string','max:200',
'meta_description' => 'required','string',
'meta_keyword' => 'required','string',

]);
if($validator->fails()){
return $this->sendError('Validation Error.', $validator->errors());
}
$category = Category::create($input);
return response()->json([
"success" => true,
"message" => "Blog created successfully.",
"data" => $category
]);
}
/**
* Display the specified resource.
*
* @param  int  $id
* @return \Illuminate\Http\Response
*/
public function show($id)
{
$category = Category::find($id);
if (is_null($category)) {
return $this->sendError('Blog not found.');
}
return response()->json([
"success" => true,
"message" => "Blog retrieved successfully.",
"data" => $category
]);
}
/**
* Update the specified resource in storage.
*
* @param  \Illuminate\Http\Request  $request
* @param  int  $id
* @return \Illuminate\Http\Response
*/
public function update(Request $request, Category $category)
{
$input = $request->all();
$validator = Validator::make($input, [
'name' => 'required',
'slug' => 'required',
'description' => 'required',
'meta_title' => 'required',
'meta_description' => 'required',
'meta_keyword' => 'required',
]);
if($validator->fails()){
return $this->sendError('Validation Error.', $validator->errors());
}
$category->name = $input['name'];
$category->slug = $input['slug'];
$category->description = $input['description'];
$category->meta_title = $input['meta_title'];
$category->meta_description = $input['meta_description'];
$category->meta_keyword = $input['meta_keyword'];
$category->save();
return response()->json([
"success" => true,
"message" => "Blog updated successfully.",
"data" => $category
]);
}
/**
* Remove the specified resource from storage.
*
* @param  int  $id
* @return \Illuminate\Http\Response
*/
public function destroy(Category $category)
{
$category->delete();
return response()->json([
"success" => true,
"message" => "Blog deleted successfully.",
"data" => $category
]);
}
}
