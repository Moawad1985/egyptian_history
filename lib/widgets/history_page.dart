import 'package:egyptian_history/models/page_model.dart';
import 'package:egyptian_history/widgets/home_page.dart';
import 'package:flutter/material.dart';


class HistoryPage extends StatelessWidget {
  final PageModel pageModel;
  HistoryPage({Key? key,required this.pageModel}) : super(key: key);

// String pageTitle ='عصر الدوله القدية';
// String pageImage = '';
// String pageContent= '';



  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 15,),
             ListTile(
               title:  Text(pageModel.pageTitle!,
                 style: TextStyle(
                   fontSize: 30,
                 ),
                 textDirection: TextDirection.rtl,
               ),
               leading: IconButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(),),);
               }, icon: Icon(Icons.arrow_back_ios_outlined)),
             ),
              Image.asset(pageModel.pageImage!),
              SizedBox(height: 10,),
              Container(
                  child: Text(pageModel.pageContent!,
                  textDirection: TextDirection.rtl,style: TextStyle(
                      fontSize: 16
                    ),
                  )),
              Divider(height: 3,),
            ],
          ),
        ),
      ),
    );
  }
}
