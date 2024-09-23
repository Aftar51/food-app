part of 'pages.dart';

class IllustrationPage extends StatelessWidget {
  const IllustrationPage({
    super.key,
    required this.title,
    required this.subTitle,
    required this.picturePath,
    required this.buttonTitle1,
    this.buttonTitle2,
    required this.buttonTap1,
    this.buttonTap2,
  });

  final String title;
  final String subTitle;
  final String picturePath;
  final String buttonTitle1;
  final String? buttonTitle2;
  final Function buttonTap1;
  final Function? buttonTap2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              picturePath,
              width: 240,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: blackFontStyle1.copyWith(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                subTitle,
                style: greyFontSytle.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                buttonTap1();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: mainColor,
              ),
              child: Text(buttonTitle1),
            ),
            (buttonTap2 == null)
                ? SizedBox()
                : ElevatedButton(
                    onPressed: () {
                      buttonTap2!();
                    },
                    child: Text(buttonTitle2!),
                  ),
          ],
        ),
      ),
    );
  }
}
