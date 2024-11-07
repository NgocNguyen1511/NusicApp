import 'package:flutter/material.dart';

class MediaPlayerScreen extends StatelessWidget {
  const MediaPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Hình ảnh album
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(''), // Thay bằng đường dẫn hình ảnh thực tế
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Tên bài hát
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Tên Bài Hát',
                    style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Tên nghệ sĩ
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nghệ Sĩ',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Nút yêu thích
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      // Không làm gì ở đây
                    },
                  ),
                  const SizedBox(width: 20),

                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Không làm gì ở đây
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Thanh trượt âm lượng
              Slider(
                value: 50, // Giá trị mặc định của thanh trượt
                min: 0,
                max: 100,
                activeColor: Colors.green,
                inactiveColor: Colors.grey.shade400, // Màu không hoạt động của thanh trượt
                onChanged: (value) {
                  // Không làm gì ở đây
                },
              ),
              const SizedBox(height: 20),

              // Nút điều khiển
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.loop_outlined,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      // Không làm gì ở đây
                    },
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    icon: Icon(
                      Icons.play_arrow,
                      color: Colors.green,
                      size: 36,
                    ),
                    onPressed: () {
                      // Không làm gì ở đây
                    },
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    icon: Icon(
                      Icons.skip_next,
                      color: Colors.green,
                      size: 36,
                    ),
                    onPressed: () {
                      // Không làm gì ở đây
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Khung lời bài hát
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200, // Màu nền của khung lời bài hát
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SingleChildScrollView(
                  child: Text(
                    'Đây là lời bài hát được hiển thị ở đây. Bạn có thể thay đổi lời bài hát theo ý muốn. '
                        'Đây là lời bài hát được hiển thị ở đây. Bạn có thể thay đổi lời bài hát theo ý muốn. '
                        'Đây là lời bài hát được hiển thị ở đây. Bạn có thể thay đổi lời bài hát theo ý muốn.\n\n'
                        'Đây là lời bài hát được hiển thị ở đây. Bạn có thể thay đổi lời bài hát theo ý muốn. '
                        'Đây là lời bài hát được hiển thị ở đây. Bạn có thể thay đổi lời bài hát theo ý muốn. '
                        'Đây là lời bài hát được hiển thị ở đây. Bạn có thể thay đổi lời bài hát theo ý muốn.',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // Khung mô tả thông tin nghệ sĩ
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200, // Màu nền của khung mô tả thông tin nghệ sĩ
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Thông tin nghệ sĩ: Đây là mô tả về nghệ sĩ, bao gồm thông tin về sự nghiệp, '
                      'các bài hát nổi bật và nhiều điều thú vị khác.',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}