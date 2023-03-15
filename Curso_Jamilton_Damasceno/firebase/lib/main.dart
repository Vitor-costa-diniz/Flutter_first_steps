import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_core/firebase_core.dart';

import 'dart:io';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  XFile? _imagem;

  Future _recuperarImagem(bool daCamera) async {
    XFile imagemSelecionada;
    if (daCamera) {
      imagemSelecionada = await ImagePicker.platform
          .getImage(source: ImageSource.camera) as XFile;
    } else {
      imagemSelecionada = await ImagePicker.platform
          .getImage(source: ImageSource.gallery) as XFile;
    }
    setState(() {
      _imagem = imagemSelecionada;
    });
  }

  Future _uploadImagem() async {
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference pastaRaiz = storage.ref();
    Reference arquivo = pastaRaiz.child('fotos').child('foto.jpg');

    //Fazer upload da Imagem
    arquivo.putFile(_imagem!.path as File);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selecionar imagem'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Camera'),
              onPressed: () {
                _recuperarImagem(true);
              },
            ),
            ElevatedButton(
              child: Text('Galeria'),
              onPressed: () {
                _recuperarImagem(false);
              },
            ),
            _imagem == null
                ? Container()
                : Image.file(
                    File(_imagem!.path),
                  ),
            ElevatedButton(
              child: Text('Upload Storage'),
              onPressed: () {
                _uploadImagem();
              },
            ),
          ],
        ),
      ),
    );
  }
}
