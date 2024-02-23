import 'dart:collection';

import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  // TODO: implement route handler 
  // get all user data from  database and return it as json response for other user to see
  return switch(context.request.method){
    HttpMethod.get => _getUsers(),
    HttpMethod.post => _createUser(context),
    _ => Response(body: 'default')
  };
}

Response _getUsers(){
  return Response.json(
    body: [
      {
        'name' : 'sebby',
        'lastname': 'suuuuu'
      },
      {
        'name' : 'afro',
        'lastname': 'mcfluflin'
      }
    ]
  );
}

Response _createUser(RequestContext context){

  return Response();

}