void main(){
   
  final area = areaTriangulo(altura: 23,bases: 34);
  
  print('El are del triangulo es : ${area.resultado()}');
}




class areaTriangulo{
    double altura;
    double bases; 
  
  areaTriangulo({
    
    required this.altura,
    required this.bases
    
  });
  
  double resultado(){
    return (altura*bases)/2;
  }
}

