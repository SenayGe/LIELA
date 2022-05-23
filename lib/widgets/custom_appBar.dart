import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey.shade50,
      elevation: 1.0,//Text('Liela', style: TextStyle(color: Colors.red.shade300),),
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.contain,
            height: 30,
          ),
          //appLogo,
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('LIELA', style: Theme.of(context).textTheme.headline5!.copyWith(
                color: Colors.red.shade700,
                fontWeight: FontWeight.w700,)
              )
            //Text('LIELA', style: TextStyle(color: Colors.red),)
          ),
        ],
      ),
      actions: [
        IconButton(icon: Icon(Icons.filter_alt_outlined, color: Theme.of(context).primaryColor,) , onPressed: (){})
      ],

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);//throw UnimplementedError();
}