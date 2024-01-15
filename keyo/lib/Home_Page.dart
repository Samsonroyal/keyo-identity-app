import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'), // Added AppBar title
        leading: Stack(
          children: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {}, // TODO: Handle notification tap
            ),
            Positioned(
              right: 8,
              top: 8,
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '4', // TODO: Replace with actual notification count
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar( // User avatar
            backgroundImage: NetworkImage('https://example.com/user_avatar.jpg'), // TODO: Replace with actual avatar URL
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // Card 1 (Credit/Debit card)
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('**** **** **** 4414'),
                    Text('Stewart Menzies'),
                    Text('04/27'),
                    Text('\$31.515'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5.0),
            // Row with two cards
            Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.file_copy),
                          Text('ID'),
                          Text('Office 8:50 AM Clock In'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.ticket),
                          Text('Tickets'),
                          Text('9:12 PM Ticket Redeemed'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            // Card 4 (Keys)
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.vpn_key),
                        // TODO: Add stacked avatar images
                      ],
                    ),
                    Text('Keys'),
                    Text('South Entrance H1'),
                    Text('12:07 PM Access Granted'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
