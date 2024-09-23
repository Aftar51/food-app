part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 110,
          height: 110,
          margin: EdgeInsets.only(top: 26),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/photo_border.png'),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(  
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    'assets/profile.JPG'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
