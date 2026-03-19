void main(){
  
    final  area = areaCirculo(radio:23 );
  
    print('El are del circulo es :${area.resultado()}');
}

class areaCirculo{
  double pi;
  double radio;
  
  
  areaCirculo({
    this.pi=3.14,
    required this.radio
  });
  
  double resultado(){
    return pi*radio;
  }
  
}