/// Support for doing something awesome.
///
/// More dartdocs go here.
library digittowords;

export 'src/digittowords_base.dart';

// TODO: Export any libraries intended for clients of this package.
Future<String> digitToWords(double amount) async {
    try {
      int amountInt = amount.toInt();
      int amountDec = ((amount - amountInt) * 100).round();
      if (amountDec == 0) {
        return "${await convert(amountInt)} Only.";
      } else {
        return "${await convert(amountInt)} Taka And ${await convert(amountDec)} Poisa Only.";
      }
    } catch (e) {
      // TODO: handle exception
    }
    return "";
  }

  Future<String> convert(int i) async {
    if (i < 20) {
      return units[i]!;
    }
    if (i < 100) {
      return "${tens[i ~/ 10]!}${(i % 10 > 0) ? " ${await convert(i % 10)}" : ""}";
    }
    if (i < 1000) {
      return "${units[i ~/ 100]!} Hundred"
          "${(i % 100 > 0) ? " And ${await convert(i % 100)}" : ""}";
    }
    if (i < 100000) {
      return "${await convert(i ~/ 1000)} Thousand "
          "${(i % 1000 > 0) ? " ${await convert(i % 1000)}" : ""}";
    }
    if (i < 10000000) {
      return "${await convert(i ~/ 100000)} Lakh "
          "${(i % 100000 > 0) ? " ${await convert(i % 100000)}" : ""}";
    }
    if (i < 1000000000) {
      return "${await convert(i ~/ 10000000)} Crore "
          "${(i % 10000000 > 0) ? " ${await convert(i % 10000000)}" : ""}";
    }
    return "${await convert(i ~/ 1000000000)} Arab "
        "${(i % 1000000000 > 0) ? " ${await convert(i % 1000000000)}" : ""}";
  }

  Map<int, String?> units = {
    0: "Zero",
    1: "One",
    2: "Two",
    3: "Three",
    4: "Four",
    5: "Five",
    6: "Six",
    7: "Seven",
    8: "Eight",
    9: "Nine",
    10: "Ten",
    11: "Eleven",
    12: "Twelve",
    13: "Thirteen",
    14: "Fourteen",
    15: "Fifteen",
    16: "Sixteen",
    17: "Seventeen",
    18: "Eighteen",
    19: "Nineteen",
  };

  Map<int, String?> tens = {
    0: "",
    1: "",
    2: "Twenty",
    3: "Thirty",
    4: "Forty",
    5: "Fifty",
    6: "Sixty",
    7: "Seventy",
    8: "Eighty",
    9: "Ninety",
  };