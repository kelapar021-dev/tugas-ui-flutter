import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram UI',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, dynamic>> posts = [
    {
      'username': 'Rayhan Gondrong',
      'profile': 'assets/images/ab.jpeg',
      'post': 'assets/images/ae.png',
      'caption': 'Bro salah masker 😭',
      'likes': '1.245 suka',
    },
    {
      'username': 'Syafiq Darah Muda',
      'profile': 'assets/images/au.jpeg',
      'post': 'assets/images/ac.jpeg',
      'caption': 'Rayhan mode sigma 😎',
      'likes': '980 suka',
    },
    {
      'username': 'brigittenr',
      'profile': 'assets/images/ad.jpeg',
      'post': 'assets/images/af.jpeg',
      'caption': 'Di pantai bersama my suami 🌴',
      'likes': '2.310 suka',
    },
     {
      'username': 'brigittenr',
      'profile': 'assets/images/ad.jpeg',
      'post': 'assets/images/ai.jpeg',
      'caption': 'my suami 🌴',
      'likes': '2.310 suka',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // ================= APPBAR =================
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        title: const Text(
          'Instagram',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),

        actions: const [

          Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),

          SizedBox(width: 18),

          Icon(
            Icons.send,
            color: Colors.black,
          ),

          SizedBox(width: 16),
        ],
      ),

      // ================= BODY =================
      body: ListView(
        children: [

          // ================= STORIES =================
          SizedBox(
            height: 120,

            child: ListView(
              scrollDirection: Axis.horizontal,

              children: const [

                StoryItem(
                  username: 'Dewa.kunci.stang',
                  image: 'assets/images/ah.jpeg',
                ),

                StoryItem(
                  username: 'Rayhan Gondrong',
                  image: 'assets/images/ab.jpeg',
                ),

                StoryItem(
                  username: 'Syafiq Darah Muda',
                  image: 'assets/images/au.jpeg',
                ),

                StoryItem(
                  username: '.tiup.balon.akmal',
                  image: 'assets/images/ag.jpeg',
                ),
              ],
            ),
          ),

          const Divider(),

          // ================= POSTS =================
          ...posts.map((post) {

            return Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                // ================= HEADER =================
                ListTile(

                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage(post['profile']),
                  ),

                  title: Text(
                    post['username'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  subtitle: const Text(
                    'Surabaya, Indonesia',
                    style: TextStyle(fontSize: 12),
                  ),

                  trailing:
                      const Icon(Icons.more_vert),
                ),

                // ================= FOTO POST =================
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),

                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(18),

                    child: Container(
                      color: Colors.black12,

                      child: Image.asset(
                        post['post'],

                        width: double.infinity,

                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),

                // ================= ICON =================
                Padding(
                  padding:
                      const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 10,
                  ),

                  child: Row(
                    children: const [

                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),

                      SizedBox(width: 16),

                      Icon(Icons.chat_bubble_outline),

                      SizedBox(width: 16),

                      Icon(Icons.send),

                      Spacer(),

                      Icon(Icons.bookmark_border),
                    ],
                  ),
                ),

                // ================= LIKE =================
                Padding(
                  padding:
                      const EdgeInsets.symmetric(
                    horizontal: 14,
                  ),

                  child: Text(
                    post['likes'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 4),

                // ================= CAPTION =================
                Padding(
                  padding:
                      const EdgeInsets.symmetric(
                    horizontal: 14,
                  ),

                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),

                      children: [

                        TextSpan(
                          text:
                              '${post['username']} ',
                          style: const TextStyle(
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),

                        TextSpan(
                          text: post['caption'],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            );
          }).toList(),
        ],
      ),

      // ================= BOTTOM NAVBAR =================
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage(
                'assets/images/ad.jpeg',
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

// ================= STORY WIDGET =================
class StoryItem extends StatelessWidget {

  final String username;
  final String image;

  const StoryItem({
    super.key,
    required this.username,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:
          const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),

      child: Column(
        children: [

          // BORDER STORY
          Container(
            padding: const EdgeInsets.all(3),

            decoration: const BoxDecoration(

              shape: BoxShape.circle,

              gradient: LinearGradient(
                colors: [
                  Colors.purple,
                  Colors.orange,
                ],
              ),
            ),

            child: CircleAvatar(
              radius: 32,
              backgroundColor: Colors.white,

              child: CircleAvatar(
                radius: 29,
                backgroundImage:
                    AssetImage(image),
              ),
            ),
          ),

          const SizedBox(height: 5),

          Text(
            username,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}