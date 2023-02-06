enum HomeStatus { done, current, disable }

class HomeMenu {
  final String icon;
  final String title;
  HomeStatus status; // done , current, disable

  HomeMenu(this.icon, this.title, [this.status = HomeStatus.disable]);
}
