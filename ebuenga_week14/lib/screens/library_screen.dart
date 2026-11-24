import 'package:material_ui/material_ui.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0B1A),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Library',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '4 Saved Series • 2 Unread Updates',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white60,
                        ),
                      ),
                    ],
                  ),
                  ClipOval(
                    child: Image.asset(
                      'assets/images/logo.jpg',
                      width: 38,
                      height: 38,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),

              // Filter Tabs Row
              Row(
                children: [
                  _buildTabChip('Reading (4)', isActive: true),
                  const SizedBox(width: 8),
                  _buildTabChip('Completed'),
                  const SizedBox(width: 8),
                  _buildTabChip('Plan to Read'),
                ],
              ),
              const SizedBox(height: 18),

              // Library List Items
              _buildLibraryItem(
                title: 'Bleach',
                subtitle: 'Thousand-Year Blood War Arc',
                progressText: 'Ch. 612 / 686',
                badgeText: 'NEW',
                imagePath: 'assets/images/bleach.jpg',
              ),
              const SizedBox(height: 12),
              _buildLibraryItem(
                title: 'Chainsmoker Cat',
                subtitle: 'Latest: Chapter 48',
                progressText: 'Ch. 48 / 48',
                badgeText: 'UP TO DATE',
                imagePath: 'assets/images/chainsmoker_cat.jpg',
              ),
              const SizedBox(height: 12),
              _buildLibraryItem(
                title: 'My Hero Academia',
                subtitle: 'Final Act Saga',
                progressText: 'Ch. 418 / 430',
                badgeText: '+12 CH',
                imagePath: 'assets/images/mha.jpg',
              ),
              const SizedBox(height: 12),
              _buildLibraryItem(
                title: 'Naruto',
                subtitle: 'Fourth Shinobi World War',
                progressText: 'Ch. 700 / 700',
                badgeText: 'DONE',
                imagePath: 'assets/images/naruto.jpg',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          color: Color(0xFF18122B),
          border: Border(top: BorderSide(color: Color(0xFF2B214A), width: 1)),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.explore_rounded, color: Colors.white54, size: 24),
                SizedBox(height: 4),
                Text('Discover', style: TextStyle(fontSize: 11, color: Colors.white54)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.bookmarks_rounded, color: Color(0xFFC77DFF), size: 24),
                SizedBox(height: 4),
                Text(
                  'Library',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFC77DFF),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.history_rounded, color: Colors.white54, size: 24),
                SizedBox(height: 4),
                Text('History', style: TextStyle(fontSize: 11, color: Colors.white54)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabChip(String text, {bool isActive = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF7B2CBF) : const Color(0xFF1E1736),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 13,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          color: isActive ? Colors.white : Colors.white70,
        ),
      ),
    );
  }

  Widget _buildLibraryItem({
    required String title,
    required String subtitle,
    required String progressText,
    required String badgeText,
    required String imagePath,
  }) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF18122B),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  width: 72,
                  height: 96,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 6,
                left: 6,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color(0xFF9D4EDD),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    badgeText,
                    style: const TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white60,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      progressText,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFC77DFF),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2B214A),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}