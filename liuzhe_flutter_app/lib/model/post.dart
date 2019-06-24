class Post{
  const Post({
    this .title,
    this.author,
    this.imageUrl,
    this.description,
});
  final String title;
  final String author;
  final String imageUrl;
  final String description;
}

final List<Post> posts = [
  Post(
    title: "大侦探皮卡丘",
    author: 'Mohamed Chahin',
    description: '111222333',
    imageUrl: 'http://img3.doubanio.com/view/photo/s_ratio_poster/public/p2555538168.jpg',
  ),
  Post(
    title: "复仇者联盟4：终局之战",
    author: 'Mohamed Chahin',
    description: '111222333',
    imageUrl: 'http://img3.doubanio.com/view/photo/s_ratio_poster/public/p2552058346.jpg',
  ),
  Post(
    title: '何以为家',
    author: 'Mohamed Chahin',
    description: '111222333',
    imageUrl: 'http://img3.doubanio.com/view/photo/s_ratio_poster/public/p2555295759.jpg' ,
  ),
];