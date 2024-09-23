part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({super.key});

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int seletedIndex = 0;
  List<Transaction> inProgess = mockTransaction
      .where((e) =>
          e.status == TransactionStatus.on_delevery ||
          e.status == TransactionStatus.pending)
      .toList();
  List<Transaction> past = mockTransaction
      .where((e) =>
          e.status == TransactionStatus.canceled ||
          e.status == TransactionStatus.delivered)
      .toList();

  @override
  Widget build(BuildContext context) {

    double listItemWidth = MediaQuery.of(context).size.width - 2 * defaultMargin;

    return (inProgess.length == 0 && past.length == 0)
        ? IllustrationPage(
            title: 'Ouch! Hungry',
            subTitle: 'Seems like you have not\nordered any food yet',
            picturePath: 'assets/food_wishes.png',
            buttonTitle1: 'Find Foods',
            buttonTap1: () {},
          )
        : ListView(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  bottom: defaultMargin,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                  vertical: 15,
                ),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Orders',
                      style: blackFontStyle2,
                    ),
                    Text(
                      'Wait for the best meal',
                      style: blackFontStyle3.copyWith(
                        color: greyColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTapBar(
                      selectedIndex: seletedIndex,
                      titles: ['In Progress', 'Past Orders'],
                      onTap: (index) {
                        setState(() {
                          seletedIndex = index;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: (seletedIndex == 0 ? inProgess : past)
                          .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FoodOrderItem(
                              transaction: e,
                              itemWidth: listItemWidth,
                            ),
                          ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
