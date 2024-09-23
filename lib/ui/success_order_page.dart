part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  const SuccessOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IllustrationPage(
      title: 'You`ve Made Order',
      subTitle: 'Just stay at home while we are\npreparing your best food',
      picturePath: 'assets/bike.png',
      buttonTap1: (){},
      buttonTap2: (){},
      buttonTitle1: 'Order Other Foods',
      buttonTitle2: 'View Other Foods',
    );
  }
}
