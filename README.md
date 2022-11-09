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
