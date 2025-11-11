import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const InstagramPostUI());
}

class InstagramPostUI extends StatelessWidget {
  const InstagramPostUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Post UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
        scaffoldBackgroundColor: const Color(0xFFF8F8F8),
      ),
      home: const InstagramFeed(),
    );
  }
}

class InstagramFeed extends StatelessWidget {
  const InstagramFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              // ✅ Header
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Instagram',
                      style: GoogleFonts.roboto(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.favorite_border,
                          size: 28,
                          color: Colors.black,
                        ),
                        SizedBox(width: 16),
                        Icon(
                          Icons.chat_bubble_outline,
                          size: 26,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // ✅ Post Card
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 🔹 Post Header
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 10,
                          ),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://i.pravatar.cc/150?img=3',
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'johndoe',
                                style: GoogleFonts.roboto(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                              const Icon(Icons.more_vert, color: Colors.black),
                            ],
                          ),
                        ),

                        // 🔹 Post Image (Gradient background + Camera icon)
                        Container(
                          height: 300,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFFFC371), Color(0xFFFF5F6D)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              FontAwesomeIcons.cameraRetro,
                              color: Colors.black87,
                              size: 60,
                            ),
                          ),
                        ),

                        // 🔹 Post Actions
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 8.0,
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.favorite, size: 28, color: Colors.red),
                              SizedBox(width: 16),
                              Icon(
                                Icons.mode_comment_outlined,
                                size: 26,
                                color: Colors.black,
                              ),
                              SizedBox(width: 16),
                              Icon(
                                FontAwesomeIcons.paperPlane,
                                size: 24,
                                color: Colors.black,
                              ),
                              Spacer(),
                              Icon(
                                Icons.bookmark_border,
                                size: 28,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),

                        // 🔹 Likes Count
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            '1,234 likes',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),

                        // 🔹 Caption
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 8.0,
                          ),
                          child: RichText(
                            text: TextSpan(
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              children: const [
                                TextSpan(
                                  text: 'johndoe ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: 'Beautiful sunset today! 🌅 '),
                                TextSpan(
                                  text: '#photography #nature',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
