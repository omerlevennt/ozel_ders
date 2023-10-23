import 'package:ozel_ders/product/utility/constants/image_constants.dart';

class OnBoardModel {
  OnBoardModel({
    required this.imagePath,
    required this.title,
    required this.description,
  });
  final String imagePath;
  final String title;
  final String description;

  static List<OnBoardModel> onBoardItems = [
    OnBoardModel(
      imagePath: ImageConstants.icFirstOnBoard,
      title: 'Konumuna en yakın öğretmene ulaş',
      description:
          'Alanında uzman 250+kategoride özel ders alabileceğin bir öğretmene ihtiyacın mı var? O halde doğru adrestesin!',
    ),
    OnBoardModel(
      imagePath: ImageConstants.icSecondOnBoard,
      title: 'Hızlıca ders talebi oluştur',
      description:
          'Öğretmenlerin tecrübeleri, uzman olduğu alanlar, ders verdiği yerler, tanıtım videosu, üniversite bilgisi, saatlik olarak ders ücreti vb. gibi bilgilerine sayfamız üzerinden ulaşabilirsiniz.',
    ),
    OnBoardModel(
      imagePath: ImageConstants.icThirdOnBoard,
      title: 'Öğretmenlerle görüş alternatif belirle',
      description:
          'Öğretmenlerin tecrübeleri, uzman olduğu alanlar, ders verdiği yerler, tanıtım videosu, üniversite bilgisi, saatlik olarak ders ücreti vb. gibi bilgilerine sayfamız üzerinden ulaşabilirsiniz.',
    ),
  ];
}
