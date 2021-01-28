import 'package:coffee_street/resource/Restofit/Restrofit/post.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'ApiClient.g.dart';

@RestApi(baseUrl:'http://ec2-3-35-55-47.ap-northeast-2.compute.amazonaws.com:8080')
abstract class AutoLogin {
  factory AutoLogin(Dio dio){
    dio.options = BaseOptions(receiveTimeout: 5000, connectTimeout: 5000);
    return _ApiClient(dio, baseUrl: baseUrl);}

  //Dynamic headers
  @GET("/posts")
  Future<List<Post>> getPosts(@Header("Content-Type") String contentType );

  // @GET("/comments")
  // @Headers(<String, dynamic>{ //Static header
  //   "Content-Type" : "application/json",
  //   "Custom-Header" : "Your header"
  // })
  // Future<List<Comment>> getAllComments();

  @GET("/posts/{id}")
  Future<Post> getPostFromId(@Path("id") int postId);

  // @GET("/comments?postId={id}")
  // Future<Comment> getCommentFromPostId(@Path("id") int postId);
  //
  // @GET("/comments")
  // Future<Comment> getCommentFromPostIdWithQuery(@Query("postId") int postId); //This yields to "/comments?postId=postId

  @DELETE("/posts/{id}")
  Future<void> deletePost(@Path("id") int postId);

  @POST("/posts")
  Future<Post> createPost(@Body() Post post);
}