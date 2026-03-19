void main() async{
  
  print('Inicio de programa');
  
  try{
  final value= await httpGet('Electronica');
  print(value);
  
  } catch(err){
    print('Tenemos un error: $err');
  }
  
  print('Fin de programa');
}


Future <String> httpGet( String url) async{
  await Future.delayed(Duration(seconds:2 ));  
  
  throw 'Error de peticion';
    return 'Respuesta a la peticion http';
 
}






