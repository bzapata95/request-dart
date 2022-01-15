import 'package:http/http.dart' as http;
import 'package:paquetes/classes/request_response.dart';

void getReqResponse_service() async {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  var response = await http.get(url);

  final responseFormmated = reqResRespuestaFromJson(response.body);
  // print(body);
  // print('page: ${body['page']}');
  // print('per_page: ${body['per_page']}');
  // print('id del tercer elemento: ${body['data'][2]['id']}');

  print('page: ${responseFormmated.page}');
  print('per_page: ${responseFormmated.perPage}');
  print('id del tercer elemento: ${responseFormmated.data[2].id}');
}
