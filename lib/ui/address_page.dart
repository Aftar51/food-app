part of 'pages.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController houseNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "Profile",
      subtitle: "Make Sure It's Valid",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
          // Gambar
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
                      'https://ui-avatars.com/api/?name=Aftar+Darda'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Text Address
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
              defaultMargin,
              26,
              defaultMargin,
              6,
            ),
            child: Text(
              'Address',
              style: blackFontStyle2,
            ),
          ),
          // Feald Address
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type Your Address',
                hintStyle: greyFontSytle,
              ),
            ),
          ),
          // Phone Number
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
              defaultMargin,
              10,
              defaultMargin,
              6,
            ),
            child: Text(
              'Phone Number',
              style: blackFontStyle2,
            ),
          ),
          // Feald Phone Number
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type Your Phone Number',
                hintStyle: greyFontSytle,
              ),
            ),
          ),
          // House Number
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
              defaultMargin,
              10,
              defaultMargin,
              6,
            ),
            child: Text(
              'House Number',
              style: blackFontStyle2,
            ),
          ),
          // Feald House Number
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: houseNumberController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type Your House Number',
                hintStyle: greyFontSytle,
              ),
            ),
          ),
          // City
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
              defaultMargin,
              10,
              defaultMargin,
              6,
            ),
            child: Text(
              'City',
              style: blackFontStyle2,
            ),
          ),
          // Feald City
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.black),
            ),
            child: DropdownButton(
              items: [
                DropdownMenuItem(
                  child: Text(
                    'Bandung',
                  ),
                  value: "Bandung",
                ),
                DropdownMenuItem(
                  child: Text(
                    'Cirebon',
                  ),
                  value: "Cirebon",
                ),
                DropdownMenuItem(
                  child: Text(
                    'Palembang',
                  ),
                  value: "Palembang",
                ),
                DropdownMenuItem(
                  child: Text(
                    'Batam',
                  ),
                  value: "Batam",
                ),
                DropdownMenuItem(
                  child: Text(
                    'Bekasi',
                  ),
                  value: "Bekasi",
                ),
              ],
              onChanged: (item){},
              isExpanded: true,
              underline: SizedBox(),
            ),
          ),
          // Button Create
          Container(
            width: double.infinity,
            height: 45,
            margin: EdgeInsets.only(top: 24),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
              onPressed: () {
                Get.to(() => MainPage());
              },
              child: Text(
                "Create Account",
                style: blackFontStyle3.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
