import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:safayet_technical_test/pages/page2/models/sub_symptoms.dart';
import 'package:safayet_technical_test/pages/page2/models/symptoms.dart';

class Page2Controller extends GetxController {
  final List<Symptoms> symptoms = [];
  final addedSymptoms = RxList<SubSymptoms>();
  final isLoading = true.obs;
  final dio = Dio();

  Future<void> getData() async {
    final response =
        await dio.get('https://api.npoint.io/30bd2c680d812dd23df1');

    final symptomsList = response.data["data"]["symptoms"];
    for (final symptom in symptomsList) {
      final symptomModel = Symptoms.fromJson(symptom);
      symptoms.add(symptomModel);
      print(symptomModel);
      print(symptomModel);
    }

    isLoading.value = false;
  }

  void addSymptom(SubSymptoms symptoms) {
    if (addedSymptoms.contains(symptoms) == false) {
      addedSymptoms.add(symptoms);
    }
    print(addedSymptoms);
  }

  void removeSymptom(SubSymptoms symptoms) {
    if (addedSymptoms.contains(symptoms)) {
      addedSymptoms.remove(symptoms);
    }
  }
}
