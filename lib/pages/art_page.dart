import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

List<String> _list = [
  "https://firebasestorage.googleapis.com/v0/b/portfolio-99766.appspot.com/o/arts%2FIMG_20190726_004329%20(1).jpg?alt=media&token=2f7f196d-225d-473d-9093-85f363f9ca08",
  "https://firebasestorage.googleapis.com/v0/b/portfolio-99766.appspot.com/o/arts%2FIMG_20191021_140849%20(1).jpg?alt=media&token=aad547a9-03bd-4811-977b-06924ffbf0ac",
  "https://firebasestorage.googleapis.com/v0/b/portfolio-99766.appspot.com/o/arts%2FIMG_20191102_183725%20(1).jpg?alt=media&token=4438162b-3857-48b6-906c-29d6b3ad0843",
  "https://firebasestorage.googleapis.com/v0/b/portfolio-99766.appspot.com/o/arts%2FIMG_20190727_005045%20(1).jpg?alt=media&token=fdf2dc12-dd53-42e3-87c8-a137c1ef68a8",
  "https://firebasestorage.googleapis.com/v0/b/portfolio-99766.appspot.com/o/arts%2FIMG_20191102_165228%20(1).jpg?alt=media&token=1d8240a1-6df5-4857-9201-7bfc0aab1ad3",
  "https://firebasestorage.googleapis.com/v0/b/portfolio-99766.appspot.com/o/arts%2FIMG_20190817_014151%20(1).jpg?alt=media&token=84f8fa85-9950-4006-b4e6-9dad5bec037f",
  "https://firebasestorage.googleapis.com/v0/b/portfolio-99766.appspot.com/o/arts%2FIMG_20190722_232805.jpeg?alt=media&token=7c636d81-09cd-4ffd-ae5c-68608dbe08e4",
  "https://firebasestorage.googleapis.com/v0/b/portfolio-99766.appspot.com/o/arts%2FIMG_20190621_165222.jpeg?alt=media&token=9610d0ca-f8ed-4b27-8a96-5bd550bf01a5",
  "https://firebasestorage.googleapis.com/v0/b/portfolio-99766.appspot.com/o/arts%2FIMG_20190505_185546.jpeg?alt=media&token=5db9e829-7c92-400d-be5b-7efb11cc5dbe",
  "https://firebasestorage.googleapis.com/v0/b/portfolio-99766.appspot.com/o/arts%2FIMG_20190430_083859_249.jpeg?alt=media&token=494265bb-2c51-48a2-bc15-4f1b622e9955",
  "https://firebasestorage.googleapis.com/v0/b/portfolio-99766.appspot.com/o/arts%2FIMG_20190425_113003_895.jpeg?alt=media&token=038f3ba4-e67f-4445-92dc-37497b335dfe",
  "https://firebasestorage.googleapis.com/v0/b/portfolio-99766.appspot.com/o/arts%2FIMG_20190425_073959_358.jpeg?alt=media&token=d83f4da4-4f5a-40a0-a088-cfa8d130fcb5",
  "https://firebasestorage.googleapis.com/v0/b/portfolio-99766.appspot.com/o/arts%2FIMG_20190424_214848_071.jpeg?alt=media&token=7c5cea07-ba41-4350-8d3e-e45d7c5707b0",
];

class ArtPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 0,
                child: Opacity(
                  opacity: 0.6,
                  child: Image.asset(
                    'assets/images/intro/footer.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              ListView(
                children: <Widget>[
                  SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      "MY ARTWORKS and SKETCHES",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  GridView(
                    shrinkWrap: true,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1.0,
                    ),
                    children: <Widget>[
                      for (var url in _list)
                        InkWell(
                          child: ExtendedImage.network(
                            url,
                            fit: BoxFit.cover,
                            cache: true,
                          ),
                          onTap: () {
                            _onImageTap(url, context);
                          },
                        ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        /* Image.asset(
          'assets/images/skills/bike.jpg',
        ),*/
      ],
    );
  }

  void _onImageTap(String url, BuildContext context) {
    showDialog(
      context: context,
      child: SimpleDialog(
        contentPadding: EdgeInsets.all(16),
        children: <Widget>[
          Stack(
            children: <Widget>[
              ExtendedImage.network(
                url,
                fit: BoxFit.cover,
                cache: true,
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Material(
                  color: Colors.transparent,
                  type: MaterialType.circle,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
