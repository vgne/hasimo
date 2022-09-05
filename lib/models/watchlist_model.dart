class WatchlistDataModel {
  final String ticker;
  final double price;
  final int days;
  final String performance;

  WatchlistDataModel(
      {required this.ticker,
      required this.price,
      required this.days,
      required this.performance});
}
