part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key, required this.transaction});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Payment',
      subtitle: 'You deserve better meal',
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Header
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            padding: EdgeInsets.symmetric(horizontal: 12),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Item Orders',
                  style: blackFontStyle3.copyWith(fontSize: 16),
                ),
                SizedBox(height: 12),
                Row(
                  children: <Widget>[
                    // Food Information
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                          image: DecorationImage(
                              image: NetworkImage(
                                  transaction.food!.picturePath!))),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 189,
                          child: Text(
                            transaction.food!.name!,
                            style: blackFontStyle2,
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        Text(
                          NumberFormat.currency(
                            symbol: 'IDR ',
                            decimalDigits: 0,
                            locale: 'id_ID',
                          ).format(transaction.food!.price),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Text(
                        '${transaction.quantity} item(s)',
                        style: greyFontSytle.copyWith(
                          fontSize: 13,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                // Detail Transaction
                SizedBox(height: 12),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                Text(
                  'Details Transaction',
                  style: blackFontStyle3.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      transaction.food!.name!,
                      style: blackFontStyle3,
                    ),
                    Spacer(),
                    Text(
                      NumberFormat.currency(
                        symbol: 'IDR ',
                        decimalDigits: 0,
                        locale: 'id_ID',
                      ).format(transaction.food!.price),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Quantity',
                      style: blackFontStyle3,
                    ),
                    Spacer(),
                    Text(
                      '${transaction.quantity.toString()} item(s)',
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Sub Total',
                      style: blackFontStyle3,
                    ),
                    Spacer(),
                    Text(NumberFormat.currency(
                      symbol: 'IDR ',
                      decimalDigits: 0,
                      locale: 'id_ID',
                    ).format(transaction.food!.price! * transaction.quantity!)),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Tax 10%',
                      style: blackFontStyle3,
                    ),
                    Spacer(),
                    Text(
                      NumberFormat.currency(
                        symbol: 'IDR ',
                        decimalDigits: 0,
                        locale: 'id_ID',
                      ).format(
                        transaction.food!.price! * transaction.quantity! * 0.1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Driver',
                      style: blackFontStyle3,
                    ),
                    Spacer(),
                    Text(
                      NumberFormat.currency(
                        symbol: 'IDR ',
                        decimalDigits: 0,
                        locale: 'id_ID',
                      ).format(50000),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Total',
                      style: blackFontStyle2,
                    ),
                    Spacer(),
                    Text(
                      NumberFormat.currency(
                        symbol: 'IDR ',
                        decimalDigits: 0,
                        locale: 'id_ID',
                      ).format(
                        transaction.total,
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                Text(
                  'Delever To',
                  style: blackFontStyle3,
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Nama Penerima:',
                      style: blackFontStyle3,
                    ),
                    Spacer(),
                    Text(
                      '${mockUser.name!}',
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Email Penerima:',
                      style: blackFontStyle3,
                    ),
                    Spacer(),
                    Text(
                      '${mockUser.email!}',
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Phone Number:',
                      style: blackFontStyle3,
                    ),
                    Spacer(),
                    Text(
                      '${mockUser.phoneNumber!}',
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Address:',
                      style: blackFontStyle3,
                    ),
                    Spacer(),
                    Text(
                      '${mockUser.address!}',
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'House Number:',
                      style: blackFontStyle3,
                    ),
                    Spacer(),
                    Text(
                      '${mockUser.houseNumber!}',
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'City:',
                      style: blackFontStyle3,
                    ),
                    Spacer(),
                    Text(
                      '${mockUser.city!}',
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Order Now',
                      style: blackFontStyle3.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
