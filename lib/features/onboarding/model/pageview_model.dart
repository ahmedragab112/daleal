class PageViewModel {
  final String image;
  final String title;
  final String description;
  const PageViewModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<PageViewModel> pages = const [
  PageViewModel(
    image: "assets/svg/onBorading1.svg",
    title: "Explore The history with Dalel in a smart way",
    description: "Using our app’s history libraries you can find many historical periods",
  ),
  PageViewModel(
    image: "assets/svg/onBoardin2.svg",
    title: "From every place on earth",
    description: "A big variety of ancient places from all over the world",
  ),
  PageViewModel(
    image: "assets/svg/onBoardin3.svg",
    title: "Using modern AI technology for better user experience",
    description: "AI provide recommendations and helps you to continue the search journey",
  ),
];
