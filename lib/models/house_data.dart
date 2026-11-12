import 'house.dart';

class HouseData {
  // Getter sampleHouses agar kompatibel dengan HomeScreen dan HouseListScreen
  static List<House> get sampleHouses => getAllHouses();

  // Method utama untuk mengambil seluruh data 38 rumah adat dari 38 provinsi
  static List<House> getAllHouses() {
    return [
      // ================= SUMATRA =================
      House(
        id: '1',
        name: 'Rumoh Aceh (Rumah Krong Bade)',
        province: 'Aceh',
        tribe: 'Aceh',
        description:
            'Rumoh Aceh merupakan rumah panggung kayu bertiang tinggi (2,5 hingga 3 meter) yang disangga oleh 12 hingga 16 tiang kayu pilihan. Tata letak bangunannya selalu dibangun membujur dari timur ke barat untuk memudahkan penentuan arah kiblat serta menghindari paparan angin kencang. Seluruh strukturnya dirancang menggunakan pasak kayu dan ikatan tali rotan tanpa paku besi, menjadikannya fleksibel dan sangat tahan guncangan gempa bumi. Area kolong panggung (Bawaah) difungsikan untuk menyimpan hasil panen, menumbuk padi, dan tempat anak-anak bermain, sedangkan bagian dalam terbagi menjadi tiga ruang utama: Seuramoe Keue (teras depan), Seuramoe Tengah (ruang tidur utama), dan Seuramoe Likot (dapur).',
        imageUrl: 'assets/images/rumoh_aceh.png',
      ),
      House(
        id: '2',
        name: 'Rumah Bolon',
        province: 'Sumatra Utara',
        tribe: 'Batak',
        description:
            'Rumah Bolon adalah rumah panggung megah khas masyarakat Batak yang berbentuk persegi panjang dan ditopang tiang-tiang kayu besar. Ciri utamanya terletak pada atap melengkung menyerupai pelana kuda atau punggung kerbau yang terbuat dari susunan ijuk tebal. Pintu masuk rumah sengaja dibuat rendah dan menjorok ke dalam, mengharuskan setiap tamu yang masuk untuk menundukkan kepala sebagai wujud rasa hormat kepada pemilik rumah. Dinding kayu rumah dihiasi ukiran ornamen Gorga bernuansa tiga warna khas Batak (merah, hitam, dan putih) yang melambangkan spiritualitas, keberanian, dan kesucian.',
        imageUrl: 'assets/images/rumah_bolon.png',
      ),
      House(
        id: '3',
        name: 'Rumah Gadang',
        province: 'Sumatra Barat',
        tribe: 'Minangkabau',
        description:
            'Rumah Gadang merupakan rumah adat khas Minangkabau yang sangat ikonik dengan bentuk atap melengkung tajam menyerupai tanduk kerbau (Gonjong). Konstruksi bangunan bertumpu pada tiang-tiang kayu miring yang berdiri di atas batu pipih (tatakan) tanpa ditanam ke tanah serta tanpa paku, sehingga tahan terhadap guncangan gempa. Keberadaan Rumah Gadang erat kaitannya dengan sistem kemasyarakatan matrilinear, di mana kepemilikan rumah diwariskan kepada kaum wanita. Dinding depan dipenuhi ukiran flora dan geometris bermakna alam, sedangkan halaman depannya dilengkapi dengan bangunan lumbung beras yang dinamakan Rangkiang.',
        imageUrl: 'assets/images/rumah_gadang.png',
      ),
      House(
        id: '4',
        name: 'Rumah Selaso Jatuh Kembar',
        province: 'Riau',
        tribe: 'Melayu Riau',
        description:
            'Rumah Selaso Jatuh Kembar bukanlah hunian tinggal pribadi, melainkan balai pertemuan adat tempat para ketua suku berkumpul, bermusyawarah, dan melangsungkan upacara keagamaan masyarakat Melayu Riau. Dinamakan Selaso Jatuh Kembar karena lantai bagian selasar (selaso) di area depan dibuat lebih rendah dibanding ruang utama serta memiliki bentuk simetris di kedua sisinya. Puncak atapnya dihiasi ornamen ukiran Selembayung dan Pucuk Rebung yang melambangkan kasih sayang, kesopanan, serta hubungan spiritual dengan Sang Pencipta.',
        imageUrl: 'assets/images/selaso_jatuh_kembar.png',
      ),
      House(
        id: '5',
        name: 'Rumah Belah Bubung',
        province: 'Kepulauan Riau',
        tribe: 'Melayu Kepulauan',
        description:
            'Rumah Belah Bubung adalah rumah panggung tradisional khas masyarakat pesisir dan kepulauan Riau. Nama rumah ini berasal dari bentuk atapnya yang terbelah dua pada bagian bubungan atas. Tiang-tiang penyangga rumah dibuat tinggi (sekitar 1,5 hingga 2 meter) di atas permukaan tanah atau air laut untuk melindungi rumah dari luapan air pasang serta gelombang laut. Material bangunannya memanfaatkan kayu keras lokal seperti meranti dan resak, sementara atapnya terbuat dari anyaman daun nipah atau rumbia yang mampu menghalau hawa panas terik laut.',
        imageUrl: 'assets/images/belah_bubung.png',
      ),
      House(
        id: '6',
        name: 'Rumah Panggung Kajang Lako',
        province: 'Jambi',
        tribe: 'Melayu Jambi',
        description:
            'Rumah Panggung Kajang Lako merupakan rumah adat milik suku Batin di Jambi. Bentuk atapnya sangat unik melengkung di kedua ujungnya menyerupai perahu atau lipatan kajang (perahu dengan atap), yang sering disebut dengan istilah Lipat Kajang atau Gajah Mabuk. Struktur interiornya terbagi secara bertingkat berdasarkan fungsi hierarki sosial, seperti Lante Margo untuk rapat para pemangku adat, Pelarian untuk ruang tamu umum, dan Ruang Inne untuk kamar anak gadis. Seluruh dinding rumah dihiasi ukiran motif flora seperti bunga melati dan pucuk rebung.',
        imageUrl: 'assets/images/panggung_jambi.png',
      ),
      House(
        id: '7',
        name: 'Rumah Bubungan Lima',
        province: 'Bengkulu',
        tribe: 'Rejang / Melayu',
        description:
            'Rumah Bubungan Lima adalah rumah panggung kayu khas Bengkulu yang ditopang oleh tiang-tiang penyangga melayang di atas batu umpak (kemudi) tanpa ditanam langsung ke dalam tanah. Desain konstruksi fleksibel ini dirancang khusus oleh nenek moyang untuk menyerap dan meredam gempa bumi yang sering terjadi di pesisir barat Sumatra. Jumlah anak tangga untuk mengakses pintu utama selalu dihitung bernilai ganjil sesuai dengan nilai-nilai adat. Ruang dalam terbagi atas Beruga (teras depan), Hall (ruang tamu utama), dan Kamar Tidur.',
        imageUrl: 'assets/images/bubungan_lima.png',
      ),
      House(
        id: '8',
        name: 'Rumah Limas',
        province: 'Sumatra Selatan',
        tribe: 'Palembang',
        description:
            'Rumah Limas adalah rumah panggung kayu megah khas Palembang yang memanjang ke belakang dengan atap berbentuk limas. Ciri khas paling menonjol adalah tingkatan lantai di dalam rumah yang disebut Kijing atau Bengkilas. Setiap tingkatan lantai mencerminkan hirarki status sosial, umur, serta tingkat kehormatan tamu dalam acara perhelatan adat. Bahan baku utama rumah menggunakan kayu ulin (tahan air) untuk tiang panggung dan kayu tembesi untuk bagian dinding, serta dihiasi seni ukiran warna emas dan merah tua bernuansa Melayu-Tionghoa.',
        imageUrl: 'assets/images/rumah_limas.png',
      ),
      House(
        id: '9',
        name: 'Rumah Panggung / Rumah Rakit',
        province: 'Kepulauan Bangka Belitung',
        tribe: 'Bangka',
        description:
            'Kebudayaan Bangka Belitung mengenal dua wujud arsitektur tradisional: Rumah Panggung darat dan Rumah Rakit terapung. Rumah Panggung beratap limas dibangun di atas tiang kayu dengan ventilasi jendela melimpah untuk menyesuaikan daerah pesisir. Sedangkan Rumah Rakit dibangun terapung di atas permukaan sungai atau laut menggunakan rakitan bambu/kayu besar yang diikat pada tiang pancang. Rumah Rakit mencerminkan tradisi bahari suku Melayu Bangka yang menggantungkan mata pencaharian pada sektor perikanan dan perdagangan sungai.',
        imageUrl: 'assets/images/rumah_rakit.png',
      ),
      House(
        id: '10',
        name: 'Nuwo Sesat',
        province: 'Lampung',
        tribe: 'Lampung',
        description:
            'Nuwo Sesat adalah balai adat panggung tempat berkumpulnya para pimpinan suku (Penyimbang) dalam menggelar musyawarah adat (Pepadun) di Lampung. Bangunan ini memiliki tangga masuk utama yang disebut Ijan Geladak yang dilengkapi payung agung di puncaknya. Struktur dalam terbagi atas Teteken (ruang tamu rapat), Anjau Seperrah (ruang sidang rahasia pemangku adat), dan Tetabuhan (tempat menyimpan alat musik tradisional seperti talang emas dan gung). Bangunan ini dihiasi ukiran hiasan lambang keagungan suku Lampung.',
        imageUrl: 'assets/images/nuwo_sesat.png',
      ),

      // ================= JAWA =================
      House(
        id: '11',
        name: 'Rumah Kebaya (Rumah Bapang)',
        province: 'DKI Jakarta',
        tribe: 'Betawi',
        description:
            'Rumah Kebaya atau Rumah Bapang adalah rumah tradisional masyarakat Betawi. Dinamakan Rumah Kebaya karena bentuk atap pelananya jika dilihat dari tampak samping terlihat seperti lipatan kain kebaya. Halaman depan dilengkapi dengan teras luas (Ame-Ame) yang diisi oleh balai-balai kayu tempat bersantai dan menerima tamu, menggambarkan sifat keterbukaan dan keramahtamahan suku Betawi. Lisplang di sekeliling pinggiran atap dihiasi ornamen orisinil berbentuk segitiga berderet yang disebut ornamen Gigi Balang.',
        imageUrl: 'assets/images/rumah_kebaya.png',
      ),
      House(
        id: '12',
        name: 'Rumah Sunda (Rumah Panggung Sunda)',
        province: 'Jawa Barat',
        tribe: 'Sunda',
        description:
            'Rumah Panggung Sunda adalah hunian tradisional khas tatar Sunda yang dibangun sedikit meninggi (0,5 hingga 1 meter) di atas fondasi batu tatakan (batu umpak). Rumah ini memiliki beraneka gaya variasi atap tradisional seperti Julang Ngapak (burung mengepakkan sayap) dan Badak Heuay (badak menguap). Seluruh material bangunan diambil langsung dari alam: kayu jati/bambu untuk struktur kerangka, bilik anyaman bambu untuk dinding, serta susunan ijuk atau daun rumbia untuk atap guna menjaga suhu ruangan tetap dingin dan sejuk.',
        imageUrl: 'assets/images/julang_ngapak.png',
      ),
      House(
        id: '13',
        name: 'Rumah Sulah Nyanda',
        province: 'Banten',
        tribe: 'Baduy',
        description:
            'Rumah Sulah Nyanda adalah hunian adat masyarakat Baduy yang dibangun selaras dengan alam tanpa mengubah atau meratakan bentuk permukaan tanah asal. Ditopang oleh fondasi batu kali, dinding dari anyaman bambu (pulu-pulu), serta atap dari ijuk atau daun kelapa kering. Pembagian interior terdiri dari tiga bagian utama: Sosoro (teras depan untuk menerima tamu dan menenun), Tepas (ruang keluarga dan tempat tidur), serta Ipah (area belakang untuk dapur dan tempat penyimpanan simpanan beras/hasil bumi).',
        imageUrl: 'assets/images/rumah_baduy.png',
      ),
      House(
        id: '14',
        name: 'Rumah Joglo',
        province: 'Jawa Tengah',
        tribe: 'Jawa',
        description:
            'Rumah Joglo merupakan puncak karya arsitektur tradisional suku Jawa. Ciri utamanya terletak pada atap tinggi bertingkat berbentuk trapesium yang disangga oleh empat tiang kayu jati utama berukuran besar yang dinamakan Soko Guru. Tata ruang Joglo mengusung filosofi spiritual yang mendalam, terbagi atas Pendopo (area terbuka paling depan untuk menyambut masyarakat/tamu), Pringgitan (area perantara tempat pergelaran wayang kulit), dan Senthong/Dalem (area privat keluarga yang terdiri dari kamar-kamar tidur).',
        imageUrl: 'assets/images/rumah_joglo.png',
      ),
      House(
        id: '15',
        name: 'Rumah Joglo (Bangsal Kencana)',
        province: 'DI Yogyakarta',
        tribe: 'Jawa Yogyakarta',
        description:
            'Bangsal Kencana merupakan kompleks bangunan megah berarsitektur Joglo Istana (Keraton) di Kesultanan Yogyakarta. Bangunan panggung terbuka ini ditopang oleh tiang-tiang kayu jati berukir indah yang dihiasi warna emas (prada) dan hijau/merah khas keraton. Bangsal ini difungsikan khusus sebagai tempat penyelenggaraan upacara-upacara sakral kesultanan, penobatan Sultan yang bertakhta, upacara adat keagamaan, serta tempat menyambut tamu-tamu agung kenegaraan.',
        imageUrl: 'assets/images/bangsal_kencana.png',
      ),
      House(
        id: '16',
        name: 'Rumah Joglo Situbondo',
        province: 'Jawa Timur',
        tribe: 'Jawa / Madura',
        description:
            'Rumah Joglo Situbondo merupakan ragam variasi atap Joglo yang berkembang pesat di wilayah pesisir timur Jawa Timur (kawasan Pendalungan) dengan pengaruh kuat dari akulturasi budaya Jawa dan Madura. Menggunakan kayu jati kokoh berdinding papan tipis, berfondasi ditinggikan dari tanah, serta dilengkapi jendela berukuran lebar. Pintu masuk depan (Macan Ngerem) sering dihiasi ornamen ukiran bermotif flora dan fauna yang menyimbolkan ketenangan dan perlindungan bagi penghuninya.',
        imageUrl: 'assets/images/joglo_situbondo.png',
      ),

      // ================= BALI & NUSA TENGGARA =================
      House(
        id: '17',
        name: 'Rumah Adat Bali (Gapura Candi Bentar)',
        province: 'Bali',
        tribe: 'Bali',
        description:
            'Rumah Adat Bali bukan berupa satu bangunan tunggal, melainkan sebuah kompleks pekarangan berdinding keliling (Penyengker) yang dirancang sesuai pedoman tata ruang Asta Kosala Kosali dan prinsip Tri Hita Karana. Pintu gerbang utamanya berbentuk candi terbelah dua yang simetris bernama Gapura Candi Bentar. Di dalam kompleks terdapat beberapa bangunan terpisah: Sanggah/Meru (area suci beribadah di timur laut), Bale Manten (hunian kepala keluarga), Bale Dauh (ruang kegiatan harian), dan Paon (dapur).',
        imageUrl: 'assets/images/candi_bentar.png',
      ),
      House(
        id: '18',
        name: 'Rumah Dalam Loka & Bale Tani',
        province: 'Nusa Tenggara Barat',
        tribe: 'Sumbawa / Sasak',
        description:
            'Mewakili dua suku besar di NTB. Dalam Loka adalah bekas istana kayu panggung megah Kesultanan Sumbawa yang disangga oleh 99 tiang utama (melambangkan 99 Asmaul Husna). Sementara Bale Tani adalah rumah pemukiman rakyat suku Sasak di Lombok dengan atap alang-alang tinggi menunduk. Lantai rumah Bale Tani terbuat dari tanah liat yang dicampur kotoran kerbau dan abu batu secara berkala agar rapat, bersih, tahan serangga, dan hangat.',
        imageUrl: 'assets/images/dalam_loka.png',
      ),
      House(
        id: '19',
        name: 'Rumah Musalaki / Mbaru Niang',
        province: 'Nusa Tenggara Timur',
        tribe: 'Ende / Manggarai',
        description:
            'Dua karya arsitektur spektakuler di NTT. Rumah Musalaki dari daerah Ende adalah rumah panggung beratap tajam melengkung tinggi tempat kediaman para ketua adat suku. Sedangkan Mbaru Niang dari desa adat Wae Rebo (Manggarai) adalah rumah kayu berbentuk kerucut sempurna setinggi 5 tingkat yang seluruh bangunannya ditutupi oleh susunan ijuk dan daun lontar dari puncak hingga menyentuh tanah.',
        imageUrl: 'assets/images/rumah_musalaki.png',
      ),

      // ================= KALIMANTAN =================
      House(
        id: '20',
        name: 'Rumah Radakng (Rumah Panjang Dayak)',
        province: 'Kalimantan Barat',
        tribe: 'Dayak',
        description:
            'Rumah Radakng merupakan rumah panggung raksasa berbahan kayu ulin milik suku Dayak Kanayatn di Kalimantan Barat. Memiliki ukuran luar biasa dengan panjang mencapai 180 meter, lebar 30 meter, dan ditopang tiang-tiang panggung setinggi 5 hingga 8 meter. Bangunan ini mampu dihuni secara komunal oleh ratusan jiwa dari puluhan kepala keluarga. Akses tangga masuknya terbuat dari batang kayu bulat tunggal yang diberi takikan anak tangga yang dinamakan Tangka.',
        imageUrl: 'assets/images/rumah_panjang.png',
      ),
      House(
        id: '21',
        name: 'Rumah Betang',
        province: 'Kalimantan Tengah',
        tribe: 'Dayak',
        description:
            'Rumah Betang adalah rumah adat memanjang yang didirikan di sepanjang bantaran sungai-sungai besar Kalimantan Tengah. Rumah panggung ini menjadi simbol utama persatuan dan kebersamaan hidup suku Dayak. Bagian interior dibagi menjadi ruangan bilik-bilik privat untuk tiap-tiap keluarga, sedangkan bagian depan berupa selasar luas terbuka (Asang) yang berfungsi untuk tempat musyawarah warga, upacara ritual adat, serta pengerjaan kerajinan tangan.',
        imageUrl: 'assets/images/rumah_betang.png',
      ),
      House(
        id: '22',
        name: 'Rumah Bubungan Tinggi',
        province: 'Kalimantan Selatan',
        tribe: 'Banjar',
        description:
            'Rumah Bubungan Tinggi merupakan kasta arsitektur tertinggi dalam tradisi suku Banjar yang dahulunya dikhususkan sebagai kediaman resmi raja dan keluarga Kesultanan Banjar. Karakter utamanya adalah bentuk atap bagian tengah yang membumbung sangat tinggi dan curam (Atap Sindang Langit). Seluruh struktur bangunan terbuat dari kayu ulin (kayu besi) tahan lapuk, dilengkapi anjung (sayap bangunan) di sisi kiri dan kanan, serta hiasan ukiran ornamen bertema naga dan tumbuhan.',
        imageUrl: 'assets/images/bubungan_tinggi.png',
      ),
      House(
        id: '23',
        name: 'Rumah Lamin',
        province: 'Kalimantan Timur',
        tribe: 'Dayak Kenyah',
        description:
            'Rumah Lamin adalah rumah megah komunal suku Dayak Kenyah dan Benuaq di Kalimantan Timur. Memiliki panjang bangunan hingga 300 meter dan lebar 15 meter. Dinding, tiang, dan pagar rumah dihiasi dengan ukiran ornamen etnik khas Dayak bermotif wajah manusia, naga, dan tumbuhan berbalut warna kontras (kuning, merah, hitam, putih). Di halaman depannya kerap didirikan tiang totem ukir kayu ulin berukuran tinggi besar yang disebut Ajo.',
        imageUrl: 'assets/images/rumah_lamin.png',
      ),
      House(
        id: '24',
        name: 'Rumah Baloy',
        province: 'Kalimantan Utara',
        tribe: 'Tidung',
        description:
            'Rumah Baloy adalah rumah panggung kayu ulin khas suku Tidung di Kalimantan Utara. Tata letak bangunannya dirancang selalu menghadap ke arah utara. Terbagi atas 4 ruangan utama: Ambir Kiri (tempat menerima masyarakat yang menyampaikan pengaduan adat), Ambir Tengah (tempat pemangku adat bersidang), Ambir Kanan (ruang istirahat pejabat adat), dan Abal (ruang keluarga). Rumah ini didirikan di wilayah pesisir atau rawa pasang surut.',
        imageUrl: 'assets/images/rumah_baloy.png',
      ),

      // ================= SULAWESI =================
      House(
        id: '25',
        name: 'Rumah Walewangko (Rumah Pewaris)',
        province: 'Sulawesi Utara',
        tribe: 'Minahasa',
        description:
            'Rumah Walewangko atau Rumah Pewaris adalah rumah panggung kayu bertiang tinggi khas suku Minahasa. Ciri visual utamanya memiliki dua buah tangga kayu simetris di sisi kiri dan kanan bagian depan untuk mengakses teras utama. Terbagi atas tiga area: Lesar (teras depan tidak berdinding untuk rapat adat), Sekey (serambi berfasilitas jendela untuk menerima tamu), dan Pasiwal (ruang tengah keluarga). Strukturnya bersifat knock-down (bongkar pasang) dan fleksibel gempa.',
        imageUrl: 'assets/images/walewangko.png',
      ),
      House(
        id: '26',
        name: 'Rumah Dulohupa',
        province: 'Gorontalo',
        tribe: 'Gorontalo',
        description:
            'Rumah Dulohupa adalah balai musyawarah adat masyarakat Gorontalo. Rumah panggung ini memiliki atap pelana berlapis yang melambangkan keagungan. Ditopang oleh pilar-pilar kayu bulat berdiameter besar di mana jumlah tiang panggungnya mengandung simbol filosofi adat setempat. Bagian dalam rumah berupa aula luas tanpa sekat yang difungsikan untuk tempat menggelar sidang adat peradilan, rapat desa, serta penyelenggaraan upacara pernikahan adat.',
        imageUrl: 'assets/images/dulohupa.png',
      ),
      House(
        id: '27',
        name: 'Rumah Souraja / Rumah Tambi',
        province: 'Sulawesi Tengah',
        tribe: 'Kaili / Lore',
        description:
            'Mewakili dua bentuk hunian adat di Sulawesi Tengah. Souraja adalah rumah panggung kayu besar berdinding papan tanpa paku milik para raja dan bangsawan suku Kaili. Sedangkan Rumah Tambi milik suku Lore di kawasan pegunungan memiliki bentuk prisma segitiga unik, di mana atap ijuk/rumbia yang sangat curam menjuntai ke bawah dan berfungsi sekaligus sebagai dinding luar rumah.',
        imageUrl: 'assets/images/souraja.png',
      ),
      House(
        id: '28',
        name: 'Rumah Boyang',
        province: 'Sulawesi Barat',
        tribe: 'Mandar',
        description:
            'Rumah Boyang merupakan rumah panggung kayu suku Mandar yang berdiri di atas batu alam tanpa ditanam. Terbagi menjadi dua kategori strata sosial: Boyang Adaq (hunian bangsawan beratap susun bertingkat tiga) dan Boyang Gendang (hunian rakyat biasa beratap tunggal). Bagian bubungan atap dihiasi ukiran Tumbaq Layang, sedangkan bagian interiornya terbagi atas Samboyang (teras depan), Tutu (ruang keluarga), dan Paporang (dapur).',
        imageUrl: 'assets/images/rumah_boyang.png',
      ),
      House(
        id: '29',
        name: 'Rumah Tongkonan & Balla Lompoa',
        province: 'Sulawesi Selatan',
        tribe: 'Toraja / Makassar',
        description:
            'Dua ikon arsitektur ternama di Sulawesi Selatan. Tongkonan dari suku Toraja memiliki atap melengkung tajam mirip perahu terbalik atau tanduk kerbau, berdinding kayu penuh ukiran warna alam, serta dihiasi deretan tanduk kerbau (Kabongo) pada tiang utama depan. Balla Lompoa adalah istana panggung kayu megah berukuran raksasa kediaman resmi Raja-Raja Kesultanan Gowa di Makassar.',
        imageUrl: 'assets/images/tongkonan.png',
      ),
      House(
        id: '30',
        name: 'Banua Tada / Rumah Laika',
        province: 'Sulawesi Tenggara',
        tribe: 'Buton / Tolaki',
        description:
            'Banua Tada adalah rumah panggung kayu khas suku Buton yang dibangun menggunakan teknik pasak kayu dan siku tanpa paku besi (artinya "Tada" = bersiku). Jumlah tingkatan dinding rumah menandakan kasta sosial penghuninya (Palace, Kamali, atau Tada). Sementara Rumah Laika dari suku Tolaki berbentuk segi empat beratap ijuk yang berukuran luas untuk hunian keluarga besar.',
        imageUrl: 'assets/images/rumah_laika.png',
      ),

      // ================= MALUKU =================
      House(
        id: '31',
        name: 'Rumah Baileo',
        province: 'Maluku',
        tribe: 'Maluku',
        description:
            'Rumah Baileo adalah balai adat panggung terbuka tanpa dinding yang disangga oleh tiang-tiang kayu jati/merbau dan batu fondasi. Ketiadaan dinding melambangkan kearifan lokal berupa kebebasan dan keterbukaan warga dalam bermusyawarah. Di dalam Baileo terdapat Batu Pemali yang disucikan sebagai tempat meletakkan sesajen ritual, serta tempat menyemayamkan benda-benda pusaka warisan leluhur suku Maluku.',
        imageUrl: 'assets/images/baileo_maluku.png',
      ),
      House(
        id: '32',
        name: 'Rumah Sasadu',
        province: 'Maluku Utara',
        tribe: 'Sahu',
        description:
            'Rumah Sasadu adalah balai adat terbuka masyarakat suku Sahu di Halmahera Barat. Rumah ini tidak memiliki dinding maupun pintu penutup, dengan atap daun sagu yang dirancang rendah hampir menyentuh tanah. Seluruh konstruksi kerangka kayu diikat rapi menggunakan tali ijuk tanpa paku besi. Sasadu melambangkan sikap keterbukaan, keharmonisan, serta persaudaraan saat perayaan pesta panen adat Orom Sasadu.',
        imageUrl: 'assets/images/rumah_sasadu.png',
      ),

      // ================= PAPUA =================
      House(
        id: '33',
        name: 'Rumah Honai',
        province: 'Papua',
        tribe: 'Dani',
        description:
            'Rumah Honai adalah hunian tradisional berbentuk bundar melingkar berdiameter 4 hingga 6 meter khas suku Dani di Lembah Baliem. Atapnya berbentuk kubah melengkung dari susunan ilalang tebal menyerupai jamur. Dindingnya dibuat pendek dari kayu tanpa jendela dengan satu pintu kecil untuk terendam hawa dingin pegunungan. Honai terbagi dua lantai: lantai bawah untuk perapian hangat (Wim) dan lantai atas beralas jerami untuk tempat tidur pria dewasa.',
        imageUrl: 'assets/images/rumah_honai.png',
      ),
      House(
        id: '34',
        name: 'Rumah Mod Aki Aksa (Kaki Seribu)',
        province: 'Papua Barat',
        tribe: 'Arfak',
        description:
            'Rumah Mod Aki Aksa atau populer dengan sebutan Rumah Kaki Seribu adalah rumah panggung khas suku Arfak di Pegunungan Arfak. Dinamakan Kaki Seribu karena bagian bawah lantai panggung ditopang oleh ratusan tiang kayu penyangga berdiameter kecil yang dipasang secara rapet dan rapat. Ratusan tiang ini menjadikan rumah sangat kokoh berdiri di lereng tebing curam serta aman dari ancaman gempa dan binatang buas.',
        imageUrl: 'assets/images/mod_aki_aksa.png',
      ),
      House(
        id: '35',
        name: 'Rumah Jew (Suku Asmat)',
        province: 'Papua Selatan',
        tribe: 'Asmat',
        description:
            'Rumah Jew adalah rumah panggung panjang memanjang khas suku Asmat yang didirikan di sepanjang bantaran sungai. Rumah adat ini khusus diperuntukkan bagi kaum pria dewasa yang belum menikah dan dilarang dimasuki oleh kaum wanita. Jew difungsikan sebagai pusat sanggar seni tempat memahat patung kayu Bisj, pembuatan perisai ukir, pusat perencanaan strategi perang suku, serta tempat berlangsungnya ritual sakral.',
        imageUrl: 'assets/images/rumah_jew.png',
      ),
      House(
        id: '36',
        name: 'Rumah Karapao (Suku Kamoro)',
        province: 'Papua Tengah',
        tribe: 'Kamoro',
        description:
            'Rumah Karapao adalah rumah adat panggung memanjang yang dibangun khusus oleh masyarakat suku Kamoro untuk menyelenggarakan upacara ritual inisiasi kedewasaan (Karapao) bagi remaja laki-laki. Di dalam rumah adat ini, para pemuda dibekali pengetahuan hukum-hukum adat, keterampilan berburu di hutan, menangguk ikan di sungai, serta seni pembuatan patung adat Mbitoro.',
        imageUrl: 'assets/images/rumah_hunila.png',
      ),
      House(
        id: '37',
        name: 'Rumah Honai & Ebai',
        province: 'Papua Pegunungan',
        tribe: 'Dani / Hubula',
        description:
            'Dalam kompleks pemukiman adat (Silimo) di Papua Pegunungan, tata ruang memisahkan secara tegas hunian pria dan wanita. Honai difungsikan sebagai tempat tinggal kaum pria dewasa, sementara Ebai adalah rumah bundar beratap ijuk berukuran lebih rendah yang dikhususkan sebagai tempat tinggal wanita, anak-anak, tempat mendidik anak perempuan menenun noken, serta tempat merawat ternak.',
        imageUrl: 'assets/images/rumah_kariwari.png',
      ),
      House(
        id: '38',
        name: 'Rumah Kambik (Kaki Seribu)',
        province: 'Papua Barat Daya',
        tribe: 'Karon / Moi',
        description:
            'Rumah Kambik adalah rumah panggung kayu beratap ijuk/daun sagu milik suku Moi dan Karon. Rumah adat ini difungsikan sebagai tempat sekolah/pendidikan adat keramat (Inisiasi Kambik). Para pemuda suku menjalani proses pendidikan karakter, mempelajari obat-obatan herbal tradisional dari tumbuhan hutan, mempelajari silsilah adat, serta ilmu kepemimpinan suku.',
        imageUrl: 'assets/images/rumsram.png',
      ),
    ];
  }
}