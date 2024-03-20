// void main() {
//   int? age;
//   age = 30;
//   print("hello Gilbert i am $age");
// }

import 'dart:io';

// Interface for the vehicle
abstract class Vehicle {
  void start();
  void stop();
}

// Base class for all vehicles
class BaseVehicle implements Vehicle {
  @override
  void start() {
    print('Vehicle is starting...');
  }

  @override
  void stop() {
    print('Vehicle is stopping...');
  }
}

// Car class inheriting from BaseVehicle
class Car extends BaseVehicle {
  @override
  void start() {
    // invoking the overridden method from the base class
    super.start(); 
    print('Car is starting...');
  }
}

// Truck class inheriting from BaseVehicle
class Truck extends BaseVehicle {
  @override
  void start() {
    // invoking the overridden method from the base class
    super.start(); 
    print('Truck is starting...');
  }
}

// Class to read vehicle data from a file
class VehicleDataReader {
  List<String> readDataFromFile(String fileName) {
    try {
      final file = File(fileName);
      final lines = file.readAsLinesSync();
      return lines;
    } catch (e) {
      print('Error reading file: $e');
      return [];
    }
  }
}

void main() {
  // Creating an instance of Car
  final car = Car();
  car.start();

  // Creating an instance of Truck
  final truck = Truck();
  truck.start();

  // Demonstrating the use of a loop
  print('\nReading data from file...');
  final dataReader = VehicleDataReader();
  final lines = dataReader.readDataFromFile('vehicle_data.txt');
  for (var line in lines) {
    print('Data from file: $line');
  }
}
