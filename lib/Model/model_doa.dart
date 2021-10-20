class ModelDoa {
  // var untuk tampilan luar
  String imagecover,titlecover;

  // var untuk tampilan dalam, doa yang sebelum...
  String title1, arab1, latin1, translate1;

  // var untuk tampilan dalam, doa yang sesudah...
  String? title2, arab2, latin2, translate2;

  //buat constractor dari si class
   ModelDoa({
     required this.imagecover,
     required this.titlecover,
     required this.title1,
     required this.arab1,
     required this.latin1,
     required this.translate1,
      this.title2,
      this.arab2,
      this.latin2,
      this.translate2,
});
}

var dataListDoa = [
  // doa makan,berpakaian,kamar mandi,tidur,rumah,bercermin,doa belajar,doa wudhu

  //DOA BERPAKAIAN
  ModelDoa(
      imagecover: 'assets/doa_pakaian.png',
      titlecover: 'Doa Berpakaian',
      title1: 'Doa Sebelum Berpakaian',
      arab1: 'الْحَمْدُ لِلَّهِ الَّذِي كَسَانِي هَذَا وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِنِّي ولا قوةٍ',
      latin1: 'Alhamdu lillaahil ladzii kasaanii haadzaa wa rozaqoniihi min ghoiri hawlim minni wa laa quwwatin.',
      translate1: 'Segala puji bagi Allah yang telah memberikan pakaian ini dan menganugerahkannya kepadaku tapa daya dan kekuatan dariku, pakaian yang dengannya aku menutup auratku dan dengannya aku memperindah diriku dalam hidupku',
      title2: 'Doa Seteleh Berpakaian',
      arab2: 'بِسْمِ اللهِ',
      latin2: 'Bismillaah',
      translate2: 'Dengan nama Allah'),

  //DOA MAKAN
  ModelDoa(
      imagecover: 'assets/doa_makan.png',
      titlecover: 'Doa Makan',
      title1: 'Doa Sebelum Makan',
      arab1: 'بِسْمِ اللهِ',
      latin1: 'Bismillaah',
      translate1: 'Dengan nama Allah',
      title2: 'Doa Setelah Makan',
      arab2: 'الْحَمْدُ لِلَّهِ الَّذِى أَطْعَمَنِى هَذَا وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِنِّى وَلاَ قُوَّةٍ',
      latin2: 'Alhamdulillaahilladzii ath’amanii haadzaa wa rozaqoniihi min ghoiri haulin minnii wa laa quwwatin',
      translate2: 'Segala puji bagi Allah yang telah memberiku makanan ini, dan merizkikan kepadaku tanpa daya serta kekuatan dariku'),

  //DOA KAMAR MANDI
  ModelDoa(
      imagecover: 'assets/doa_kamar_mandi.png',
      titlecover: 'Doa masuk dan keluar kamar mandi',
      title1: 'Doa masuk kamar mandi',
      arab1: 'بِسْمِ اللهِ، اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْخُبُثِ وَالْخَبَائِثِِ',
      latin1: 'Bismillaah, Allaahumma Innii A’uudzu bika Minal Khubutsi Wal Khabaa-its',
      translate1: 'Dengan menyebut nama Allah, Sesungguhnya aku berlindung kepada Allah dari jin laki-laki dan jin perempuan',
      title2: 'Doa keluar kamar mandi',
      arab2: 'غُفْرَانَكٍَ',
      latin2: 'Ghuf-raanak',
      translate2: 'Ya Allah, hamba memohon ampunan Mu'),

  //DOA TIDUR
  ModelDoa(
      imagecover: 'assets/doa_tidur.png',
      titlecover: 'Doa tidur dan bangun tidur',
      title1: 'Doa Tidur',
      arab1: 'بِاسْمِكَ اللَّهُمَّ أموتُ وَ أَحْيَا',
      latin1: 'Bismika Allohumma Amuutu wa ahyaa',
      translate1: 'dengan menyebut nama-Mu Ya Allah, aku mati dan aku hidup',
      title2: 'Doa Bangun Tidur',
      arab2: 'الحَمْدُ للهِ الَّذِي أَحْيَانَا بعْدَ مَا أماتَنَا وإِلَيْهِ النُّشُورُ',
      latin2: 'ALHAMDU LILLAHILLADZI AHYAANAA BA’DA MAA AMAATANAA WA ILAIHIN NUSYUUR',
      translate2: 'segala puji bagi Allah yang telah menghidupkan kami setelah mematikan kami dan hanya kepada-Nya kami kembali'),

  //DOA RUMAH
  ModelDoa(
      imagecover: 'assets/doa_rumah.png',
      titlecover: 'Doa masuk dan keluar rumah',
      title1: 'Doa masuk rumah',
      arab1: 'بِسْمِ اللهِ وَلَجْنَا، وَبِسْمِ اللهِ خَرَجْنَا، وَعَلَى رَبِّنَا تَوَكَّلْنَا',
      latin1: 'Bismillahi walajnaa wa bismillahi kharajnaa wa-alallaahi rabbina tawak-kalnaa',
      translate1: 'Dengan nama Allah, kami masuk (ke rumah), dengan nama Allah, kami keluar (darinya) dan kepada Tuhan kami, kami bertawakkal',
      title2: 'Doa keluar rumah',
      arab2: 'بِسْمِ اللهِ تَوَكَّلْتُ عَلَى اللهِ، لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللهِ',
      latin2: 'Bismillahi, tawakkaltu ’alallah, laa haula wa laa quwwata illaa billaah',
      translate2: 'Dengan nama Allah, aku bertawakkal kepada Allah. Tiada daya dan kekuatan kecuali dengan Allah'),

  //DOA BERCERMIN
  ModelDoa(
      imagecover: 'assets/doa_cermin.png',
      titlecover: 'Doa bercermin',
      title1: 'Doa bercermin',
      arab1: 'اَللّٰهُمَّ كَمَا حَسَّـنْتَ خَلْقِـيْ فَحَسِّـنْ خُلُقِـي',
      latin1: 'Allohumma kamaa hassanta kholqii fahassin khuluqii',
      translate1: 'Ya Allah sebagaimana Engkau telah ciptakan aku dengan baik, maka perbaikilah akhlakku'),

  //DOA BELAJAR
  ModelDoa(
      imagecover: 'assets/doa_cermin.png',
      titlecover: 'Doa Belajar ',
      title1: 'Doa belajar',
      arab1: 'رَضِتُ بِااللهِ رَبَا وَبِالْاِسْلاَمِ دِيْنَا وَبِمُحَمَّدٍ نَبِيَا وَرَسُوْلاَ رَبِّ زِدْ نِيْ عِلْمًـاوَرْزُقْنِـيْ فَهْمًـا',
      latin1: 'Rodhitu billahirobba, wabil islaamidina, wabi-muhammadin nabiyyaw warosula. Robbi zidnii ilmaa warzuqnii fahmaa',
      translate1: 'Aku ridho Allah sebagai Tuhanku, Islam sebagai agamaku, dan Nabi Muhammad sebagai Nabi dan Rasul. Ya Allah, tambahkanlah kepadaku ilmu dan berikanlah aku pengertian yang baik'),

  //DOA WULDHU
  ModelDoa(
      imagecover: 'assets/doa_wudhu.png',
      titlecover: 'Doa setelah wuldhu ',
      title1: 'Doa setelah berwuldhu',
      arab1: 'أَشْهَدُ أَنْ لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ وَأَشْهَدُ أَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُوْلُهاَللَّهُمَّ اجْعَلْنِيْ مِنَ التَّوَّابِيْنَ وَاجْعَلْنِيْ مِنَ الْمُتَطَهِّرِيْنَُ',
      latin1: 'ASY-HADU ALLA ILAAHA ILLALLAH WAHDAHU LAA SYARIKALAH WA ASYHADU ANNA MUHAMMADAN ‘ABDUHU WA ROSULUH, ALLOHUMMAJ’ALNII MINATTAWWAABIINA WAJ’ALNII MINAL MUTATHOHHIRIIN',
      translate1: 'Aku bersaksi bahwasanya tiada sesembahan yang benar kecuali Allah semata, tidak ada sekutu bagi-Nya, dan aku bersaksi bahwasanya Muhammad adalah hamba dan utusan-Nya'),

];