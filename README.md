# Database_ServiceMobil
- Mengelola data Jasa Service
- Mengelola data Part Kendaraan
- Mengelola data Mekanik
- Mengelola data Transaksi dan Pembayaran
   

## TI.22.A4

| KELOMPOK 2 | Link Pengerjaan tugas                               |
| --------   | --------------------------------------------------- |
| Gilar Sumilar | [ER-D](https://github.com/GilarSumilar/Database_ServiceMobil/tree/main/ER-D)|
| Ricky Alfian       | [DDL](https://github.com/GilarSumilar/Database_ServiceMobil/tree/main/DDL)|
| Rizky Dito | [SQL_QRUD](https://github.com/GilarSumilar/Database_ServiceMobil/tree/main/SQL%20CRUD)|
| Azzam Sauki  | [SQL_JOIN](https://github.com/GilarSumilar/Database_ServiceMobil/tree/main/SQL%20JOIN)|
| LAPORAN  | [Link](https://github.com/GilarSumilar/Database_ServiceMobil/tree/main/LAPORAN)|
| YouTube  | [YOUTUBE() |

# ER-D
![Image](ER-D/Upload%20ulang%20ERD.png)


### Berdasarkan perintah diatas. Berikut ini adalah entitas-entitas yang dibutuhkan untuk database ServiceMobil:

Berdasarkan perintah diatas. Berikut ini adalah entitas-entitas yang dibutuhkan untuk database Peminjaman Ruang Kelas:

- tb_pelanggan: Merepresentasikan informasi mengenai pelanggan yang beratribut: id_pelanggan(primary key), nama, alamat, no_tlp.

- tb_mobil: Merepresentasikan informasi mengenai mobil pelanggan yang beratribut: no_plat(primary key), model, merek, warna, id_pelanggan sebagai foreign key.

- tb_perbaikan: Merepresentasikan perbaikan mobil yang di lakukan oleh montir. Contoh atribut: no_plat sebagai foreign key, id_montir sebagai foreign key, , id_transaksi sebagai foreign key, id_sparepart sebagai foreign key, harga, ket(Catatan montir).

- tb_montir: Merepresentasikan data pada seorang montir. Contoh atribut: id_montir(primary key), nama.

- tb_sparepart: Merepresentasikan data dari sparepart mobil yg di miliki oleh bengkel, dengan atribut: id_sparepart(primary key), nama, harga, stok.

- tb_transaksi: Merepresentasikan informasi mengenai transaksi ServiceMobil, dengan menghubungkan id_transaksi -> tb_perbaikan serta mengambil id_pelanggan. beratribut: id_transaksi(primary key), id_pelanggan sebagai foreign key, & tanggal 

Itu adalah beberapa entitas beserta atribut yang dibutuhkan untuk mengelola database ServiceMobil.

### Setiap tabel yang berhubungan satu sama lain.
![image](DDL/Database%20Service%20Mobil.jpeg)



