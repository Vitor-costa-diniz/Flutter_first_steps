import 'package:http/http.dart' as http;
import 'dart:convert';

import 'model/video.dart';

const Chave_youtube_api = 'AIzaSyCG1WbAaUBKnmEc-cjWlPAEyO-ScfhuPg8';
const ID_Canal = 'UCiIZY89KwQkxAW-4Le7U7zg ';
const Url_base = 'https://www.googleapis.com/youtube/v3/';

class Api {
  Future<List<Video>?> pesquisar(String pesquisa) async {
    http.Response response = await http.get(
      Uri.parse(
        '${Url_base}search'
        '?part=snippet'
        '&type=video'
        '&maxResults=20'
        '&order=date'
        '&key=$Chave_youtube_api'
        '&channelId=$ID_Canal'
        '&q=$pesquisa',
      ),
    );

    if (response.statusCode == 200) {
      //print(response.body);
      Map<String, dynamic> dadosJson = json.decode(response.body);

      List<Video> videos = dadosJson['items'].map<Video>((map) {
        return Video.fromJson(map);
      }).toList();
      //return Video.converterJson(map);

      return videos;
      /*for (var video in dadosJson['items']) {
        print('Resultado: $video');
      }
      */

      //print(dadosJson['items'][0]['snippet']['title']);
    } else {
      print('Deu erro mané');
    }
  }
}
