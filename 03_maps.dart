void main(){
  
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp':100,
    'isAlive':true,
    'abilities': <String>['Impostor'],
    'sprite':{
      
      1:'ditto/front.png',
      2:'ditto/back.png'
      
    }
    
  };
  
  print(pokemon);
  print('Name :${pokemon['name']}');
  print('Name :${pokemon['sprite']}');
  
  print('Name :${pokemon['sprite'][1]}');
  print('Name :${pokemon['sprite'][2]}');
  
}
