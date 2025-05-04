import 'package:flutter/material.dart';

class AuctionPage extends StatelessWidget {
  const AuctionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: const [
            Icon(Icons.gavel, color: Colors.black),
            SizedBox(width: 8),
            Text(
              'auction',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          SizedBox(height: 16),
          AuctionCard(
            brandName: 'Royal brand',
            owner: 'Mr.Sathyamoorthy',
            plan: 'Gold Plan – 5 Lakhs',
            amount: '₹500000',
            date: '03-03-2025',
          ),
          SizedBox(height: 16),
          AuctionCard(
            brandName: 'Swirl',
            owner: 'Mr.Sathyamoorthy',
            plan: 'Gold Plan – 5 Lakhs',
            amount: '₹500000',
            date: '03-03-2025',
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.home, color: Colors.white),
              Icon(Icons.show_chart, color: Colors.white),
              Icon(Icons.add, color: Colors.white),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 24,
                child: Icon(Icons.gavel, color: Colors.black),
              ),
              Icon(Icons.notifications, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}

class AuctionCard extends StatelessWidget {
  final String brandName;
  final String owner;
  final String plan;
  final String amount;
  final String date;

  const AuctionCard({
    super.key,
    required this.brandName,
    required this.owner,
    required this.plan,
    required this.amount,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Properly centered brand section
            Center(
              child: IntrinsicWidth(
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.all_inclusive, color: Colors.black),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          brandName,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          owner,
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Plan
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(6),
                  child: const Icon(Icons.adjust, color: Colors.orange),
                ),
                const SizedBox(width: 8),
                Text(
                  plan,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Amount
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(6),
                  child: const Icon(Icons.currency_rupee, color: Colors.black),
                ),
                const SizedBox(width: 8),
                Text(
                  amount,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Date + Participate button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: const Icon(Icons.calendar_today, color: Colors.black, size: 18),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      date,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.black),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  icon: const Icon(Icons.all_inclusive, color: Colors.black, size: 18),
                  label: const Text(
                    'Participate',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
