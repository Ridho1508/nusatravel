/// Model data paket wisata NusaTravel
class TourPackage {
  final String id;
  final String title;
  final String description;
  final int price;
  final String imageUrl;
  final String location;
  final String duration;
  final double rating;
  final List<String> highlights;

  const TourPackage({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.location,
    required this.duration,
    this.rating = 4.8,
    this.highlights = const [],
  });

  /// Format harga ke format Rupiah standar (contoh: Rp 2.750.000)
  /// Menggunakan regex tanpa memerlukan package eksternal
  String get formattedPrice {
    final priceStr = price.toString();
    final regex = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    final formatted = priceStr.replaceAllMapped(regex, (Match m) => '${m[1]}.');
    return 'Rp $formatted';
  }

  /// Data dummy paket wisata populer Indonesia
  static const List<TourPackage> samplePackages = [
    TourPackage(
      id: 'pkg-1',
      title: 'Eksotisme Bali & Nusa Penida',
      description:
          'Nikmati petualangan tak terlupakan menyusuri tebing Kelingking Beach, Broken Beach, snorkeling bersama manta ray di Nusa Penida, serta menikmati suasana tenang Ubud dan sunset legendaris di Pantai Tanah Lot.',
      price: 2750000,
      imageUrl:
          'https://images.unsplash.com/photo-1537996194471-e657df975ab4?auto=format&fit=crop&w=1000&q=80',
      location: 'Bali & Kepulauan Nusa',
      duration: '4 Hari 3 Malam',
      rating: 4.9,
      highlights: [
        'Snorkeling Nusa Penida',
        'Sunset di Tanah Lot',
        'Jelajah Ubud & Monkey Forest',
        'Penginapan Bintang 4 & Transportasi Penuh',
      ],
    ),
    TourPackage(
      id: 'pkg-2',
      title: 'Surga Bahari Raja Ampat',
      description:
          'Jelajahi kepulauan karang paling spektakuler di dunia. Berlayar melintasi gugusan pulau karang Pianemo, Wayag, diving di terumbu karang kelas dunia, dan berinteraksi hangat dengan masyarakat desa Sawinggrai.',
      price: 6850000,
      imageUrl:
          'https://images.unsplash.com/photo-1516690561799-46d8f74f9abf?auto=format&fit=crop&w=1000&q=80',
      location: 'Papua Barat Daya',
      duration: '5 Hari 4 Malam',
      rating: 5.0,
      highlights: [
        'Puncak Pianemo & Wayag',
        'Diving & Snorkeling Spot Manta',
        'Liveaboard & Resort Apung Eksklusif',
        'Pemandu Lokal Berlisensi Resmi',
      ],
    ),
    TourPackage(
      id: 'pkg-3',
      title: 'Sunrise Bromo & Air Terjun Madakaripura',
      description:
          'Saksikan momen golden sunrise yang magis di Penanjakan Gunung Bromo, mendaki ke bibir kawah aktif dengan jeep 4x4, menyeberangi lautan pasir Pasir Berbisik, dan mengagumi kemegahan air terjun Madakaripura.',
      price: 1450000,
      imageUrl:
          'https://images.unsplash.com/photo-1588668214407-6ea9a6d8c272?auto=format&fit=crop&w=1000&q=80',
      location: 'Taman Nasional Bromo Tengger',
      duration: '2 Hari 1 Malam',
      rating: 4.8,
      highlights: [
        'Sewa Jeep 4x4 Eksklusif Bromo',
        'Golden Sunrise Penanjakan 1',
        'Kawah Aktif & Bukit Teletubbies',
        'Air Terjun Madakaripura Gajah Mada',
      ],
    ),
    TourPackage(
      id: 'pkg-4',
      title: 'Petualangan Labuan Bajo & Komodo',
      description:
          'Berlayar dengan kapal Phinisi mengelilingi perairan Flores, mendaki puncak Pulau Padar untuk pemandangan 3 teluk legendaris, berjumpa satwa purba Komodo di Pulau Rinca, dan bersantai di Pink Beach yang mempesona.',
      price: 4250000,
      imageUrl:
          'https://images.unsplash.com/photo-1518548419970-58e3b4079ab2?auto=format&fit=crop&w=1000&q=80',
      location: 'Labuan Bajo, Flores, NTT',
      duration: '3 Hari 2 Malam',
      rating: 4.9,
      highlights: [
        'Sailing Kapal Phinisi AC',
        'Trekking Puncak Pulau Padar',
        'Habitat Alami Komodo Dragon',
        'Snorkeling Taka Makassar & Pink Beach',
      ],
    ),
    TourPackage(
      id: 'pkg-5',
      title: 'Pesona Budaya Yogyakarta & Borobudur',
      description:
          'Rasakan kehangatan keramahan Jawa di Yogyakarta. Kagumi arsitektur megah Candi Borobudur saat fajar, eksplorasi Candi Prambanan, jelajah keunikan Keraton Yogyakarta, dan berburu kuliner malam di sepanjang jalan Malioboro.',
      price: 1650000,
      imageUrl:
          'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?auto=format&fit=crop&w=1000&q=80',
      location: 'DI Yogyakarta & Magelang',
      duration: '3 Hari 2 Malam',
      rating: 4.8,
      highlights: [
        'Akses Sunrise Candi Borobudur',
        'Kompleks Candi Hindu Prambanan',
        'Tour Keraton & Tamansari Water Castle',
        'Transportasi AC & Pemandu Budaya',
      ],
    ),
  ];
}