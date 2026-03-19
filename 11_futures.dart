void main(){
  
  print('Inicio de programa');
  
  httpGet('esta vez sere disiplinado').then((value){
    print(value);
  }).catchError((err){
    print('Error :$err');
  });
  
  print('Fin de programa');
}


Future <String> httpGet( String url){
  return Future.delayed(Duration(seconds:2 ),(){
    
    throw 'Error en la peticion http';
    return 'Respuesta a la peticion http';
  });
}





