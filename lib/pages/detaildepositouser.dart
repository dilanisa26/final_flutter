part of 'pages.dart';

class DetailDepositoUserPage extends StatelessWidget {
  const DetailDepositoUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Mendapatkan data yang dikirimkan melalui arguments
    final depositoDetail = ModalRoute.of(context)!.settings.arguments as PersonalDeposito;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Deposito User'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/deposito', (route) => false);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deposit ID: ${depositoDetail.depositoId}',  // Accessing PersonalDeposito properties
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text('Account ID: ${depositoDetail.accountId}'),
            Text('Deposit Name: ${depositoDetail.depositName}'),
            Text('Amount: ${depositoDetail.amount}'),
            Text('Time Period: ${depositoDetail.timePeriod} months'),
            Text('Time Stamp: ${depositoDetail.timeStamp}'),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
