void main() async{
  
  print('Inicio de programa');
  
  try{
  final value= await httpGet('Electronica');
  print('exito : $value');
  
  } on Exception catch(err){
    
    print('Tenemos una Excepcion : $err');
    
  }  catch(err){
    print('OPPS tenemos un problema: $err');
  }
  finally{
    print('Final de try y catch');
  }
  
  print('Fin de programa');
}


Future <String> httpGet( String url) async{
  await Future.delayed(Duration(seconds:2 ));  
  
  //throw Exception('No hay parametros en el URL');
  throw 'Error de peticion';
   // return 'Respuesta a la peticion http';
 
}






