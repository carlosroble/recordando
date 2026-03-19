void main(){
  
  print(greetEveryone());
  
  print('La suma de los numeros es : ${addTwoNumber(20,50)}');
  
  print('La resta de los numeros es : ${addTwoNumbers(70,50)}');
  
   print('La suma de los numeros es : ${addTwoNumberOptional(70,100,90)}');
  
  print(greetPerson( name: 'nada', message: 'Hi') );
}

String greetEveryone()=> 'Hellow everyone';

int addTwoNumber(int a , int b){  
  return a+b;  
}

int addTwoNumbers(int c, int d)=> c-d;

int addTwoNumberOptional(int e , [int f=0, int h=0]){
  
 // f ??= 0;
  return e+f+h;
  
}


String greetPerson({required String name, String message='Hola'}){
  
  return '$message Carlos';
}











