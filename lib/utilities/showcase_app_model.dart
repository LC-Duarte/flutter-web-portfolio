// A model that represents portfolio apps on landing page.
class ShowcaseAppModel {
  final String name;
  final String? appStoreURL;
  final String? playStoreURL;
  final String? githubURL;
  final String image;
  final String topic;

  const ShowcaseAppModel.withNetworkAsset({
    required this.name,
    this.appStoreURL,
    this.playStoreURL,
    this.githubURL,
    required this.image,
    required this.topic,
  }) : _isNetworkImage = true;

  const ShowcaseAppModel.withLocalAsset({
    required this.name,
    this.appStoreURL,
    this.playStoreURL,
    this.githubURL,
    required this.image,
    required this.topic,
  }) : _isNetworkImage = true;

  final bool _isNetworkImage;
  bool get isNetworkImage => _isNetworkImage;
}

// List of apps that will be listed on landing page.
const apps = [
  ShowcaseAppModel.withNetworkAsset(
    name: 'Skills',
    image: 'https://porelarte.tech/kamranbekirovcom/apps/bonaz.png',
    topic: '',
  ),
  ShowcaseAppModel.withNetworkAsset(
    name: 'Work Experience',
    image: 'https://porelarte.tech/kamranbekirovcom/apps/badamli-min.png',
    topic: '',
  ),
  ShowcaseAppModel.withNetworkAsset(
    name: 'Education',
    image: 'https://porelarte.tech/kamranbekirovcom/apps/tentony-min.png',
    topic: '',
  ),
  ShowcaseAppModel.withNetworkAsset(
    name: 'Certifications',
    image: 'assets/images/POPMbadge .png',
    topic: '',
  ),
  ShowcaseAppModel.withNetworkAsset(
    name: 'Contact information',
    image: 'https://porelarte.tech/kamranbekirovcom/apps/cib-min.png',
    topic: 'FinTech',
  ),
];
