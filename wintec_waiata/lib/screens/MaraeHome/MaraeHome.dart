import 'package:flutter/material.dart';
import 'package:wintec_waiata/screens/MaraeHome/MaraeContent.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';

class MaraeHome extends StatelessWidget {
  MaraeHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        title: Text(
          "Te Kōpū Mānia o Kirikiriroa",
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
      body: Container(
        //TODO: figure out sizing of cards
        child: CustomScrollView(
          slivers: <Widget>[
            SliverGrid(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              delegate: SliverChildListDelegate(
                [
                  MaraeContent(
                    "Marae info", "assets/images/image2.jpg", "maraeInfo"),
                  MaraeContent(//changed to marae info until complete
                    "Carvings", "assets/images/image2.jpg", "maraeInfo"),
                  MaraeContent(
                    "Protocols", "assets/images/image2.jpg", 'protocols'),
                  MaraeContent(
                    "Bookings", "assets/images/image2.jpg", "booking"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
