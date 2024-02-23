import 'package:dart_frog/dart_frog.dart';

HttpMethod httpGet = HttpMethod.get;
String responseString = 'expected request:- ';

Response onRequest(RequestContext context) {
  HttpMethod methodUsed = context.request.method;
  
  if(methodUsed == httpGet ){
    responseString = 'not $responseString';
  }

  return Response( body: '$responseString ${methodUsed.value}');
}

