import 'package:material_ui/material_ui.dart';
import 'screens/library_screen.dart';


void main() {
  runApp(const ZettaiDexApp());
}

class ZettaiDexApp extends StatelessWidget {
  const ZettaiDexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZettaiDex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0E0B1A),
        primaryColor: const Color(0xFF7B2CBF),
      ),
      // Screen 1: Home / Discover (Active by default)
      home: const LibraryScreen(),
      // Screen 2: Library (Uncomment below and comment HomeScreen above to capture Screen 2)
      // home: const LibraryScreen(),
    );
  }
}