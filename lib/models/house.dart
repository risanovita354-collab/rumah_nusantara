import 'package:flutter/material.dart';

class House {
  final String id;
  final String name;
  final String province;
  final String tribe;
  final String description;
  final String characteristics;
  final String imageUrl;

  House({
    required this.id,
    required this.name,
    required this.province,
    required this.tribe,
    required this.description,
    this.characteristics = '',
    required this.imageUrl,
  });
}

// DATA MASTER LENGKAP 38 RUMAH ADAT NUSANTARA
final List<House> masterHouses = [
  House(
    id: '1',
    name: 'Rumah Baileo',
    province: 'Maluku',
    tribe: 'Suku Maluku',
    description:
        'Rumah Baileo merupakan rumah adat tradisional masyarakat Maluku yang berfungsi sebagai tempat berkumpul, bermusyawarah, dan melaksanakan berbagai kegiatan adat masyarakat setempat. Rumah ini bukan hanya digunakan sebagai tempat pertemuan, tetapi juga memiliki fungsi penting dalam kehidupan sosial dan budaya masyarakat Maluku.',
    characteristics:
        'Baileo umumnya berbentuk rumah panggung dengan ukuran yang cukup luas dan memiliki ruang terbuka tanpa banyak sekat. Ciri khasnya adalah bangunan yang menggunakan tiang-tiang kayu, lantai yang ditinggikan, serta atap berbentuk limas atau memanjang yang terbuat dari daun rumbia atau bahan alami lainnya. Rumah Baileo juga sering dihiasi dengan ornamen khas Maluku yang melambangkan identitas dan nilai-nilai adat masyarakatnya.',
    imageUrl: 'assets/images/baileo.png', // Format PNG sesuai berkas di folder assets
  ),
  House(
    id: '2',
    name: 'Rumah Bale Gede',
    province: 'Bali',
    tribe: 'Suku Bali',
    description:
        'Rumah Bale Gede merupakan salah satu bangunan tradisional dalam kompleks rumah adat masyarakat Bali. Bangunan ini biasanya digunakan untuk melaksanakan berbagai kegiatan adat, upacara keluarga, dan pertemuan yang berkaitan dengan kehidupan masyarakat Hindu Bali.',
    characteristics:
        'Bale Gede memiliki bentuk bangunan terbuka dengan beberapa tiang penyangga yang menopang atapnya. Ciri khasnya adalah penggunaan material alami seperti kayu, batu, dan atap yang terbuat dari ijuk atau bahan tradisional lainnya. Bangunan ini umumnya memiliki ruang yang luas dan terbuka sehingga dapat digunakan untuk berbagai kegiatan bersama. Bale Gede juga mencerminkan filosofi kehidupan masyarakat Bali yang mengutamakan keseimbangan antara manusia, alam, dan Tuhan.',
    imageUrl: 'assets/images/bale gede.jpeg',
  ),
  House(
    id: '3',
    name: 'Rumah Baloy',
    province: 'Kalimantan Utara',
    tribe: 'Suku Tidung',
    description:
        'Rumah Baloy merupakan rumah adat masyarakat suku Tidung yang berasal dari Kalimantan Utara. Rumah ini memiliki fungsi sebagai tempat tinggal sekaligus tempat berlangsungnya kegiatan adat, musyawarah, dan pertemuan masyarakat.',
    characteristics:
        'Bentuk bangunannya berupa rumah panggung yang terbuat dari kayu, dengan struktur bangunan yang disesuaikan dengan kondisi lingkungan setempat. Ciri khas Rumah Baloy adalah bentuk atapnya yang memiliki desain unik dan bagian bangunan yang dihiasi ukiran khas suku Tidung. Rumah ini juga memiliki beberapa ruangan dengan fungsi berbeda, seperti ruang untuk menerima tamu dan tempat melaksanakan pertemuan adat. Keberadaan Rumah Baloy menjadi simbol identitas, kebersamaan, dan pelestarian budaya masyarakat Tidung.',
    imageUrl: 'assets/images/baloy.jpeg',
  ),
  House(
    id: '4',
    name: 'Rumah Betang',
    province: 'Kalimantan Tengah',
    tribe: 'Suku Dayak',
    description:
        'Rumah Betang merupakan rumah adat masyarakat Dayak yang berasal dari Kalimantan Tengah. Rumah ini memiliki ukuran yang sangat panjang karena dirancang untuk dihuni oleh banyak keluarga dalam satu bangunan. Rumah Betang mencerminkan kehidupan masyarakat Dayak yang menjunjung tinggi kebersamaan, persaudaraan, dan gotong royong.',
    characteristics:
        'Ciri khasnya adalah bentuk rumah panggung dengan tiang-tiang kayu yang tinggi, bangunan memanjang, serta penggunaan kayu sebagai bahan utama. Di dalamnya terdapat beberapa ruangan yang digunakan oleh setiap keluarga, sementara bagian tertentu menjadi ruang bersama untuk melakukan aktivitas sosial dan adat. Rumah Betang juga biasanya memiliki tangga dan beranda panjang yang menghubungkan berbagai bagian rumah.',
    imageUrl: 'assets/images/betang.jpeg',
  ),
  House(
    id: '5',
    name: 'Rumah Boyang',
    province: 'Sulawesi Barat',
    tribe: 'Suku Mandar',
    description:
        'Rumah Boyang merupakan rumah adat masyarakat suku Mandar yang berasal dari Sulawesi Barat. Rumah ini digunakan sebagai tempat tinggal keluarga dan memiliki bentuk rumah panggung yang menyesuaikan dengan kondisi alam daerah pesisir maupun daratan.',
    characteristics:
        'Rumah Boyang biasanya dibangun menggunakan kayu dengan atap berbentuk pelana yang memiliki kemiringan cukup tinggi. Ciri khasnya adalah struktur bangunan yang ditopang oleh tiang-tiang kayu, tangga menuju pintu utama, serta hiasan pada bagian atap dan dinding. Rumah Boyang juga memiliki pembagian ruangan berdasarkan fungsi dan aktivitas penghuninya. Bentuk serta susunan rumah ini mencerminkan nilai kehidupan masyarakat Mandar yang menjunjung tinggi adat istiadat, kekeluargaan, dan keharmonisan.',
    imageUrl: 'assets/images/boyang.jpeg',
  ),
  House(
    id: '6',
    name: 'Rumah Bubungan Tinggi',
    province: 'Kalimantan Selatan',
    tribe: 'Suku Banjar',
    description:
        'Rumah Bubungan Tinggi merupakan salah satu rumah adat khas masyarakat Banjar yang berasal dari Kalimantan Selatan. Rumah ini dahulu digunakan sebagai tempat tinggal keluarga bangsawan atau kalangan kerajaan Banjar.',
    characteristics:
        'Nama Bubungan Tinggi berasal dari bentuk atap bagian tengah rumah yang menjulang tinggi dan memiliki kemiringan yang khas. Bangunannya berbentuk rumah panggung dengan struktur utama yang menggunakan kayu ulin, yaitu jenis kayu yang terkenal kuat dan tahan lama. Ciri khasnya adalah atap utama yang tinggi, tangga di bagian depan, serta ukiran tradisional yang menghiasi beberapa bagian bangunan. Rumah ini juga memiliki pembagian ruangan yang menunjukkan susunan kehidupan keluarga masyarakat Banjar pada masa dahulu.',
    imageUrl: 'assets/images/bubuhan tinggi.jpeg',
  ),
  House(
    id: '7',
    name: 'Rumah Dulohupa',
    province: 'Gorontalo',
    tribe: 'Suku Gorontalo',
    description:
        'Rumah Dulohupa merupakan rumah adat masyarakat Gorontalo yang memiliki fungsi utama sebagai tempat berlangsungnya musyawarah, pertemuan adat, dan kegiatan pemerintahan tradisional. Nama Dulohupa memiliki makna yang berkaitan dengan kesepakatan atau musyawarah, sehingga bangunan ini melambangkan kebersamaan dan persatuan masyarakat.',
    characteristics:
        'Rumah ini berbentuk rumah panggung yang ditopang oleh sejumlah tiang kayu dengan bagian depan yang cukup luas. Ciri khasnya adalah atap berbentuk pelana yang memiliki susunan bertingkat, tangga di bagian depan, serta ornamen khas Gorontalo pada bagian bangunan. Rumah Dulohupa juga memiliki ruangan terbuka yang memungkinkan masyarakat berkumpul dan melaksanakan kegiatan bersama.',
    imageUrl: 'assets/images/dulohupa.jpeg',
  ),
  House(
    id: '8',
    name: 'Rumah Emawa',
    province: 'Papua Tengah',
    tribe: 'Suku Papua Tengah',
    description:
        'Emawa merupakan bangunan tradisional yang dikenal dalam kehidupan masyarakat di wilayah Papua Tengah, khususnya berkaitan dengan tradisi dan kehidupan sosial masyarakat setempat.',
    characteristics:
        'Bangunan tradisional ini dibuat dengan memanfaatkan bahan-bahan yang tersedia di lingkungan alam, seperti kayu, bambu, rumput, dan daun-daunan. Emawa memiliki bentuk yang sederhana dan dirancang agar dapat menyesuaikan diri dengan kondisi lingkungan sekitarnya. Ciri khasnya terlihat dari penggunaan bahan alami, atap yang dibuat dari tumbuhan kering, serta konstruksi bangunan yang tidak banyak menggunakan material modern. Bentuk bangunan dan penggunaannya dapat berbeda menurut komunitas adat setempat, sehingga Emawa mencerminkan hubungan erat masyarakat Papua dengan alam dan tradisi leluhur.',
    imageUrl: 'assets/images/emawa papua tengah.jpeg',
  ),
  House(
    id: '9',
    name: 'Rumah Gotad (Jew)',
    province: 'Papua Selatan',
    tribe: 'Suku Asmat',
    description:
        'Gotad atau Jew merupakan bangunan tradisional yang berkaitan dengan kehidupan adat masyarakat Papua Selatan, terutama masyarakat suku Asmat. Jew dikenal sebagai rumah adat atau rumah bujang yang memiliki peranan penting dalam kehidupan sosial dan budaya masyarakat. Bangunan ini digunakan sebagai tempat berkumpul, bermusyawarah, melaksanakan kegiatan adat, serta mewariskan pengetahuan dan tradisi kepada generasi berikutnya.',
    characteristics:
        'Ciri khasnya adalah ukuran bangunan yang panjang, penggunaan kayu sebagai bahan utama, serta atap yang dibuat dari daun sagu atau bahan alami lainnya. Bagian dinding dan tiang bangunan dapat dihiasi dengan ukiran khas Asmat yang menggambarkan hubungan masyarakat dengan leluhur, alam, dan kehidupan adat mereka.',
    imageUrl: 'assets/images/gotad atau jew papua selatan.jpeg',
  ),
  House(
    id: '10',
    name: 'Rumah Honai',
    province: 'Papua Pegunungan',
    tribe: 'Suku Dani',
    description:
        'Rumah Honai merupakan rumah adat tradisional masyarakat suku Dani yang berasal dari wilayah pegunungan Papua. Rumah ini dirancang khusus untuk menyesuaikan diri dengan suhu udara pegunungan yang cenderung dingin, sehingga bentuk bangunannya dibuat sederhana tetapi mampu mempertahankan kehangatan di dalam ruangan.',
    characteristics:
        'Honai memiliki bentuk dasar bulat dengan atap menyerupai kerucut yang biasanya dibuat dari jerami atau ilalang. Ciri khasnya adalah pintu masuk yang berukuran kecil, dinding yang terbuat dari kayu, serta ruangan yang relatif sempit dengan sedikit bukaan. Bentuk tersebut membantu mengurangi masuknya udara dingin dari luar. Dalam kehidupan tradisional masyarakat setempat, Honai juga memiliki fungsi sosial dan budaya yang berkaitan dengan kehidupan keluarga serta adat istiadat.',
    imageUrl: 'assets/images/honai papua pegunungan.jpeg',
  ),
  House(
    id: '11',
    name: 'Rumah Joglo Bangsal Kencono',
    province: 'DI Yogyakarta',
    tribe: 'Suku Jawa',
    description:
        'Bangsal Kencono merupakan bangunan tradisional yang berada di lingkungan Keraton Yogyakarta dan menjadi salah satu bagian penting dari arsitektur kerajaan Jawa. Bangunan ini dahulu digunakan untuk menyelenggarakan berbagai kegiatan resmi kerajaan, pertemuan penting, dan upacara adat keraton.',
    characteristics:
        'Arsitekturnya menggunakan gaya joglo yang dikenal dengan bentuk atap menjulang dan memiliki susunan bertingkat. Ciri khasnya adalah penggunaan tiang-tiang kayu besar, ruang utama yang luas dan terbuka, serta ornamen tradisional yang memiliki makna filosofis. Atapnya ditopang oleh struktur kayu yang kuat, sementara bagian bangunan dihiasi ukiran dan dekorasi khas Jawa. Bangsal Kencono mencerminkan kewibawaan kerajaan, keindahan seni bangunan Jawa, dan nilai-nilai budaya masyarakat Yogyakarta.',
    imageUrl: 'assets/images/joglo bangsal kencono.jpeg',
  ),
  House(
    id: '12',
    name: 'Rumah Joglo Situbondo',
    province: 'Jawa Timur',
    tribe: 'Suku Jawa / Madura',
    description:
        'Rumah Joglo Situbondo merupakan salah satu bentuk rumah tradisional yang berkembang di wilayah Situbondo, Jawa Timur, dengan pengaruh kuat dari arsitektur rumah Jawa. Bangunan ini digunakan sebagai tempat tinggal masyarakat dan menjadi salah satu gambaran kebudayaan tradisional Jawa Timur.',
    characteristics:
        'Bentuk rumahnya memiliki atap yang menyerupai joglo dengan bagian tengah yang lebih tinggi dibandingkan bagian lainnya. Ciri khasnya adalah penggunaan kayu sebagai bahan konstruksi utama, tiang penyangga yang kokoh, serta ruang tengah yang luas untuk berbagai kegiatan keluarga. Bagian atap biasanya memiliki bentuk yang bertingkat dan dilengkapi dengan struktur penyangga khas rumah Jawa. Rumah ini juga dapat memiliki ukiran sederhana yang memperlihatkan keindahan seni tradisional masyarakat setempat.',
    imageUrl: 'assets/images/joglo situbondo.jpeg',
  ),
  House(
    id: '13',
    name: 'Rumah Kambik',
    province: 'Papua Barat Daya',
    tribe: 'Suku Moi',
    description:
        'Kambik merupakan bangunan tradisional yang berkaitan dengan kebudayaan masyarakat suku Moi di wilayah Papua Barat Daya. Dalam tradisi masyarakat Moi, Kambik dikenal sebagai tempat pendidikan adat untuk memberikan pengetahuan mengenai kehidupan, aturan adat, nilai-nilai budaya, dan keterampilan tradisional kepada generasi muda.',
    characteristics:
        'Bangunan ini dibuat dengan memanfaatkan bahan-bahan alami yang tersedia di lingkungan sekitar, seperti kayu, bambu, dan daun-daunan. Ciri khasnya adalah bentuk bangunan tradisional yang sederhana, penggunaan bahan alam sebagai konstruksi utama, serta atap yang dibuat dari tumbuhan kering. Kambik tidak hanya memiliki nilai sebagai bangunan tradisional, tetapi juga menjadi simbol penting dalam proses pewarisan pengetahuan dan pelestarian kebudayaan masyarakat Moi.',
    imageUrl: 'assets/images/kambik papua barat daya.jpeg',
  ),
  House(
    id: '14',
    name: 'Rumah Kariwari',
    province: 'Papua',
    tribe: 'Suku Tobati / Enggros',
    description:
        'Rumah Kariwari merupakan rumah adat masyarakat Tobati dan Enggros yang berasal dari wilayah sekitar Teluk Youtefa, Papua. Rumah ini memiliki fungsi tradisional sebagai tempat pendidikan dan pembelajaran adat bagi anak laki-laki agar mereka memahami aturan kehidupan, keterampilan, serta nilai-nilai budaya masyarakat setempat.',
    characteristics:
        'Ciri khas Rumah Kariwari adalah bentuk bangunannya yang menyerupai segi delapan dengan atap berbentuk kerucut yang menjulang tinggi dan tersusun bertingkat. Bangunannya menggunakan kayu dan bahan alami yang berasal dari lingkungan sekitar. Bentuk atapnya yang tinggi membuat rumah ini terlihat berbeda dari rumah adat Papua lainnya. Selain memiliki fungsi pendidikan adat, Rumah Kariwari juga menjadi lambang identitas budaya dan kearifan lokal masyarakat pesisir Papua.',
    imageUrl: 'assets/images/kariwari papua.jpeg',
  ),
  House(
    id: '15',
    name: 'Rumah Laika',
    province: 'Sulawesi Tenggara',
    tribe: 'Suku Tolaki',
    description:
        'Rumah Laika merupakan rumah adat tradisional masyarakat suku Tolaki yang berasal dari Sulawesi Tenggara. Rumah ini digunakan sebagai tempat tinggal dan menjadi bagian dari kehidupan sosial serta budaya masyarakat Tolaki.',
    characteristics:
        'Laika umumnya berbentuk rumah panggung yang dibangun menggunakan kayu dengan tiang-tiang penyangga yang cukup tinggi. Bentuk bangunan tersebut membantu melindungi penghuni dari kelembapan tanah, gangguan binatang, dan kondisi lingkungan sekitar. Ciri khasnya adalah struktur rumah yang ditinggikan, tangga untuk menuju bagian utama rumah, serta penggunaan bahan bangunan alami. Atapnya memiliki bentuk yang disesuaikan dengan konstruksi tradisional masyarakat setempat. Rumah Laika juga memiliki pembagian ruang yang digunakan untuk kegiatan keluarga, menerima tamu, dan beristirahat.',
    imageUrl: 'assets/images/laika.jpeg',
  ),
  House(
    id: '16',
    name: 'Rumah Lamin',
    province: 'Kalimantan Timur',
    tribe: 'Suku Dayak',
    description:
        'Rumah Lamin merupakan rumah adat masyarakat Dayak yang berasal dari Kalimantan Timur dan dikenal sebagai salah satu rumah tradisional berukuran besar di Indonesia. Rumah ini dirancang untuk menampung banyak keluarga dalam satu bangunan sehingga menjadi simbol kebersamaan, persatuan, dan kehidupan gotong royong masyarakat Dayak.',
    characteristics:
        'Bentuk bangunannya memanjang dan ditopang oleh tiang-tiang kayu yang tinggi sehingga termasuk jenis rumah panggung. Ciri khas Rumah Lamin adalah ukurannya yang sangat panjang, penggunaan kayu sebagai bahan utama, serta hiasan berupa ukiran dan lukisan dengan motif khas Dayak. Rumah ini juga memiliki beranda yang luas, tangga untuk naik ke dalam rumah, dan beberapa ruangan yang digunakan oleh keluarga berbeda. Warna serta motif hiasannya biasanya memiliki makna yang berkaitan dengan kepercayaan dan kebudayaan masyarakat Dayak.',
    imageUrl: 'assets/images/lamin.jpeg',
  ),
  House(
    id: '17',
    name: 'Rumah Mbaru Niang',
    province: 'Nusa Tenggara Timur (NTT)',
    tribe: 'Suku Manggarai',
    description:
        'Mbaru Niang merupakan rumah adat tradisional masyarakat Wae Rebo yang terletak di Pulau Flores, Nusa Tenggara Timur. Rumah ini memiliki bentuk yang sangat unik dan menjadi salah satu simbol kebudayaan masyarakat Manggarai. Mbaru Niang digunakan sebagai tempat tinggal bersama beberapa keluarga serta menjadi bagian penting dalam pelaksanaan kehidupan adat masyarakat.',
    characteristics:
        'Ciri khasnya adalah bentuk bangunan yang menyerupai kerucut besar dengan atap yang menjulur hingga hampir menyentuh tanah. Atapnya dibuat menggunakan daun lontar atau ijuk, sedangkan struktur bangunannya menggunakan kayu dan bambu. Mbaru Niang memiliki lima tingkat yang masing-masing mempunyai fungsi berbeda, mulai dari tempat tinggal hingga penyimpanan hasil panen dan perlengkapan adat. Bentuknya yang khas menunjukkan kemampuan masyarakat setempat dalam membangun rumah yang sesuai dengan kondisi alam pegunungan.',
    imageUrl: 'assets/images/mbaru niang.jpeg',
  ),
  House(
    id: '18',
    name: 'Rumah Mod Aki Aksa',
    province: 'Papua Barat',
    tribe: 'Suku Arfak',
    description:
        'Mod Aki Aksa atau yang dikenal sebagai rumah kaki seribu merupakan rumah adat tradisional masyarakat suku Arfak di Papua Barat. Nama kaki seribu berasal dari bentuk bangunannya yang memiliki banyak tiang penyangga di bagian bawah sehingga terlihat seperti memiliki banyak kaki. Rumah ini dibangun untuk menyesuaikan diri dengan kondisi lingkungan pegunungan Papua Barat yang memiliki udara dingin dan kelembapan tinggi.',
    characteristics:
        'Ciri khasnya adalah bentuk rumah panggung dengan banyak tiang kayu berukuran relatif kecil, atap yang dibuat dari daun sagu atau bahan alami, serta dinding yang menggunakan kayu atau bahan tradisional lainnya. Rumah ini biasanya memiliki pintu dan jendela berukuran kecil untuk membantu menjaga suhu di dalam ruangan. Mod Aki Aksa memperlihatkan pengetahuan masyarakat Arfak dalam memanfaatkan bahan alam dan menyesuaikan bentuk rumah dengan lingkungan tempat tinggal mereka.',
    imageUrl: 'assets/images/mod aki aksa papua barat.jpeg',
  ),
  House(
    id: '19',
    name: 'Rumah Panjang Randakng',
    province: 'Kalimantan Barat',
    tribe: 'Suku Dayak',
    description:
        'Rumah Panjang Randakng atau Radakng merupakan rumah adat masyarakat Dayak di Kalimantan Barat yang digunakan sebagai tempat tinggal bersama dan pusat kegiatan sosial masyarakat. Rumah ini mencerminkan kehidupan masyarakat Dayak yang mengutamakan kebersamaan, persaudaraan, dan kerja sama dalam kehidupan sehari-hari.',
    characteristics:
        'Ciri khasnya adalah bentuk bangunan yang sangat panjang, memiliki banyak ruangan, serta berdiri di atas tiang-tiang kayu yang tinggi. Bahan utama pembangunannya adalah kayu, sedangkan bagian atap menggunakan bahan tradisional yang disesuaikan dengan lingkungan setempat. Di dalam rumah terdapat ruangan untuk keluarga masing-masing serta bagian bersama yang digunakan untuk menerima tamu dan melakukan kegiatan adat. Rumah Randakng juga sering dihiasi ukiran dan motif khas Dayak yang menggambarkan kekayaan seni dan budaya masyarakat Kalimantan Barat.',
    imageUrl: 'assets/images/panjang randakng.jpeg',
  ),
  House(
    id: '20',
    name: 'Rumah Baduy',
    province: 'Banten',
    tribe: 'Suku Baduy',
    description:
        'Rumah Baduy merupakan rumah adat tradisional masyarakat Baduy yang tinggal di wilayah Kabupaten Lebak, Banten. Rumah ini dibangun dengan mempertahankan aturan adat dan prinsip kesederhanaan yang diwariskan secara turun-temurun. Masyarakat Baduy menggunakan bahan-bahan alami dari lingkungan sekitar untuk membangun rumah, seperti bambu, kayu, ijuk, dan daun kirai.',
    characteristics:
        'Ciri khasnya adalah bentuk rumah panggung sederhana, dinding yang terbuat dari anyaman bambu, serta atap yang dibuat dari daun kirai atau bahan tumbuhan lainnya. Bagian lantainya juga menggunakan bambu yang disusun sedemikian rupa agar kuat dan nyaman digunakan. Rumah Baduy umumnya tidak menggunakan paku besi, melainkan memanfaatkan teknik sambungan dan ikatan tradisional. Bentuk rumah ini mencerminkan hubungan erat masyarakat Baduy dengan alam serta kepatuhan mereka terhadap aturan adat.',
    imageUrl: 'assets/images/rumah baduy.jpeg',
  ),
  House(
    id: '21',
    name: 'Rumah Belah Bubung',
    province: 'Kepulauan Riau',
    tribe: 'Suku Melayu',
    description:
        'Rumah Belah Bubung merupakan rumah adat tradisional masyarakat Melayu yang berasal dari Kepulauan Riau. Nama Belah Bubung berkaitan dengan bentuk atapnya yang memiliki dua bidang miring seperti pelana. Rumah ini biasanya dibangun sebagai rumah panggung dengan menggunakan kayu sebagai bahan utama agar sesuai dengan kondisi lingkungan masyarakat pesisir.',
    characteristics:
        'Ciri khasnya adalah bentuk atap yang menyerupai pelana, tiang-tiang penyangga kayu, tangga di bagian depan, serta jendela yang cukup banyak untuk membantu sirkulasi udara. Rumah ini memiliki beberapa ruangan dengan fungsi berbeda, seperti ruang tamu, ruang keluarga, kamar tidur, dan dapur. Bentuk bangunannya memperlihatkan pengaruh budaya Melayu serta kemampuan masyarakat Kepulauan Riau dalam menyesuaikan tempat tinggal dengan kondisi iklim tropis.',
    imageUrl: 'assets/images/rumah belah bubung.jpeg',
  ),
  House(
    id: '22',
    name: 'Rumah Bolon',
    province: 'Sumatra Utara',
    tribe: 'Suku Batak',
    description:
        'Rumah Bolon merupakan rumah adat tradisional masyarakat Batak yang berasal dari Sumatra Utara. Rumah ini memiliki nilai budaya yang tinggi karena menjadi simbol identitas masyarakat Batak serta menggambarkan kehidupan keluarga dan hubungan kekerabatan dalam masyarakat.',
    characteristics:
        'Rumah Bolon umumnya berbentuk rumah panggung dengan ukuran cukup besar dan memiliki struktur bangunan yang menggunakan kayu sebagai bahan utama. Ciri khasnya adalah atap yang melengkung menyerupai punggung kerbau atau bentuk pelana yang tinggi, tiang penyangga besar, serta hiasan ukiran tradisional yang dikenal dengan nama Gorga. Ukiran Gorga biasanya memiliki warna merah, hitam, dan putih yang mengandung makna tertentu dalam kebudayaan Batak. Rumah Bolon juga memiliki tangga di bagian depan dan ruang utama yang digunakan untuk berbagai kegiatan keluarga serta adat.',
    imageUrl: 'assets/images/rumah bolon.jpeg',
  ),
  House(
    id: '23',
    name: 'Rumah Bubungan Lima',
    province: 'Bengkulu',
    tribe: 'Suku Melayu Bengkulu',
    description:
        'Rumah Bubungan Lima merupakan rumah adat tradisional masyarakat Bengkulu yang memiliki bentuk bangunan khas dengan atap yang terdiri atas lima bagian bubungan. Rumah ini umumnya digunakan sebagai tempat tinggal keluarga dan dibangun dengan memperhatikan kondisi lingkungan serta iklim daerah Bengkulu.',
    characteristics:
        'Bentuk bangunannya berupa rumah panggung yang ditopang oleh tiang-tiang kayu agar bagian utama rumah tidak langsung bersentuhan dengan tanah. Ciri khasnya adalah atap yang memiliki lima bubungan, tangga di bagian depan, serta penggunaan kayu sebagai bahan utama konstruksi. Rumah ini memiliki beberapa ruangan yang digunakan untuk menerima tamu, berkumpul bersama keluarga, dan beristirahat. Bentuk rumah panggung juga membantu mengurangi risiko kelembapan serta menyesuaikan bangunan dengan kondisi lingkungan setempat.',
    imageUrl: 'assets/images/rumah bubungan lima.jpeg',
  ),
  House(
    id: '24',
    name: 'Rumah Dalam Loka',
    province: 'Nusa Tenggara Barat',
    tribe: 'Suku Sumbawa',
    description:
        'Dalam Loka merupakan rumah adat tradisional masyarakat Sumbawa yang berasal dari Nusa Tenggara Barat. Rumah ini dahulu digunakan sebagai tempat tinggal Sultan Sumbawa dan keluarganya sekaligus menjadi pusat kegiatan pemerintahan kerajaan. Nama Dalam Loka memiliki makna yang berkaitan dengan lingkungan atau tempat kediaman kerajaan.',
    characteristics:
        'Ciri khasnya adalah bentuk rumah panggung yang berukuran besar dan memiliki dua bangunan kembar yang disatukan menjadi satu kesatuan. Rumah ini dibangun menggunakan kayu dengan struktur penyangga yang kuat serta memiliki tangga menuju pintu utama. Bagian dalamnya terdiri atas berbagai ruangan yang dahulu digunakan untuk kegiatan kerajaan, menerima tamu, dan aktivitas keluarga kesultanan. Dalam Loka menjadi bukti perkembangan arsitektur tradisional serta sejarah kerajaan Sumbawa.',
    imageUrl: 'assets/images/rumah dalam loka.jpeg',
  ),
  House(
    id: '25',
    name: 'Rumah Gadang',
    province: 'Sumatra Barat',
    tribe: 'Suku Minangkabau',
    description:
        'Rumah Gadang merupakan rumah adat masyarakat Minangkabau yang berasal dari Sumatra Barat. Rumah ini bukan hanya berfungsi sebagai tempat tinggal keluarga besar, tetapi juga menjadi simbol identitas, kebudayaan, dan sistem kekerabatan matrilineal masyarakat Minangkabau. Rumah Gadang biasanya dihuni oleh keluarga besar dari garis keturunan ibu dan menjadi tempat berlangsungnya berbagai kegiatan keluarga maupun adat.',
    characteristics:
        'Ciri khasnya adalah bentuk atap yang melengkung ke atas menyerupai tanduk kerbau dan dikenal dengan sebutan gonjong. Bangunannya berbentuk rumah panggung dengan ukuran yang cukup besar, memiliki banyak tiang penyangga, serta dihiasi ukiran tradisional bermotif tumbuhan, hewan, dan bentuk geometris. Rumah Gadang juga memiliki jumlah ruang yang disesuaikan dengan kebutuhan keluarga dan jumlah perempuan yang tinggal di dalamnya.',
    imageUrl: 'assets/images/rumah gadang.jpeg',
  ),
  House(
    id: '26',
    name: 'Rumah Joglo',
    province: 'Jawa Tengah',
    tribe: 'Suku Jawa',
    description:
        'Rumah Joglo merupakan rumah adat tradisional masyarakat Jawa yang banyak ditemukan di wilayah Jawa Tengah. Rumah ini dahulu banyak digunakan oleh keluarga bangsawan dan masyarakat yang memiliki kedudukan sosial tertentu, tetapi kemudian berkembang menjadi salah satu bentuk arsitektur rumah tradisional Jawa.',
    characteristics:
        'Rumah Joglo memiliki bentuk atap yang khas, yaitu bagian tengahnya menjulang tinggi dengan susunan atap yang bertingkat. Ciri khas utamanya adalah penggunaan empat tiang utama yang disebut Soko Guru untuk menopang bagian tengah atap. Bangunannya menggunakan kayu sebagai bahan utama, terutama kayu jati yang terkenal kuat dan tahan lama. Rumah Joglo biasanya memiliki beberapa bagian ruangan, seperti pendopo untuk menerima tamu, pringgitan untuk kegiatan tertentu, dan omah njero sebagai ruang keluarga. Bentuk bangunan ini mencerminkan nilai kesopanan, keharmonisan, dan filosofi kehidupan masyarakat Jawa.',
    imageUrl: 'assets/images/rumah joglo.jpeg',
  ),
  House(
    id: '27',
    name: 'Rumah Kasepuhan Cirebon',
    province: 'Jawa Barat',
    tribe: 'Suku Cirebon / Sunda',
    description:
        'Rumah Kasepuhan Cirebon merupakan bangunan tradisional yang berkembang dalam lingkungan Keraton Kasepuhan di Cirebon, Jawa Barat. Arsitektur bangunannya memperlihatkan perpaduan budaya Jawa, Sunda, Islam, Tiongkok, dan unsur kebudayaan lainnya yang berkembang melalui hubungan perdagangan dan penyebaran agama pada masa lampau. Bangunan ini memiliki fungsi sebagai tempat tinggal keluarga keraton sekaligus tempat berlangsungnya berbagai kegiatan pemerintahan dan adat kerajaan.',
    characteristics:
        'Ciri khasnya adalah bentuk atap tradisional yang memiliki susunan bertingkat, penggunaan kayu dan batu bata, serta ornamen yang memperlihatkan perpaduan berbagai kebudayaan. Beberapa bagian bangunannya juga dihiasi dengan ukiran dan keramik yang memiliki pengaruh budaya Tiongkok. Rumah Kasepuhan Cirebon menjadi bukti sejarah perkembangan kerajaan dan akulturasi budaya di wilayah Jawa Barat.',
    imageUrl: 'assets/images/rumah kasepuhan cirebon.jpeg',
  ),
  House(
    id: '28',
    name: 'Rumah Kebaya',
    province: 'DKI Jakarta',
    tribe: 'Suku Betawi',
    description:
        'Rumah Kebaya merupakan rumah adat tradisional masyarakat Betawi yang berasal dari DKI Jakarta. Nama Rumah Kebaya diambil dari bentuk atapnya yang apabila dilihat dari samping menyerupai lipatan pakaian kebaya. Rumah ini dahulu banyak digunakan sebagai tempat tinggal masyarakat Betawi dan memiliki desain yang menyesuaikan dengan kondisi lingkungan tropis.',
    characteristics:
        'Ciri khasnya adalah bentuk atap yang memiliki beberapa bagian miring, teras depan yang luas, serta penggunaan kayu dan bahan alami dalam konstruksi bangunannya. Rumah Kebaya biasanya memiliki bagian teras atau paseban yang digunakan untuk menerima tamu dan berkumpul bersama keluarga. Bagian jendela dan pintunya juga memiliki bentuk khas dengan pengaruh budaya Betawi. Rumah ini sering dihiasi dengan ornamen gigi balang yang menjadi salah satu simbol identitas budaya masyarakat Betawi.',
    imageUrl: 'assets/images/rumah kebaya.jpeg',
  ),
  House(
    id: '29',
    name: 'Rumah Krong Bade',
    province: 'Aceh',
    tribe: 'Suku Aceh',
    description:
        'Rumah Krong Bade atau Rumoh Aceh merupakan rumah adat tradisional masyarakat Aceh yang memiliki bentuk rumah panggung dengan konstruksi kayu yang kuat. Rumah ini digunakan sebagai tempat tinggal keluarga dan dirancang untuk menyesuaikan diri dengan kondisi alam serta kebiasaan masyarakat Aceh.',
    characteristics:
        'Bentuk bangunannya memiliki lantai yang ditinggikan dari permukaan tanah dengan tiang-tiang penyangga yang kokoh. Ciri khasnya adalah atap yang berbentuk pelana atau memiliki kemiringan tertentu, tangga di bagian depan, serta dinding dan lantai yang terbuat dari kayu. Rumah ini biasanya memiliki ukiran khas Aceh pada bagian pintu, jendela, dan dinding bangunan. Di dalamnya terdapat beberapa bagian ruangan, seperti serambi depan, ruang tengah, dan serambi belakang yang masing-masing memiliki fungsi berbeda. Rumah Krong Bade juga mencerminkan nilai kesopanan, kekeluargaan, dan kehidupan religius masyarakat Aceh.',
    imageUrl: 'assets/images/rumah krong bade.jpeg',
  ),
  House(
    id: '30',
    name: 'Rumah Limas',
    province: 'Sumatra Selatan',
    tribe: 'Suku Palembang',
    description:
        'Rumah Limas merupakan rumah adat tradisional masyarakat Sumatra Selatan yang terkenal dengan bentuk atapnya menyerupai limas. Rumah ini dahulu banyak digunakan oleh keluarga bangsawan dan masyarakat Palembang sebagai tempat tinggal serta tempat melaksanakan kegiatan adat.',
    characteristics:
        'Bangunannya berbentuk rumah panggung yang menggunakan kayu berkualitas tinggi, seperti kayu unglen atau kayu besi, sehingga memiliki konstruksi yang kuat. Ciri khasnya adalah atap berbentuk limas, lantai yang dibuat bertingkat-tingkat, serta ruangan yang memiliki perbedaan ketinggian sesuai dengan fungsi dan kedudukan dalam kegiatan adat. Tingkatan lantai tersebut dikenal sebagai bengkilas dan biasanya digunakan untuk mengatur posisi tamu berdasarkan kepentingan acara. Rumah Limas juga dihiasi dengan ukiran khas Palembang yang memiliki motif tumbuhan dan bentuk geometris. Keindahan bangunannya menunjukkan kekayaan seni dan budaya masyarakat Sumatra Selatan.',
    imageUrl: 'assets/images/rumah limas.jpeg',
  ),
  House(
    id: '31',
    name: 'Rumah Nuwo Sesat',
    province: 'Lampung',
    tribe: 'Suku Lampung',
    description:
        'Rumah Nuwo Sesat merupakan rumah adat masyarakat Lampung yang pada awalnya digunakan sebagai tempat berkumpul, bermusyawarah, dan melaksanakan berbagai kegiatan adat masyarakat. Kata Nuwo berarti rumah, sedangkan Sesat berkaitan dengan tempat pertemuan atau musyawarah adat.',
    characteristics:
        'Bangunan ini memiliki bentuk rumah panggung dengan tiang-tiang penyangga kayu yang cukup tinggi. Ciri khasnya adalah atap berbentuk limas atau pelana dengan bagian bangunan yang dihiasi ornamen tradisional Lampung. Rumah Nuwo Sesat biasanya memiliki ruang terbuka yang luas untuk menampung masyarakat ketika melaksanakan pertemuan adat. Salah satu bagian yang sering ditemukan adalah tangga dan beranda di bagian depan bangunan. Rumah ini juga dapat dihiasi ornamen khas seperti siger yang melambangkan identitas dan kebudayaan masyarakat Lampung.',
    imageUrl: 'assets/images/rumah nuwou sesat.jpeg',
  ),
  House(
    id: '32',
    name: 'Rumah Panggung Kajang Lako',
    province: 'Jambi',
    tribe: 'Suku Melayu Jambi',
    description:
        'Rumah Panggung Kajang Lako merupakan rumah adat tradisional masyarakat Melayu Jambi yang memiliki bentuk bangunan panggung dengan arsitektur khas. Rumah ini dahulu digunakan sebagai tempat tinggal keluarga dan menjadi bagian penting dari kehidupan masyarakat Melayu Jambi.',
    characteristics:
        'Bentuk bangunannya memanjang dengan struktur kayu yang ditopang oleh tiang-tiang tinggi sehingga bagian utama rumah tidak langsung bersentuhan dengan tanah. Ciri khasnya adalah atap yang disebut Kajang Lako, yaitu atap berbentuk melengkung menyerupai perahu terbalik. Rumah ini juga memiliki beberapa ruangan dengan fungsi berbeda, seperti ruang pelamban untuk menerima tamu, ruang gaho untuk menyimpan barang, dan ruang utama untuk kegiatan keluarga. Bagian bangunannya dihiasi ukiran bermotif tumbuhan dan bentuk geometris yang memiliki makna filosofis. Rumah Kajang Lako mencerminkan nilai kehidupan masyarakat Melayu Jambi yang menjunjung tinggi adat, kesopanan, dan kebersamaan.',
    imageUrl: 'assets/images/rumah panggung kajang lako (1).jpeg',
  ),
  House(
    id: '33',
    name: 'Rumah Rakit',
    province: 'Sumatra Selatan',
    tribe: 'Suku Melayu Palembang',
    description:
        'Rumah Rakit merupakan rumah adat tradisional masyarakat yang berkembang di wilayah perairan Sumatra Selatan, terutama di sekitar Sungai Musi, Palembang. Rumah ini memiliki bentuk yang unik karena dibangun di atas rakit sehingga dapat mengapung dan mengikuti perubahan permukaan air sungai. Dahulu, rumah ini digunakan sebagai tempat tinggal masyarakat yang kehidupannya sangat dekat dengan aktivitas sungai, seperti perdagangan, transportasi, dan kegiatan sehari-hari.',
    characteristics:
        'Ciri khasnya adalah bagian dasar bangunan yang menggunakan susunan bambu atau kayu sebagai pelampung, sementara bagian atasnya dibuat menggunakan kayu dan bahan bangunan tradisional. Rumah Rakit biasanya dilengkapi dengan atap berbentuk pelana atau limas serta memiliki pintu dan jendela untuk sirkulasi udara. Rumah ini umumnya ditambatkan pada tiang di tepi sungai agar tidak terbawa arus. Keberadaan Rumah Rakit memperlihatkan kemampuan masyarakat Sumatra Selatan dalam menyesuaikan bentuk tempat tinggal dengan lingkungan perairan.',
    imageUrl: 'assets/images/rumah rakit.jpeg',
  ),
  House(
    id: '34',
    name: 'Rumah Selaso Jatuh Kembar',
    province: 'Riau',
    tribe: 'Suku Melayu Riau',
    description:
        'Rumah Selaso Jatuh Kembar merupakan rumah adat tradisional masyarakat Melayu Riau yang dahulu digunakan sebagai tempat pertemuan, musyawarah, dan pelaksanaan berbagai kegiatan adat. Nama Selaso Jatuh Kembar berkaitan dengan bentuk bangunannya yang memiliki dua bagian selasar atau lantai yang posisinya lebih rendah dibandingkan ruang tengah.',
    characteristics:
        'Rumah ini umumnya berbentuk rumah panggung dengan struktur bangunan yang menggunakan kayu sebagai bahan utama. Ciri khasnya adalah dua selasar yang memiliki ketinggian berbeda, atap berbentuk limas atau bersusun, serta ornamen ukiran khas Melayu yang menghiasi bagian bangunan. Rumah ini memiliki ruang terbuka yang luas agar dapat digunakan untuk berkumpul dan melaksanakan kegiatan masyarakat. Motif hiasannya biasanya terinspirasi dari tumbuhan dan alam yang memiliki makna filosofis dalam kebudayaan Melayu. Rumah Selaso Jatuh Kembar melambangkan kebersamaan, musyawarah, dan penghormatan terhadap adat istiadat.',
    imageUrl: 'assets/images/rumah selaso jatuh kembar.jpeg',
  ),
  House(
    id: '35',
    name: 'Rumah Sasadu',
    province: 'Maluku Utara',
    tribe: 'Suku Sahu',
    description:
        'Rumah Sasadu merupakan rumah adat tradisional masyarakat suku Sahu yang berasal dari Pulau Halmahera, Maluku Utara. Rumah ini memiliki fungsi utama sebagai tempat berkumpul, bermusyawarah, melaksanakan upacara adat, serta merayakan berbagai kegiatan masyarakat. Sasadu tidak digunakan sebagai tempat tinggal sehari-hari, melainkan lebih difungsikan sebagai bangunan bersama untuk kepentingan adat dan sosial.',
    characteristics:
        'Ciri khasnya adalah bentuk bangunan yang terbuka tanpa dinding, memiliki banyak tiang penyangga, serta atap berbentuk memanjang yang terbuat dari daun sagu atau bahan alami lainnya. Bagian atapnya memiliki bentuk yang unik dengan ujung-ujung yang menonjol dan dihiasi ornamen tradisional. Rumah Sasadu juga memiliki beberapa tiang dengan fungsi tertentu yang berkaitan dengan aturan dan filosofi adat masyarakat Sahu. Bangunan ini mencerminkan nilai persatuan, kebersamaan, dan semangat gotong royong masyarakat Maluku Utara.',
    imageUrl: 'assets/images/sasadu.jpeg',
  ),
  House(
    id: '36',
    name: 'Rumah Souraja',
    province: 'Sulawesi Tengah',
    tribe: 'Suku Kaili',
    description:
        'Rumah Souraja atau Banua Oge merupakan rumah adat tradisional masyarakat suku Kaili yang berasal dari Sulawesi Tengah, khususnya wilayah Palu. Pada masa dahulu, rumah ini digunakan sebagai tempat tinggal raja atau keluarga bangsawan sehingga memiliki bentuk bangunan yang cukup besar dan megah.',
    characteristics:
        'Rumah Souraja berbentuk rumah panggung dengan konstruksi utama yang menggunakan kayu berkualitas tinggi. Ciri khasnya adalah atap berbentuk piramida atau limas yang memiliki beberapa tingkatan, tiang-tiang penyangga yang kokoh, serta tangga di bagian depan rumah. Bagian dinding, pintu, dan jendelanya sering dihiasi ukiran dengan motif tradisional yang memiliki makna tertentu. Rumah ini juga memiliki pembagian ruangan yang digunakan untuk menerima tamu, melaksanakan kegiatan keluarga, dan menjalankan aktivitas sehari-hari. Souraja menjadi simbol kebesaran kerajaan dan kekayaan arsitektur tradisional masyarakat Kaili.',
    imageUrl: 'assets/images/souraja.jpeg',
  ),
  House(
    id: '37',
    name: 'Rumah Tongkonan',
    province: 'Sulawesi Selatan',
    tribe: 'Suku Toraja',
    description:
        'Rumah Tongkonan merupakan rumah adat tradisional masyarakat suku Toraja yang berasal dari Sulawesi Selatan. Rumah ini memiliki kedudukan yang sangat penting dalam kehidupan masyarakat Toraja karena tidak hanya berfungsi sebagai tempat tinggal, tetapi juga menjadi simbol identitas keluarga dan pusat pelaksanaan berbagai kegiatan adat.',
    characteristics:
        'Tongkonan memiliki bentuk atap yang sangat khas, yaitu melengkung dan menjulang pada kedua ujungnya sehingga menyerupai bentuk perahu. Ciri khas lainnya adalah bangunan yang berdiri di atas tiang-tiang kayu, dinding yang dihiasi ukiran tradisional, serta penggunaan warna merah, hitam, kuning, dan putih pada bagian dekorasinya. Ukiran Tongkonan memiliki berbagai makna yang berkaitan dengan kehidupan, alam, kepercayaan, dan status sosial masyarakat. Di bagian depan rumah biasanya terdapat susunan tanduk kerbau yang menjadi simbol status dan kemampuan keluarga dalam pelaksanaan upacara adat. Tongkonan juga menjadi tempat berkumpulnya keluarga besar dan menjaga hubungan kekerabatan masyarakat Toraja.',
    imageUrl: 'assets/images/tongkonan.jpeg',
  ),
  House(
    id: '38',
    name: 'Rumah Walewangko',
    province: 'Sulawesi Utara',
    tribe: 'Suku Minahasa',
    description:
        'Rumah Walewangko merupakan rumah adat tradisional masyarakat Minahasa yang berasal dari Sulawesi Utara. Rumah ini digunakan sebagai tempat tinggal keluarga dan mencerminkan kehidupan masyarakat Minahasa yang menjunjung tinggi nilai kekeluargaan serta kebersamaan.',
    characteristics:
        'Walewangko memiliki bentuk rumah panggung dengan ukuran yang cukup besar dan struktur bangunan yang menggunakan kayu sebagai bahan utama. Ciri khasnya adalah tangga yang biasanya terdapat di bagian depan rumah dan memiliki dua jalur pada beberapa bentuk bangunan tradisionalnya. Rumah ini memiliki atap berbentuk pelana dengan bagian ujung yang melebar serta ruang dalam yang dibagi menjadi beberapa bagian sesuai kebutuhan keluarga. Dinding dan bagian depan rumah biasanya dihiasi ukiran atau ornamen khas Minahasa. Rumah Walewangko juga memiliki ruang depan yang digunakan untuk menerima tamu dan berkumpul bersama keluarga. Bentuk bangunan ini memperlihatkan keahlian masyarakat Minahasa dalam membangun rumah yang kuat, nyaman, dan sesuai dengan kondisi alam Sulawesi Utara.',
    imageUrl: 'assets/images/walewangko.jpeg',
  ),
];

// PENGELOLA FAVORIT GLOBAL
class FavoriteManager {
  static final ValueNotifier<List<House>> favoriteHouses = ValueNotifier<List<House>>([]);

  static void toggleFavorite(House house) {
    final currentList = List<House>.from(favoriteHouses.value);
    final index = currentList.indexWhere((item) => item.id == house.id);

    if (index >= 0) {
      currentList.removeAt(index);
    } else {
      currentList.add(house);
    }

    favoriteHouses.value = currentList;
  }

  static bool isFavorite(String houseId) {
    return favoriteHouses.value.any((item) => item.id == houseId);
  }
}