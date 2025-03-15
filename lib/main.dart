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
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("โปรไฟล์ผู้ใช้"),
        centerTitle: false,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images.png'), // ใส่รูปในโฟลเดอร์ assets
                ),
                SizedBox(height: 10),
                Text(
                  "ชื่อผู้ใช้:Thanapat Konghorm",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "อีเมล: konghom_t@silpakorn.edu",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
                 ListTile(
                leading: Icon(Icons.settings, color: Colors.blue),
                title: Text("การตั้งค่า"),
                
                
                onTap: (
                ) {},
                ),
                 ListTile(
                leading: Icon(Icons.lock, color: Colors.blue),
                title: Text("เปลี่ยนรหัสผ่าน"),
                
                
                onTap: (
                ) {},
                ),
                 ListTile(
                leading: Icon(Icons.question_mark_rounded, color: Colors.blue),
                title: Text("ความเป็นส่วนตัว"),
                
                
                onTap: (
                ) {},
                ),
                ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
SnackBar(content: Text("แก้ไขโปรไฟล์")),
);
              },
              child: Text('แก้ไขโปรไฟล์'),
              
              
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
SnackBar(content: Text("ออกจากระบบ")),
);
              },
              child: Text('ออกจากระบบ'),
              
            ),
        
                
               
                
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}