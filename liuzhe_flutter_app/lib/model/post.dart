class Post{
   Post({
    this .title,
    this.author,
    this.imageUrl,
    this.description,
});
  final String title;
  final String author;
  final String imageUrl;
  final String description;

  bool selected = false;
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
    Post(
    title: 'Tornado',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/tornado.jpg',
  ),
  Post(
    title: 'Undo',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/undo.jpg',
  ),
  Post(
    title: 'White Dragon',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/white-dragon.jpg',
  )
];