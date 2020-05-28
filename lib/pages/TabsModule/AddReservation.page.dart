import 'Package:flutter/material.dart';
import 'package:Sela/Models/Reservation.Model.dart';

import '../../Providers/Projects.dart';
import 'package:provider/provider.dart';
import '../../widgets/SingleCustomerModule/AppBar.dart';

class AddReservationPage extends StatefulWidget {
  AddReservationPage();

  @override
  _AddReservationPageState createState() => _AddReservationPageState();
}

class _AddReservationPageState extends State<AddReservationPage> {
  String selectedProjectName;
  String selectedProjectid;
  TextStyle myTextStyle(){
    return TextStyle(
              color: Colors.black,
              fontFamily: 'DroidKufi',
              fontWeight: FontWeight.normal,
              fontSize: 17,
            );
  }

  @override
  Widget build(BuildContext context) {
    final projectsList = Provider.of<ProjectProvider>(context).fetchProjects();

    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1.0),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(
            title: 'حجز وحده',
            isadd: true,
          )),
      body: Container(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
                child: Column(
            
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.centerRight,
                child: Text(
                  'إسم المشروع',
                  style: myTextStyle(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                height: 50,
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(color: Colors.white),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: FutureBuilder<List<Project>>(
                      future: projectsList,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return DropdownButton(
                            style: myTextStyle() ,
                            value:selectedProjectName ,


                            onChanged: (x) {
                              setState(() {
                                selectedProjectid=x;
                                selectedProjectName=x;
                              });
                              print(selectedProjectid);
                            },
                            isExpanded: true,
                            items: snapshot.data.map((item) {
                              return DropdownMenuItem(
                                child: new Text(
                               item.title,
                                style: myTextStyle(),
                                ),
                                value: item.id+'-'+item.title,
                              );
                            }).toList(),
                          );
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        }
                        return Center(
                          child: SizedBox(
                            height: 12,
                            width: 12,
                            child: CircularProgressIndicator(
                              strokeWidth: 1.2,
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
