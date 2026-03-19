void main(){
  
  final int hp = 100;
  final bool isAlive = true;
  final String pokemon = "Ditto";
  final List<String> habilidades = ['Inteligente'];
  final sprites = <String> ['Educado'];
  
  //dynamic == null
  
  dynamic errorMessage = 'Hola';
  errorMessage= true;
  errorMessage= [1,2,3,4,5];
  errorMessage={1,2,3,4,5};
  
  print("""
  $pokemon
  $hp
  $isAlive
  $habilidades
  $sprites
  $errorMessage
  """);
  
}