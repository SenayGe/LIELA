import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:liela/repositories/storage/storage_repository.dart';

class CustomImageContainer extends StatelessWidget {
  final TabController tabController;
  const CustomImageContainer({required this.tabController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10.0),
      child: Container(
        height: 130,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.symmetric(
                vertical: BorderSide(
                    color: Theme.of(context).primaryColor, width: 1.5),
                horizontal: BorderSide(
                    color: Theme.of(context).primaryColor, width: 1.5))),
        child: Align(
            //alignment: Alignment.bottomRight,
            child: IconButton(
          icon: Icon(Icons.add_circle, color: Colors.pink.shade300),
          onPressed: () async{
            ImagePicker _picker = ImagePicker();
            final XFile? _image = await _picker.pickImage(source: ImageSource.gallery);

            if (_image == null){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('No image was selected')));
            }
            else{
              print ('Uplaoding image .....');
              StorageRepository().uploadImage(_image);
            }

          },
        )),
      ),
    );
  }
}
