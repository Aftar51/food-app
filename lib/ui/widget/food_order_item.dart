part of 'widgets.dart';

class FoodOrderItem extends StatelessWidget {
  const FoodOrderItem({
    super.key,
    required this.transaction,
    required this.itemWidth,
  });

  final Transaction transaction;
  final double itemWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 80,
          height: 80,
          margin: EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: NetworkImage(transaction.food?.picturePath ??
                    'https://ui-avatars.com/api/?name=${transaction.food?.name}'),
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          width: itemWidth! - 180, //(80 + 12 + 90)
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction.food?.name ?? 'No Name',
                style: blackFontStyle2,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Row(
                children: [
                  Text(
                    transaction.quantity.toString() + 'item(s) ~ ',
                  ),
                  Text(
                    NumberFormat.currency(
                      symbol: 'IDR ',
                      decimalDigits: 0,
                      locale: 'id-ID',
                    ).format(transaction.total),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                convertDateTimeDisplay(transaction.dateTime!),
              ),
              (transaction.status == TransactionStatus.delivered)
                  ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green,
                      ),
                    )
                  : (transaction.status == TransactionStatus.canceled)
                      ? Container(
                          child: Text(
                            'Canceled',
                            style: blackFontStyle2.copyWith(
                              color: Colors.red,
                            ),
                          ),
                        )
                      : (transaction.status == TransactionStatus.pending)
                          ? Container(
                              child: Text(
                                'pending',
                                style: blackFontStyle2.copyWith(
                                  color: Colors.yellow,
                                ),
                              ),
                            )
                          : (transaction.status ==
                                  TransactionStatus.on_delevery)
                              ? Container(
                                  child: Text(
                                    'On Delevery',
                                    style: blackFontStyle2.copyWith(
                                      color: Colors.blue,
                                    ),
                                  ),
                                )
                              : SizedBox()
            ],
          ),
        ),
      ],
    );
  }
}
