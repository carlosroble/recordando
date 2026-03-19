void main(){
  
  final mySquare = Square(side: 12);
  
  print('Area: ${mySquare.calculateArea()}');
}

class Square{
  
  double side; //side * side
  
  Square({required this.side });
  
  double calculateArea(){
    return side*side;
  }
  
}