import 'Package:flutter/material.dart';
import 'package:Sela/Models/Project.Model.dart';

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
  List<DropdownMenuItem<dynamic>>  selectFloorList = [ DropdownMenuItem(
              child: Text('Item 1'),
              value:1,
            )];
  var selectrdFloorNum;
  static Floors fff = new Floors(
      area: 5,
      finishingLevel: '',
      floor: 5,
      id: 'kk',
      modelPlan: ['f', 'f'],
      name: 'll',
      number: 5,
      projectId: 'vv',
      totalPrice: 555,
      unitStatus: 'hh',
      unitType: 'ff');
  List<Floors> models = [
    fff,
  ];

  String selectedModelId;

  TextStyle myTextStyle1() {
    return TextStyle(
      color: Colors.black,
      fontFamily: 'DroidKufi',
      fontWeight: FontWeight.normal,
      fontSize: 10,
    );
  }

  TextStyle myTextStyle2() {
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
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: FutureBuilder<List<Project>>(
                future: projectsList,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.centerRight,
                        child: Text(
                          'إسم المشروع',
                          style: myTextStyle1(),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20, left: 20),
                        height: 50,
                        width: MediaQuery.of(context).size.width * .9,
                        decoration: BoxDecoration(color: Colors.white),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            style: myTextStyle2(),
                            value: selectedProjectid,
                            onChanged: (x) {
                              print("object");
                              setState(() {
                                selectedProjectid = x;
                                print(selectedProjectid);
                                var a = snapshot.data
                                    .where((e) => e.sId == selectedProjectid)
                                    .map((e) {
                                  return e.floorsTotal;
                                });

                                int j = a.elementAt(0);

                                setState(() {
                                  selectFloorList.clear();
                                  for (int i = 1; i <= j; i++) {
                                    var hhh= DropdownMenuItem(
              child: Text('$i'),
              value: i,
            );
                                    selectFloorList.add(hhh);
                                  }

                                  print(selectFloorList);
                                });
                              });
                            },
                            isExpanded: true,
                            items: snapshot.data.map((item) {
                              return DropdownMenuItem(
                                child: new Text(
                                  item.title,
                                  style: myTextStyle2(),
                                ),
                                value: item.sId,
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.centerRight,
                        child: Text(
                          'رقم الطابق',
                          style: myTextStyle1(),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20, left: 20),
                        height: 50,
                        width: MediaQuery.of(context).size.width * .9,
                        decoration: BoxDecoration(color: Colors.white),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              style: myTextStyle2(),
                              value:selectrdFloorNum,
                              onChanged: (x) {
                                setState(() {
                                  selectrdFloorNum = (x);
                                  print(selectrdFloorNum);
                                  var pro = snapshot.data
                                      .where((e) => e.sId == selectedProjectid);
                                  Project proj = pro.elementAt(0);
                                  Iterable<Floors> floors = proj.floors.where(
                                      (element) =>
                                          element.floor == selectrdFloorNum);
                                  print(floors);

                                  floors.forEach((element) {
                                    models.add(element);
                                  });
                                  print(models);
                                });
                              },
                              isExpanded: true,
                              items: selectFloorList,
                              // selectFloorList.map((item) {
                              //   return DropdownMenuItem(
                              //     child: new Text(
                              //       item.toString(),
                              //       style: myTextStyle2(),
                              //     ),
                              //     value: item,
                              //   );
                              // }).toList()
                              ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.centerRight,
                        child: Text(
                          'اسم النموذج',
                          style: myTextStyle1(),
                        ),
                      ),
                      models == null
                          ? Container(
                              child: Text('data'),
                            )
                          : Container(
                              margin: EdgeInsets.only(right: 20, left: 20),
                              height: 50,
                              width: MediaQuery.of(context).size.width * .9,
                              decoration: BoxDecoration(color: Colors.white),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                    style: myTextStyle2(),
                                    value: selectrdFloorNum,
                                    onChanged: (x) {
                                      setState(() {
                                        selectedModelId = x;
                                        print(selectedModelId);
                                      });
                                    },
                                    isExpanded: true,
                                    items: models.map((item) {
                                      return DropdownMenuItem(
                                        child: new Text(
                                          item.name,
                                          style: myTextStyle2(),
                                        ),
                                        value: item.id,
                                      );
                                    }).toList()),
                              ),
                            ),
                    ]);
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
      ),
    );
  }
}
