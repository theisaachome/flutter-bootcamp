import 'package:flutter/material.dart';

class JobDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        title: Text("Google LLc", style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      bottomSheet: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.favorite_border,
              color: Colors.red,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 42, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.red),
              child: Center(
                child: Text(
                  "Apply Now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 80,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                margin: EdgeInsets.all(32),
                child: Text(
                  "Google",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Product Designer",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "New Yokr, NY",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade50,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        "Part-Time",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    "\$60/h",
                    style: TextStyle(fontSize: 28),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
                  child: descritionWidge(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget descritionWidge(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Requirements",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 300,
          child: ListView.builder(
              itemCount: getDescription().length,
              itemBuilder: (context, index) {
                List<String> desc = getDescription();
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          color: Colors.amber, shape: BoxShape.circle),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          desc[index],
                          softWrap: true,
                        ),
                      ),
                    )
                  ],
                );
              }),
        )
      ],
    );
  }

  List<String> getDescription() {
    List<String> descriptionLIst = [
      "Exceptional communication skills and team-skills",
      "know the priciples of animation and you can create high fidelity  prototypes",
      "Direct Experience of Using Adobe Premiere",
      "Adobe After Effect and other tools used to create videos",
      "animation etc: Godd UI/UX knowledge"
    ];
    return descriptionLIst;
  }
}
