/*
 Navicat Premium Data Transfer

 Source Server         : Leonardo
 Source Server Type    : MySQL
 Source Server Version : 100424 (10.4.24-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : ukk_gudang

 Target Server Type    : MySQL
 Target Server Version : 100424 (10.4.24-MariaDB)
 File Encoding         : 65001

 Date: 20/02/2025 13:06:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for detailpenjualan
-- ----------------------------
DROP TABLE IF EXISTS `detailpenjualan`;
CREATE TABLE `detailpenjualan`  (
  `id_detail` int NOT NULL AUTO_INCREMENT,
  `id_penjualan` int NULL DEFAULT NULL,
  `id_produk` int NULL DEFAULT NULL,
  `jumlah_produk` int NULL DEFAULT NULL,
  `subtotal` decimal(10, 2) NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_detail`) USING BTREE,
  INDEX `jumlah`(`jumlah_produk` ASC) USING BTREE,
  INDEX `subtotal`(`subtotal` ASC) USING BTREE,
  INDEX `tanggal`(`tanggal` ASC) USING BTREE,
  INDEX `id_penjualan`(`id_penjualan` ASC) USING BTREE,
  INDEX `id_detail`(`id_detail` ASC) USING BTREE,
  INDEX `id_Produk`(`id_produk` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detailpenjualan
-- ----------------------------
INSERT INTO `detailpenjualan` VALUES (10, 2, 1, 3, 30000.00, '2025-02-05');
INSERT INTO `detailpenjualan` VALUES (11, 2, 2, 3, 60000.00, '2025-02-05');
INSERT INTO `detailpenjualan` VALUES (12, 3, 2, 2, 40000.00, '2025-02-12');
INSERT INTO `detailpenjualan` VALUES (13, 4, 3, 2, 20000.00, '2025-02-12');
INSERT INTO `detailpenjualan` VALUES (14, 5, 1, 3, 30000.00, '2025-02-12');
INSERT INTO `detailpenjualan` VALUES (15, 5, 2, 2, 40000.00, '2025-02-12');
INSERT INTO `detailpenjualan` VALUES (16, 6, 2, 10, 200000.00, '2025-02-18');
INSERT INTO `detailpenjualan` VALUES (18, 7, 6, 10, 70000.00, '2025-02-18');
INSERT INTO `detailpenjualan` VALUES (19, 7, 6, 3, 30000.00, '2025-02-18');
INSERT INTO `detailpenjualan` VALUES (27, 6, 5, 10, 80000.00, '2025-02-19');
INSERT INTO `detailpenjualan` VALUES (29, 8, 5, 10, 80000.00, NULL);
INSERT INTO `detailpenjualan` VALUES (30, 8, 5, 10, 80000.00, NULL);
INSERT INTO `detailpenjualan` VALUES (31, 8, 4, 10, 80000.00, '2025-02-20');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `tabel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `metode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `aktivitas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_log`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (7, 'Produk', 'INSERT', 'Nama Produk: Yakult, Harga: 5000.00, Stok: 100, Harga Awal: 4000.00');
INSERT INTO `log` VALUES (8, 'Produk', 'UPDATE', 'Nama Produk: Sosis Kanzler, Harga: 8000.00, Stok: 141, Harga Awal: 6000.00');
INSERT INTO `log` VALUES (9, 'Detail Penjualan', 'DELETE', 'ID Detail: 33, ID Penjualan: 8, ID Produk: 5, Jumlah Produk: 1, Sub Total: 100000.00, Tanggal: 2025-02-20');
INSERT INTO `log` VALUES (10, 'Produk', 'UPDATE', 'Nama Produk: Sosis Kanzler, Harga: 8000.00, Stok: 151, Harga Awal: 6000.00');
INSERT INTO `log` VALUES (11, 'Detail Penjualan', 'DELETE', 'ID Detail: 32, ID Penjualan: 8, ID Produk: 5, Jumlah Produk: 10, Sub Total: 90000.00, Tanggal: 2025-02-20');
INSERT INTO `log` VALUES (12, 'Detail Penjualan', 'UPDATE', 'ID Detail: 31, ID Penjualan: 8, ID Produk: 4, Jumlah Produk: 10, Sub Total: 80000.00, Tanggal: 2025-02-20');

-- ----------------------------
-- Table structure for pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan`  (
  `id_pelanggan` int NOT NULL AUTO_INCREMENT,
  `NamaPelanggan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `NomorTelepon` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pelanggan`) USING BTREE,
  INDEX `nama`(`NamaPelanggan` ASC) USING BTREE,
  INDEX `alamat`(`Alamat`(768) ASC) USING BTREE,
  INDEX `nomor`(`NomorTelepon` ASC) USING BTREE,
  INDEX `id_Pelanggan`(`id_pelanggan` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pelanggan
-- ----------------------------
INSERT INTO `pelanggan` VALUES (1, 'Leonardo', 'Nagoya', '082183318338');
INSERT INTO `pelanggan` VALUES (2, 'Asep', 'Tiban', '08080828883');
INSERT INTO `pelanggan` VALUES (3, 'Anto', 'Sekupang', '93245394856');
INSERT INTO `pelanggan` VALUES (4, 'Aan', 'Bengkong', '25465787334');
INSERT INTO `pelanggan` VALUES (5, 'Agung', 'Jodoh', '345464768298');

-- ----------------------------
-- Table structure for penjualan
-- ----------------------------
DROP TABLE IF EXISTS `penjualan`;
CREATE TABLE `penjualan`  (
  `id_penjualan` int NOT NULL AUTO_INCREMENT,
  `TanggalPenjualan` date NULL DEFAULT NULL,
  `TotalHarga` decimal(10, 2) NULL DEFAULT NULL,
  `kembalian` decimal(10, 2) NULL DEFAULT NULL,
  `id_pelanggan` int NULL DEFAULT NULL,
  `Pembayaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_penjualan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of penjualan
-- ----------------------------
INSERT INTO `penjualan` VALUES (2, '2025-02-05', 90000.00, 10000.00, 1, 'Qris');
INSERT INTO `penjualan` VALUES (3, '2025-02-12', 40000.00, 10000.00, 2, 'Gopay');
INSERT INTO `penjualan` VALUES (4, '2025-02-12', 40000.00, 60000.00, 3, 'OVO');
INSERT INTO `penjualan` VALUES (5, '2025-02-12', 70000.00, 30000.00, 3, 'OVO');
INSERT INTO `penjualan` VALUES (6, '2025-03-01', 600000.00, 0.00, 4, 'Qris');
INSERT INTO `penjualan` VALUES (7, '2025-03-01', 100000.00, 0.00, 5, 'Dana');

-- ----------------------------
-- Table structure for produk
-- ----------------------------
DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk`  (
  `id_produk` int NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `harga` decimal(10, 2) NULL DEFAULT NULL,
  `stok` int NULL DEFAULT 0,
  `harga_awal` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_produk`) USING BTREE,
  INDEX `stok`(`stok` ASC) USING BTREE,
  INDEX `nama`(`nama_produk` ASC) USING BTREE,
  INDEX `harga`(`harga` ASC) USING BTREE,
  INDEX `harga_awal`(`harga_awal` ASC) USING BTREE,
  INDEX `id_produk`(`id_produk` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of produk
-- ----------------------------
INSERT INTO `produk` VALUES (1, 'Sabun', 10000.00, 1114, 8000.00);
INSERT INTO `produk` VALUES (2, 'Minyak Goreng', 20000.00, 82, 18000.00);
INSERT INTO `produk` VALUES (3, 'Ice Cream', 10000.00, 95, 8000.00);
INSERT INTO `produk` VALUES (4, 'Mie Instant', 3000.00, 100, 2500.00);
INSERT INTO `produk` VALUES (5, 'Sosis Kanzler', 8000.00, 151, 6000.00);
INSERT INTO `produk` VALUES (6, 'Fruit Tea', 7000.00, 90, 5000.00);
INSERT INTO `produk` VALUES (7, 'Nabati', 3000.00, 0, 2500.00);
INSERT INTO `produk` VALUES (8, 'Yakult', 5000.00, 100, 4000.00);

-- ----------------------------
-- Table structure for produk_masuk
-- ----------------------------
DROP TABLE IF EXISTS `produk_masuk`;
CREATE TABLE `produk_masuk`  (
  `id_produkm` int NOT NULL AUTO_INCREMENT,
  `id_produk` int NULL DEFAULT NULL,
  `stok_masuk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_produkm`) USING BTREE,
  INDEX `stok_masuk`(`stok_masuk` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of produk_masuk
-- ----------------------------
INSERT INTO `produk_masuk` VALUES (2, 1, '10');

-- ----------------------------
-- Triggers structure for table detailpenjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `StokPenjualan`;
delimiter ;;
CREATE TRIGGER `StokPenjualan` AFTER INSERT ON `detailpenjualan` FOR EACH ROW IF (select stok from produk where id_produk = new.id_produk) >= new.jumlah_produk THEN

update produk set stok = stok - new.jumlah_produk
where id_produk = new.id_produk;

insert into log(tabel,metode, aktivitas) VALUES
('Detail Penjualan',"INSERT", CONCAT(
'ID Detail: ', new.id_detail,', '
'ID Penjualan: ', new.id_penjualan,', '
'ID Produk: ', new.id_produk,', '
'Jumlah Produk: ', new.jumlah_produk,', '
'Sub Total: ', new.subtotal,', '
'Tanggal: ', new.tanggal));
ELSE

signal sqlstate '45000' set message_text = "Stok lebih kecil dari Jumlah";

END IF
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detailpenjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `stok_log_update`;
delimiter ;;
CREATE TRIGGER `stok_log_update` AFTER UPDATE ON `detailpenjualan` FOR EACH ROW insert into log(tabel,metode, aktivitas) VALUES
("Detail Penjualan","UPDATE", CONCAT(
'ID Detail: ', new.id_detail,', '
'ID Penjualan: ', new.id_penjualan,', '
'ID Produk: ', new.id_produk,', '
'Jumlah Produk: ', new.jumlah_produk,', '
'Sub Total: ', new.subtotal,', '
'Tanggal: ', new.tanggal))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detailpenjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `StokDelete`;
delimiter ;;
CREATE TRIGGER `StokDelete` AFTER DELETE ON `detailpenjualan` FOR EACH ROW update produk set stok = stok + old.jumlah_produk
where id_produk = old.id_produk
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detailpenjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `stok_log_delete`;
delimiter ;;
CREATE TRIGGER `stok_log_delete` AFTER DELETE ON `detailpenjualan` FOR EACH ROW insert into log(tabel, metode, aktivitas) VALUES
("Detail Penjualan","DELETE", CONCAT(
'ID Detail: ', old.id_detail,', '
'ID Penjualan: ', old.id_penjualan,', '
'ID Produk: ', old.id_produk,', '
'Jumlah Produk: ', old.jumlah_produk,', '
'Sub Total: ', old.subtotal,', '
'Tanggal: ', old.tanggal))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pelanggan
-- ----------------------------
DROP TRIGGER IF EXISTS `insert_log_pelanggan`;
delimiter ;;
CREATE TRIGGER `insert_log_pelanggan` AFTER INSERT ON `pelanggan` FOR EACH ROW insert into log(tabel,metode, aktivitas) VALUES
('Pelanggan',"INSERT", CONCAT(
'Nama Pelanggan: ', new.NamaPelanggan,', '
'Alamat: ', new.Alamat,', '
'Nomor Telepon: ', new.NomorTelepon))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pelanggan
-- ----------------------------
DROP TRIGGER IF EXISTS `update_log_pelanggan`;
delimiter ;;
CREATE TRIGGER `update_log_pelanggan` AFTER UPDATE ON `pelanggan` FOR EACH ROW insert into log(tabel,metode, aktivitas) VALUES
('Pelanggan',"UPDATE", CONCAT(
'Nama Pelanggan: ', new.NamaPelanggan,', '
'Alamat: ', new.Alamat,', '
'Nomor Telepon: ', new.NomorTelepon))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pelanggan
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_log_pelanggan`;
delimiter ;;
CREATE TRIGGER `delete_log_pelanggan` AFTER DELETE ON `pelanggan` FOR EACH ROW insert into log(tabel,metode, aktivitas) VALUES
('Pelanggan',"INSERT", CONCAT(
'Nama Pelanggan: ', old.NamaPelanggan,', '
'Alamat: ', old.Alamat,', '
'Nomor Telepon: ', old.NomorTelepon))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table penjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `log_insert_penjualan`;
delimiter ;;
CREATE TRIGGER `log_insert_penjualan` AFTER INSERT ON `penjualan` FOR EACH ROW insert into log(tabel,metode, aktivitas) VALUES
('Penjualan',"INSERT", CONCAT(
'Tanggal Penjualan: ', new.TanggalPenjualan,', '
'Total Harga: ', new.TotalHarga,', '
'Kembalian: ', new.kembalian,', '
'ID Pelanggan: ', new.pembayaran,', '
'Metode Pembayaran: ', new.Pembayaran))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table penjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `log_update_penjualan`;
delimiter ;;
CREATE TRIGGER `log_update_penjualan` AFTER UPDATE ON `penjualan` FOR EACH ROW insert into log(tabel,metode, aktivitas) VALUES
('Penjualan',"UPDATE", CONCAT(
'Tanggal Penjualan: ', new.TanggalPenjualan,', '
'Total Harga: ', new.TotalHarga,', '
'Kembalian: ', new.kembalian,', '
'ID Pelanggan: ', new.pembayaran,', '
'Metode Pembayaran: ', new.Pembayaran))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table penjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `log_delete_penjualan`;
delimiter ;;
CREATE TRIGGER `log_delete_penjualan` AFTER DELETE ON `penjualan` FOR EACH ROW insert into log(tabel,metode, aktivitas) VALUES
('Penjualan',"DELETE", CONCAT(
'Tanggal Penjualan: ', old.TanggalPenjualan,', '
'Total Harga: ', old.TotalHarga,', '
'Kembalian: ', old.kembalian,', '
'ID Pelanggan: ', old.pembayaran,', '
'Metode Pembayaran: ', old.Pembayaran))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table produk
-- ----------------------------
DROP TRIGGER IF EXISTS `log_insert`;
delimiter ;;
CREATE TRIGGER `log_insert` AFTER INSERT ON `produk` FOR EACH ROW insert into log(tabel,metode, aktivitas) VALUES
('Produk',"INSERT", CONCAT(
'Nama Produk: ', new.nama_produk,', '
'Harga: ', new.harga,', '
'Stok: ', new.stok,', '
'Harga Awal: ', new.harga_awal))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table produk
-- ----------------------------
DROP TRIGGER IF EXISTS `log_update`;
delimiter ;;
CREATE TRIGGER `log_update` AFTER UPDATE ON `produk` FOR EACH ROW insert into log(tabel,metode, aktivitas) VALUES
('Produk',"UPDATE", CONCAT(
'Nama Produk: ', new.nama_produk,', '
'Harga: ', new.harga,', '
'Stok: ', new.stok,', '
'Harga Awal: ', new.harga_awal))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table produk
-- ----------------------------
DROP TRIGGER IF EXISTS `log_delete`;
delimiter ;;
CREATE TRIGGER `log_delete` AFTER DELETE ON `produk` FOR EACH ROW insert into log(tabel,metode, aktivitas) VALUES
('Produk',"DELETE", CONCAT(
'Nama Produk: ', old.nama_produk,', '
'Harga: ', old.harga,', '
'Stok: ', old.stok,', '
'Harga Awal: ', old.harga_awal))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table produk_masuk
-- ----------------------------
DROP TRIGGER IF EXISTS `produkmasuk`;
delimiter ;;
CREATE TRIGGER `produkmasuk` AFTER INSERT ON `produk_masuk` FOR EACH ROW update produk set stok = stok + new.stok_masuk
where id_produk = new.id_produk
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table produk_masuk
-- ----------------------------
DROP TRIGGER IF EXISTS `log_produk_insert`;
delimiter ;;
CREATE TRIGGER `log_produk_insert` AFTER INSERT ON `produk_masuk` FOR EACH ROW insert into log(tabel,metode, aktivitas) VALUES
('Produk Masuk',"INSERT", CONCAT(
'ID Produk: ', new.id_produk,', '
'Stok: ', new.stok_masuk))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table produk_masuk
-- ----------------------------
DROP TRIGGER IF EXISTS `log_produk_update`;
delimiter ;;
CREATE TRIGGER `log_produk_update` AFTER UPDATE ON `produk_masuk` FOR EACH ROW insert into log(tabel,metode, aktivitas) VALUES
('Produk Masuk',"INSERT", CONCAT(
'ID Produk: ', new.id_produk,', '
'Stok: ', new.stok_masuk))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table produk_masuk
-- ----------------------------
DROP TRIGGER IF EXISTS `produkhapus`;
delimiter ;;
CREATE TRIGGER `produkhapus` AFTER DELETE ON `produk_masuk` FOR EACH ROW update produk set stok = stok - old.stok_masuk
where id_produk = old.id_produk
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table produk_masuk
-- ----------------------------
DROP TRIGGER IF EXISTS `log_produk_delete`;
delimiter ;;
CREATE TRIGGER `log_produk_delete` AFTER DELETE ON `produk_masuk` FOR EACH ROW insert into log(tabel,metode, aktivitas) VALUES
('Produk Masuk',"INSERT", CONCAT(
'ID Produk: ', old.id_produk,', '
'Stok: ', old.stok_masuk))
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
