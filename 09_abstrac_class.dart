void main(){
  
  final windPlant=WindPlant(initialEnergy: 10);
  final nuclearPlant=NuclearPlant(energyLeft: 1000);
  
  
  print('Wind : ${chargePhone(windPlant)}');
  print('Nuclear : ${chargePhone(nuclearPlant)}');
  
}


double chargePhone(EnergyPlant plan){
  if(plan.energyLeft < 10){
    throw Exception('Not enough energy');
  }
  return plan.energyLeft-10;
}





enum PlantType{nuclear,win,water}

abstract class EnergyPlant{
  
  double energyLeft;
  final PlantType type;
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void  consumeEnery(double amount){
   
  }
}

class WindPlant extends EnergyPlant{
  
    WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy,type: PlantType.win);
      
      
    void consumeEnergy(double amount){
      this.energyLeft -= amount;
    }
      
      
}

class NuclearPlant implements EnergyPlant{
  
  double energyLeft;
  final PlantType type=PlantType.nuclear;
  
  NuclearPlant({required this.energyLeft});
  

  void consumeEnergy(double amount){
      energyLeft -= (amount * 0.5);
    }

  @override
  void consumeEnery(double amount) {
    // TODO: implement consumeEnery
  }
      
}

