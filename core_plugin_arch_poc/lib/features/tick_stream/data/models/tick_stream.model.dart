import 'package:core_plugin_arch_poc/core/data/base.data.dart';

class TickStreamModel extends BaseDataModel {
  TickStreamModel({
    required this.ask,
    required this.bid,
    required this.epoch,
    required this.id,
    required this.pipSize,
    required this.quote,
    required this.symbol,
  });

  final double ask;
  final double bid;
  final int epoch;
  final String id;
  final int pipSize;
  final double quote;
  final String symbol;

  TickStreamModel.fromJson(Map<String, dynamic> json)
      : ask = json['ask'].toDouble(),
        bid = json['bid'].toDouble(),
        epoch = json['epoch'],
        id = json['id'],
        pipSize = json['pip_size'].toDouble().toInt(),
        quote = json['quote'].toDouble(),
        symbol = json['symbol'];

  Map<String, dynamic> toJson() => <String, dynamic>{
        'ask': ask,
        'bid': bid,
        'epoch': epoch,
        'id': id,
        'pip_size': pipSize,
        'quote': quote,
        'symbol': symbol,
      };
}
