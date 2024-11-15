import 'package:flutter/material.dart';

part of 'pages.dart';

class MutasiPage extends StatefulWidget {
  const MutasiPage({super.key});

  @override
  _MutasiPageState createState() => _MutasiPageState();
}

class _MutasiPageState extends State<MutasiPage> {
  // Contoh data mutasi transaksi yang akan ditampilkan
  final List<Map<String, dynamic>> _mutasiData = [
    {
      'Id': 1,
      'Account_Id': 'A123',
      'Transaction_Category': 'Transfer',
      'Amount': 200000,
      'In_Out': 'In',
      'Time_Stamp': '2023-10-01 10:00'
    },
    {
      'Id': 2,
      'Account_Id': 'B456',
      'Transaction_Category': 'Withdraw',
      'Amount': 150000,
      'In_Out': 'Out',
      'Time_Stamp': '2023-10-02 11:00'
    },
    {
      'Id': 3,
      'Account_Id': 'A123',
      'Transaction_Category': 'Deposit',
      'Amount': 500000,
      'In_Out': 'In',
      'Time_Stamp': '2023-10-03 12:00'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2DAD7), // Latar belakang warna beige
      appBar: AppBar(
        title: const Text(
          'Mutasi Transaksi',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xFF6582AE), // Warna biru gelap
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Riwayat Transaksi',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6582AE),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _mutasiData.length,
                itemBuilder: (context, index) {
                  final mutasi = _mutasiData[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: const Color(0xFFF5ECED),
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildRow('ID', mutasi['Id'].toString()),
                          const SizedBox(height: 5),
                          _buildRow('Account ID', mutasi['Account_Id']),
                          const SizedBox(height: 5),
                          _buildRow('Transaction Category', mutasi['Transaction_Category']),
                          const SizedBox(height: 5),
                          _buildRow('Amount', 'Rp ${mutasi['Amount']}'),
                          const SizedBox(height: 5),
                          _buildRow('In/Out', mutasi['In_Out']),
                          const SizedBox(height: 5),
                          _buildRow('Timestamp', mutasi['Time_Stamp']),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF6582AE),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Color(0xFF7FA1C4),
          ),
        ),
      ],
    );
  }
}
