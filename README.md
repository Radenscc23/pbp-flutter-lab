# counter_7

### Pertanyaan dalam Tugas 7

1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
* Stateless widget: Stateless widget merupakan sebuah widget dalam flutter yang tidak dinamis dan 
tidak dapat diubah. Beberapa contoh diantaranya `Icon`, `IconButton`, dan `Text`
* Stateful widget: Stateful widgt merupakan sebuah widget dalam flutter yang dinamis dan dapat berubah
sesuai dengan interaksi dengan user. Beberapa contoh diantaranya `Checkbox`, `InkWell`, maupun `form`

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
* Spacer: digunakan untuk membuat spasi diantara widget dalam flex container, seperti baris ataupun kolom
* FloatingActionButton: digunakan untuk menampilkan button lingkaran yang melayang
* Text: widget untuk menampilkan teks
* Row: widget untuk menampilkan widget children di tepi kanan maupun kiri
* Padding: menaruh spasi di sekitar child widget

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
* setState() digunaan sebagai fungsi untuk mengubah suatu nilai dalam variabel di program yang sudah 
dibuat
* Yang terdampak diantaranya segala variabel yang bernilai `const` maupun `final`

4. Jelaskan perbedaan antara const dengan final.
* `const` dan `final` merupakan dua variabel yang sama-sama `immutable` dalam bahasa Dart.
Akan tetapi, perbedaan mencoloknya adalah `const` membuat sebuah variabel menjadi konstan 
saat waktu `compile-time`. Dengan demikian, sebuah object dalam state ini akan menjadi
`frozen` dan `completely immutable`

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
* Membuat program dengan nama counter_7
* Menambah beberapa lines of code dalam main.dart seperti berikut

```
  void _decrementCounter() {
  setState((){
  //Tells the flutter to decrement
  if (_counter > 0)
  _counter --;
  });
  }
```

* Lines of code diatas digunakan untuk memberikan nilai decrement saat menekan 
tombol -
* Lalu saya menambahkan beberapa kondisi yang mengatur warna pada saat counter
genap ataupun ganjil. Selain itu, saya juga menambahkan kondisi dimana tombol
akan meremove tombol - apabila counter bernilai 0


### Pertanyaan tugas 8
1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
* Perbedaan terletak pada penampilan route dimana pada Navigator.pushReplacemenet route yang sebelumnya 
ditampilkan akan dibuang
* Navigator.push akan menyimpan route di dalam stack

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
* Scaffold = untuk mengatur layout basic widget
* Center = mengatur layout widget menjadi center
* Row = mengatur layout widget berbentuk baris

3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
* onSaved
* onTab
* onChange

4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
* Navigator berfungsi untuk menyimpan stack dari berbagai route yang digunakan untuk app. 
Terdapat pop untuk mengarahan kembali ke page sebelumnya, sementara push digunakan untuk berpindah
ke route yang diberikan

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
* Membuat models.dart untuk menampilkan model
* Membuat drawer.dart untuk menampilkan tampilan menu dalam bentuk hamburger
* Mengisi form.dart untuk mengisi pemasukan maupun pengeluaran dengan harga dan tanggal
* Mengisi hasil.dart untuk mengeluarkan hasil dalam bentuk card

### Pertanyaan tugas 9
1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya,
apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
* Kita tetap dapat melakukan pengambilan data JSON. Akan tetapi, akan lebih baik apabila  membuat model
terlebih dahulu dikarenakan data yang diambil sulit disimpan secara terstruktur

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
* Inkwell = memberikan behaviour klik pada widgetnya
* checkBox = mengubah status watched dan not watched
* Center = menampilkan child widget dengan alignment center

3. Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
* Sebuah data yang difetch pada API endpoint
* Data tersebut kemudian di decode menjadi bentuk JSON
* Data dalam JSON kemudian dikonversi dengan model
* Data dalam bentuk model ditampilkan dalam bentuk Flutter

4. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
* Membuat models terlebih dahulu untuk menyesuaikan dengan mywatchlist pada tugas 3
* Membuat page mywatchlist dan mywatchlist detail (sama seperti views.py)
* Menambahkan const pada drawer.dart untuk dapat menampilkan tampilan dari mywatchlist
beserta detailnya