void main(){
  
  final numbers= [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('list original ${numbers.toSet().toList()}');
  print('reversed : ${numbers.reversed}');
  print('length : ${numbers.length}');
  print('Index 0 : ${numbers[0]}');
  print('firts : ${numbers.first}');
  print('last : ${numbers.last}');
  
  
  final reversedNumbers= numbers.reversed;
  
  print('Iterable : $reversedNumbers');
  print('list : ${reversedNumbers.toList()}');
  print('Set : ${reversedNumbers.toSet()}');
  
  final numbersGreaterThan5 = numbers.where((int num){
    return num>5;
    
  });
  
  print('>5: $numbersGreaterThan5 ');
  print('>5 Set: ${numbersGreaterThan5.toSet()} ');
}
