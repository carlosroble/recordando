void main() {
  
  final areaC= AreaCuadrado(lado1: 4,lado2: 5,lado3: 7);
  
  print(areaC.resultado());
  
 
  
  
}

abstract class AreaFiguras{
  
    double lado1;
    double lado2;
    double lado3;
  
  AreaFiguras({
    required this.lado1,
    required this.lado2,
    required this.lado3    
  });
  
}


class AreaCuadrado extends AreaFiguras{  

  
    AreaCuadrado({
    required super.lado1,
    required super.lado2,
    required super.lado3,
  });
  
  
 double resultado(){
   return lado1 * lado2 * lado3;
 }


}


 
