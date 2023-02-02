import 'package:flutter/material.dart';
import 'package:youtube/api.dart';
import 'package:youtube/model/video.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Inicio extends StatefulWidget {
  String? pesquisa;
  Inicio(this.pesquisa, {super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  _listarVideos(String? pesquisa) {
    Api api = Api();
    return api.pesquisar(pesquisa!);
  }

  @override
  void initState() {
    super.initState();
    print('Chamado 1 - initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Chamado 2 - didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant Inicio oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('Chamado 2.5 - didUpdateWidget');
  }

  @override
  void dispose() {
    super.dispose();
    print('Chamado 4 - dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('Chamado 3 - Build');
    return FutureBuilder<List<Video>?>(
      future: _listarVideos(widget.pesquisa),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Center(
              child: CircularProgressIndicator(),
            );

          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshot.hasData) {
              return ListView.separated(
                  itemBuilder: (context, index) {
                    List<Video> videos = snapshot.data!;
                    Video video = videos[index];

                    return GestureDetector(
                      onTap: () {
                        YoutubePlayerController _controller =
                            YoutubePlayerController(
                          initialVideoId: video.id,
                          flags: YoutubePlayerFlags(
                            autoPlay: true,
                            mute: false,
                          ),
                        );
                        YoutubePlayer(
                          controller: _controller,
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.amber,
                          onReady: () {
                            _controller.addListener(() {});
                          },
                        );
                        print('pressionado');
                        print(video.id);
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(video.imagem),
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text(video.titulo),
                            subtitle: Text(video.descricao),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                        height: 2,
                        color: Colors.grey,
                      ),
                  itemCount: snapshot.data!.length);
            } else {
              return Center(
                child: Text('Nenhum dado a ser exibido!'),
              );
            }
            break;
        }
      },
    );
  }
}
