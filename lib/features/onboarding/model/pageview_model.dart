class PageViewModel {
  final String image;
  final String title;
  final String descreipion;
  const PageViewModel(
      {required this.image, required this.title, required this.descreipion});
}

List<PageViewModel> pages = const [
  PageViewModel(
    image: 'assets/svg/onBorading1.svg',
    title: '''Explore The history with
Dalel in a smart way''',
    descreipion: ''' Using our app’s history libraries 
you can find many historical periods ''',
  ),
  PageViewModel(
    image: 'assets/svg/onBoardin2.svg',
    title: '''From every place
on earth''',
    descreipion: '''A big variety of ancient places
from all over the world''',
  ),
  PageViewModel(
    image: 'assets/svg/onBoardin3.svg',
    title: '''Using modern AI technology
for better user experience''',
    descreipion: '''AI provide recommendations and helps
you to continue the search journey''',
  ),
];
