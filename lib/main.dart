import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContactScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://unsplash.com',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0.0, -60),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 62,
                    backgroundColor: Colors.white,
                    child: const CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                        'https://i.pinimg.com/474x/c3/a6/b2/c3a6b2e4a47139b49f3cba44a4d5799a.jpg',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Rebecca Chambers',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'S.T.A.R.S. Medic',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.deepOrange,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Call',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.message_outlined,
                            color: Colors.deepOrange,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Text',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.lightbulb_outline,
                            color: Colors.deepOrange,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Status',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Text(
                      'Rebecca Chambers adalah karakter fiksi dari seri permainan video survival horror Resident Evil buatan Capcom. Ia diperkenalkan sebagai karakter pendukung pada game pertama Resident Evil tahun 1996, dan menjadi karakter utama dalam prekuelnya Resident Evil 0 tahun 2002. Rebecca digambarkan sebagai anggota termuda dari unit taktis kepolisian S.T.A.R.S., dengan spesialisasi di bidang medis dan kimia. Meskipun awalnya terlihat rentan dan kurang berpengalaman, ia terbukti memiliki kecerdasan tinggi dan ketangguhan luar biasa saat menghadapi wabah virus zombie di Pegunungan Arklay. Selain sebagai petugas medis, ia juga merupakan seorang ilmuwan berbakat yang kemudian fokus pada penelitian virologi untuk menciptakan vaksin dan melawan ancaman bioterorisme global.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
