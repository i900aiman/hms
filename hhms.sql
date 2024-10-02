/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80300 (8.3.0)
 Source Host           : localhost:3306
 Source Schema         : hhms

 Target Server Type    : MySQL
 Target Server Version : 80300 (8.3.0)
 File Encoding         : 65001

 Date: 30/09/2024 10:15:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` smallint NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (100, 'admin', '$2a$10$gejom8SOuXtK5BvvZOOmq.i6q2Ys3FnZDAosSyQBXvQ.nFVEPT/gG', 1, 'Active', 'Administrator');

-- ----------------------------
-- Table structure for dbdi_personal_information
-- ----------------------------
DROP TABLE IF EXISTS `dbdi_personal_information`;
CREATE TABLE `dbdi_personal_information`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `question_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `question_text_small` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `question_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dbdi_personal_information
-- ----------------------------
INSERT INTO `dbdi_personal_information` VALUES (1, 'p1', 'MAKLUMAT DIRI', 'PERSONAL INFORMATION', 'Dikesan menghidap diabetes sejak', 'Diagnosis with diabetes since', 'input', NULL);
INSERT INTO `dbdi_personal_information` VALUES (2, 'p2', 'MAKLUMAT DIRI', 'PERSONAL INFORMATION', 'Tahap Hemoglobin A1c (HbA1c) Terkini Pesakit', 'Patient\'s Current Hemoglobin A1c (HbA1c) Level)', 'input', NULL);
INSERT INTO `dbdi_personal_information` VALUES (3, 'p3', 'MAKLUMAT DIRI', 'PERSONAL INFORMATION', 'Tinggi (m)', 'Height (m)', 'input', NULL);
INSERT INTO `dbdi_personal_information` VALUES (4, 'p4', 'MAKLUMAT DIRI', 'PERSONAL INFORMATION', 'Berat (kg)', 'Weight (kg)', 'input', NULL);
INSERT INTO `dbdi_personal_information` VALUES (5, 'p5', 'Sila tandakan (/) jawapan anda di kotak yang disediakan.', 'Please tick (/) your answer in the box given.', 'Umur (tahun)', 'Age (years old)', 'radio', '[\"40 dan ke bawah (40 and below)\", \"41-49\", \"50-59\", \"60 dan ke atas (60 and above)\"]');
INSERT INTO `dbdi_personal_information` VALUES (6, 'p6', 'Sila tandakan (/) jawapan anda di kotak yang disediakan.', 'Please tick (/) your answer in the box given.', 'Jantina', 'Gender', 'radio', '[\"Lelaki (Male)\", \"Perempuan (Female)\"]');
INSERT INTO `dbdi_personal_information` VALUES (7, 'p7', 'Sila tandakan (/) jawapan anda di kotak yang disediakan.', 'Please tick (/) your answer in the box given.', 'Bangsa', 'Ethnicity', 'radio', '[\"Melayu (Malay)\", \"Cina (Chinese)\", \"India (Indian)\", \"Orang Asli Semenanjung (Aborigines)\", \"Bumiputera Sabah (Bumiputera of Sabah)\", \"Bumiputera Sarawak (Bumiputera of Sarawak)\", \"Lain-lain (Others)\"]');
INSERT INTO `dbdi_personal_information` VALUES (8, 'p8', 'Sila tandakan (/) jawapan anda di kotak yang disediakan.', 'Please tick (/) your answer in the box given.', 'Status Perkahwinan', 'Marital Status', 'radio', '[\"Bujang (Single)\", \"Berkahwin (Married)\", \"Balu / Duda / Janda (Widowed / Divorced)\"]');
INSERT INTO `dbdi_personal_information` VALUES (9, 'p9', 'Sila tandakan (/) jawapan anda di kotak yang disediakan.', 'Please tick (/) your answer in the box given.', 'Situasi Tempat Tinggal', 'Living Situation', 'radio', '[\"Tinggal sendiri (Live alone)\", \"Tinggal bersama keluarga (Live with family)\", \"Lain-lain (Others)\"]');
INSERT INTO `dbdi_personal_information` VALUES (10, 'p10', 'Sila tandakan (/) jawapan anda di kotak yang disediakan.', 'Please tick (/) your answer in the box given.', 'Tahap Pendidikan', 'Level of Education', 'radio', '[\"Tidak pernah sekolah (Never attended school)\", \"Sekolah rendah (Primary school)\", \"Sekolah menengah (Secondary school)\", \"Pengajian tinggi (Higher education)\"]');
INSERT INTO `dbdi_personal_information` VALUES (11, 'p11', 'Sila tandakan (/) jawapan anda di kotak yang disediakan.', 'Please tick (/) your answer in the box given.', 'Pekerjaan', 'Occupation', 'radio', '[\"Penjawat awam (Government servant)\", \"Pekerja swasta (Private employee)\", \"Kerja sendiri (Self-employed)\", \"Pesara (Retiree)\", \"Pelajar (Student)\", \"Tidak bekerja (Unemployed)\"]');
INSERT INTO `dbdi_personal_information` VALUES (12, 'p12', 'Sila tandakan (/) jawapan anda di kotak yang disediakan.', 'Please tick (/) your answer in the box given.', 'Pendapatan Bulanan Isi Rumah', 'Monthly Household Income', 'radio', '[\"Kurang daripada RM4850 (Less than RM4850)\", \"RM4851 – RM10970\", \"Lebih daripada RM10971 (More than RM10971)\"]');
INSERT INTO `dbdi_personal_information` VALUES (13, 'p13', 'Sila tandakan (/) jawapan anda di kotak yang disediakan.', 'Please tick (/) your answer in the box given.', 'Sejarah Keluarga Menghidap Diabetes', 'Family History of Diabetes', 'radio', '[\"Tidak (No)\", \"Ya (Yes)\"]');
INSERT INTO `dbdi_personal_information` VALUES (14, 'p14', 'Sila tandakan (/) jawapan anda di kotak yang disediakan.', 'Please tick (/) your answer in the box given.', 'Penyakit Komorbid Lain', 'Other Comorbid Diseases', 'radio', '[\"Tiada None\", \"Penyakit jantung Heart disease\",\"Hipertensi Hypertension\",\"Lain-lain Others\"]');
INSERT INTO `dbdi_personal_information` VALUES (15, 'p15', 'Sila tandakan (/) jawapan anda di kotak yang disediakan.', 'Please tick (/) your answer in the box given.', 'Pengambilan Ubat Diabetes', 'Diabetes Medication Intake', 'radio', '[\"Pil sahaja Oral\",\"Insulin sahaja\",\"Pil dan insulin\",\"Tiada\"]');
INSERT INTO `dbdi_personal_information` VALUES (16, 'p16', 'Sila tandakan (/) jawapan anda di kotak yang disediakan.', 'Please tick (/) your answer in the box given.', 'Pernah menghadiri sesi Pendidikan Kesihatan?', 'Has attended Health Education session?', 'radio', '[\"Tidak (No)\", \"Ya (Yes)\"]');

-- ----------------------------
-- Table structure for dbdi_section_a
-- ----------------------------
DROP TABLE IF EXISTS `dbdi_section_a`;
CREATE TABLE `dbdi_section_a`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `question_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `question_text_small` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `question_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dbdi_section_a
-- ----------------------------
INSERT INTO `dbdi_section_a` VALUES (17, 'p17', 'BAHAGIAN A', 'SECTION A', 'Diabetes berpunca daripada kegagalan badan untuk menghasilkan insulin', 'Diabetes is caused by body\'s failure to produce insulin', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (18, 'p18', 'BAHAGIAN A', 'SECTION A', 'Pankreas menghasilkan insulin', 'The pancreas produces insulin', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (19, 'p19', 'BAHAGIAN A', 'SECTION A', 'Diabetes boleh berpunca daripada keturunan', 'Diabetes can be caused by inheritance', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (20, 'p20', 'BAHAGIAN A', 'SECTION A', 'Diabetes berpunca daripada pengambilan gula atau makanan manis secara berlebihan', 'Diabetes is caused by taking too much sugar or sweet foods', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (21, 'p21', 'BAHAGIAN A', 'SECTION A', 'Kebas / kesemutan di tangan atau kaki merupakan gejala diabetes', 'Numbness / tingling in hands or feet is a symptom of diabetes', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (22, 'p22', 'BAHAGIAN A', 'SECTION A', 'Kerap membuang air kecil merupakan gejala diabetes', 'Frequent urination is a symptom of diabetes', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (23, 'p23', 'BAHAGIAN A', 'SECTION A', 'Penglihatan yang kabur merupakan gejala diabetes', 'Blurred vision is a symptom of diabetes', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (24, 'p24', 'BAHAGIAN A', 'SECTION A', 'Pesakit akan mengalami hipoglisemia (paras gula dalam darah rendah) jika tidak makan selepas mengambil ubat', 'Patient will experience hypoglycaemia (low blood sugar) if not eating after taking medicine', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (25, 'p25', 'BAHAGIAN A', 'SECTION A', 'Pesakit boleh menggigil apabila mengalami hipoglisemia (paras gula dalam darah yang rendah)', 'Patients may shiver when hypoglycaemia (low blood sugar)', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (26, 'p26', 'BAHAGIAN A', 'SECTION A', 'Pengsan merupakan gejala hipoglisemia (paras gula dalam darah yang rendah)', 'Fainting is a symptom of hypoglycaemia (low blood sugar)', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (27, 'p27', 'BAHAGIAN A', 'SECTION A', 'Sekiranya pesakit mengalami hipoglisemia (paras gula dalam darah yang rendah), pesakit perlu segera mengambil makanan atau minuman manis (cth. gula-gula / minuman ringan)', 'If a patient has hypoglycaemia (low blood glucose level), the patient should immediately consume sugary food or drink (i.e. sweets / soft drinks)', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (28, 'p28', 'BAHAGIAN A', 'SECTION A', 'Pesakit perlu potong kuku kaki secara tegak dan tidak terlalu pendek', 'Patients need to cut their toe nails in straight shape and not too short', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (29, 'p29', 'BAHAGIAN A', 'SECTION A', 'Luka lambat sembuh merupakan komplikasi diabetes', 'Wound heals slowly is a diabetes complication', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (30, 'p30', 'BAHAGIAN A', 'SECTION A', 'Pesakit berisiko untuk kehilangan deria rasa di kaki', 'Patient is at risk in loss of senses in the feet', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (31, 'p31', 'BAHAGIAN A', 'SECTION A', 'Masalah berkaitan kaki (cth. luka / gangren / kaki berlubang) merupakan komplikasi diabetes', 'Foot related problems (i.e. injured / gangrene / hollow leg) is a diabetes complication', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (32, 'p32', 'BAHAGIAN A', 'SECTION A', 'Pesakit disarankan mengambil 2-4 pertukaran (hidangan)', 'Patient is recommended to take 2-4 exchange (meal)', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (33, 'p33', 'BAHAGIAN A', 'SECTION A', 'Diabetes boleh dikawal dengan pengambilan ubat', 'Diabetes can be controlled with medication intake', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (34, 'p34', 'BAHAGIAN A', 'SECTION A', 'Paras gula dalam darah dapat dikawal melalui aktiviti fizikal', 'Blood sugar levels can be controlled through physical activity', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (35, 'p35', 'BAHAGIAN A', 'SECTION A', 'Pesakit perlu bersenam sekurang-kurangnya 30 minit per sesi', 'Patients should exercise for at least 30 minutes per session', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (36, 'p36', 'BAHAGIAN A', 'SECTION A', 'Pesakit boleh mengubah sendiri pengambilan ubat', 'Patients can change medication intake themselves', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (37, 'p37', 'BAHAGIAN A', 'SECTION A', 'Pil diabetes boleh diambil bersama jus buah', 'Diabetes pill can be taken with fruit juice', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (38, 'p38', 'BAHAGIAN A', 'SECTION A', 'Pil diabetes boleh diambil bersama minuman berkarbonat', 'Diabetes pill can be taken with carbonated drinks', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (39, 'p39', 'BAHAGIAN A', 'SECTION A', 'Minuman berkafein (cth. kopi / teh) tanpa gula boleh meningkatkan paras gula dalam darah', 'Caffeinated beverages (i.e. coffee / tea) without sugar can increase blood sugar level', 'radio', NULL);
INSERT INTO `dbdi_section_a` VALUES (40, 'p40', 'BAHAGIAN A', 'SECTION A', 'Semua buah-buahan adalah baik untuk pesakit dan boleh dimakan tanpa had', 'All fruits are good for patients and can be eaten without restriction', 'radio', NULL);

-- ----------------------------
-- Table structure for dbdi_section_b
-- ----------------------------
DROP TABLE IF EXISTS `dbdi_section_b`;
CREATE TABLE `dbdi_section_b`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `question_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `question_text_small` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `question_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dbdi_section_b
-- ----------------------------
INSERT INTO `dbdi_section_b` VALUES (41, 'p41', 'BAHAGIAN B', 'SECTION B', 'Saya tahu tentang cara-cara yang berkesan untuk mengatasi penyakit diabetes', 'I am aware of the effective ways to cope with diabetes', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (42, 'p42', 'BAHAGIAN B', 'SECTION B', 'Saya mampu mengatasi halangan dalam pengurusan diabetes saya', 'I manage to overcome barriers in my diabetes management', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (43, 'p43', 'BAHAGIAN B', 'SECTION B', 'Saya berada dalam keadaan yang baik dan memilih untuk mengamalkan penjagaan diri yang sesuai', 'I am in a good condition and choose to practice a suitable diabetes self-care', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (44, 'p44', 'BAHAGIAN B', 'SECTION B', 'Penjagaan kendiri dalam diabetes adalah menyusahkan', 'Self-care in diabetes is difficult', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (45, 'p45', 'BAHAGIAN B', 'SECTION B', 'Saya berasa bosan dengan rutin pengurusan diabetes yang sama', 'I feel bored with the same diabetes management routine', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (46, 'p46', 'BAHAGIAN B', 'SECTION B', 'Walaupun saya telah berusaha sedaya upaya untuk mengawal diabetes, ia tidak berhasil seperti yang saya harapkan', 'Although I have tried my best to manage my diabetes, it did not work out as I had hoped', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (47, 'p47', 'BAHAGIAN B', 'SECTION B', 'Jika saya tahu mengenai laporan terperinci ujian darah saya, saya boleh menguruskan diabetes saya dengan lebih baik', 'If I knew about my blood test detailed report, I could manage my diabetes in a better way', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (48, 'p48', 'BAHAGIAN B', 'SECTION B', 'Perbincangan yang kerap dengan staf kesihatan yang berbeza kepakaran boleh menambahbaik pengurusan diabetes saya', 'Regular discussions with a health care staff of different expertise can improve my diabetes management', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (49, 'p49', 'BAHAGIAN B', 'SECTION B', 'Saya lebih selesa untuk berbincang dengan staf kesihatan yang mesra pesakit', 'I am more comfortable to discuss with a friendly health care staff', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (50, 'p50', 'BAHAGIAN B', 'SECTION B', 'Saya memerlukan seseorang untuk membawa saya ke temu janji susulan', 'I need someone to take me to my follow-up appointments', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (51, 'p51', 'BAHAGIAN B', 'SECTION B', 'Saya memerlukan seseorang untuk mengingatkan tentang pengambilan ubat', 'I need someone to remind me in taking medicine', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (52, 'p52', 'BAHAGIAN B', 'SECTION B', 'Saya memerlukan seseorang untuk membantu menyuntik insulin', 'I need someone to help me with insulin injections', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (53, 'p53', 'BAHAGIAN B', 'SECTION B', 'Saya memerlukan seseorang untuk membantu memantau paras gula dalam darah', 'I need someone to help me monitor my blood sugar levels', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (54, 'p54', 'BAHAGIAN B', 'SECTION B', 'Saya memerlukan seseorang untuk membantu mengamalkan diet yang sihat (cth. kawalan pengambilan gula / sukatan makanan / makanan untuk pesakit)', 'I need someone to help me practise a healthy diet (i.e. sugar intake control / food portion / diabetic meals)', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (55, 'p55', 'BAHAGIAN B', 'SECTION B', 'Saya memerlukan seseorang untuk membantu memeriksa keadaan kaki saya', 'I need someone to help check the conditions of my feet', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (56, 'p56', 'BAHAGIAN B', 'SECTION B', 'Saya memerlukan seseorang untuk membantu memotong kuku jari kaki saya', 'I need someone to help cut my toenails', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (57, 'p57', 'BAHAGIAN B', 'SECTION B', 'Saya memerlukan seseorang untuk menemani saya melakukan senaman', 'I need someone to accompany me in doing exercise', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (58, 'p58', 'BAHAGIAN B', 'SECTION B', 'Saya memerlukan seseorang untuk berkongsi masalah saya', 'I need someone to share my problems', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (59, 'p59', 'BAHAGIAN B', 'SECTION B', 'Saya menghadapi masalah kewangan berkenaan perbelanjaan pengangkutan (cth. menjalani temu janji susulan / senaman)', 'I am having financial problems on transportation expenses (i.e. undergoing follow-up appointments / exercises)', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (60, 'p60', 'BAHAGIAN B', 'SECTION B', 'Saya menghadapi masalah kewangan untuk membeli peralatan (cth. glukometer / kertas jalur ujian / kapas alcohol/jarum insulin)', 'I am having financial problems to buy equipment (i.e. glucometer / test strips / alcohol swabs/insulin syringe)', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');
INSERT INTO `dbdi_section_b` VALUES (61, 'p61', 'BAHAGIAN B', 'SECTION B', 'Saya menghadapi masalah kewangan untuk membeli bahan makanan yang sihat (cth. stevia / beras perang / beras kurang kanji)', 'I am having financial problems to buy healthier food ingredients (i.e. stevia / brown rice / less starch rice)', 'radio', '[\"STS\", \"TS\", \"N\", \"S\", \"SS\"]');

-- ----------------------------
-- Table structure for dbdi_section_c
-- ----------------------------
DROP TABLE IF EXISTS `dbdi_section_c`;
CREATE TABLE `dbdi_section_c`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `question_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `question_text_small` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `question_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dbdi_section_c
-- ----------------------------
INSERT INTO `dbdi_section_c` VALUES (62, 'p62', 'BAHAGIAN C', 'SECTION C', 'Saya memantau paras gula dalam darah walaupun sibuk', 'I monitor my blood sugar levels even though I am busy', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (63, 'p63', 'BAHAGIAN C', 'SECTION C', 'Saya memeriksa paras gula dalam darah saya', 'I check my blood sugar levels', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (64, 'p64', 'BAHAGIAN C', 'SECTION C', 'Saya memeriksa paras gula dalam darah saya setiap kali saya mengambil makanan/minuman manis', 'I check my blood sugar levels whenever I consume sweet food/drink', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (65, 'p65', 'BAHAGIAN C', 'SECTION C', 'Saya merekodkan paras gula dalam darah saya', 'I record my blood sugar levels', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (66, 'p66', 'BAHAGIAN C', 'SECTION C', 'Saya mengambil insulin mengikut jadual yang ditetapkan', 'I take insulin on schedule', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (67, 'p67', 'BAHAGIAN C', 'SECTION C', 'Saya mengambil insulin walaupun sibuk', 'I take insulin even though I am busy', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (68, 'p68', 'BAHAGIAN C', 'SECTION C', 'Saya terlepas untuk mengambil ubat saya apabila menghadiri majlis tertentu (cth. majlis perkahwinan / keagamaan / festival)', 'I miss my medication when attending certain occasions (i.e. weddings/religious events/festivals)', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (69, 'p69', 'BAHAGIAN C', 'SECTION C', 'Sekiranya saya terlepas jadual makan ubat, saya segera mengambil ubat tersebut (jika jarak masa pengambilan ubat seterusnya masih panjang)', 'If I miss my medication intake, I will take it immediately (if the gap of the next scheduled medication intake is long)', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (70, 'p70', 'BAHAGIAN C', 'SECTION C', 'Sekiranya saya terlepas untuk mengambil ubat, saya hanya mengambil ubat yang dijadualkan pada waktu berikutnya (jika jarak masa pengambilan ubat seterusnya adalah hampir)', 'If I miss my medication intake, I only take the next scheduled medicine (if the next period of scheduled medication intake is short)', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (71, 'p71', 'BAHAGIAN C', 'SECTION C', 'Saya mengamalkan pemakanan pinggan sihat Malaysia (Suku Suku Separuh) ketika makan di luar', 'I practice a Malaysian healthy plate diet (Suku Suku Separuh) when eating outside', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (72, 'p72', 'BAHAGIAN C', 'SECTION C', 'Saya makan tiga hidangan utama dalam sehari (cth. sarapan pagi / makan tengahari / makan malam)', 'I eat three main meals in a day (i.e. breakfast/lunch/dinner)', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (73, 'p73', 'BAHAGIAN C', 'SECTION C', 'Saya mengawal pengambilan makanan yang bergula', 'I control my sugary food intake', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (74, 'p74', 'BAHAGIAN C', 'SECTION C', 'Saya makan lebih banyak sayur-sayuran daripada daging', 'I eat more vegetables than meat', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (75, 'p75', 'BAHAGIAN C', 'SECTION C', 'Saya menggunakan bahan makanan yang lebih sihat dalam penyediaan makanan seharian (cth. stevia/beras perang/beras kurang kanji/susu rendah lemak)', 'I use healthier ingredients in food preparation (i.e. stevia/brown rice/less starchy rice/low-fat milk)', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (76, 'p76', 'BAHAGIAN C', 'SECTION C', 'Saya memeriksa keadaan kaki saya', 'I check the condition of my feet', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (77, 'p77', 'BAHAGIAN C', 'SECTION C', 'Saya memeriksa keadaan kaki walaupun sibuk', 'I check feet condition even though I am busy', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (78, 'p78', 'BAHAGIAN C', 'SECTION C', 'Saya memastikan celah jari kering selepas membasuh kaki', 'I make sure the spaces between my toes are dry after washing my feet', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (79, 'p79', 'BAHAGIAN C', 'SECTION C', 'Saya memotong kuku kaki saya dengan berhati-hati', 'I cut my toenails carefully', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (80, 'p80', 'BAHAGIAN C', 'SECTION C', 'Saya memakai selipar yang sesuai di dalam rumah', 'I wear suitable slippers indoors', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (81, 'p81', 'BAHAGIAN C', 'SECTION C', 'Saya memakai kasut bertutup ketika berada di luar rumah', 'I wear covered shoes when I am outside my house', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (82, 'p82', 'BAHAGIAN C', 'SECTION C', 'Saya memeriksa bahagian dalam kasut sebelum memakainya', 'I check on the inside of my shoes before wearing it', 'radio', '[\"TP\", \"SS\", \"KK\", \"K\", \"SM\"]');
INSERT INTO `dbdi_section_c` VALUES (83, 'p83', 'BAHAGIAN C', 'SECTION C', 'Saya melakukan aktiviti membersih rumah', 'I do house cleaning', 'radio2', '[\"S\", \"K\", \"KK\", \"J\", \"TP\", \"< 30 min\", \"≥ 30 min\"]');
INSERT INTO `dbdi_section_c` VALUES (84, 'p84', 'BAHAGIAN C', 'SECTION C', 'Saya melakukan aktiviti berkebun', 'I do gardening', 'radio2', '[\"S\", \"K\", \"KK\", \"J\", \"TP\", \"< 30 min\", \"≥ 30 min\"]');
INSERT INTO `dbdi_section_c` VALUES (85, 'p85', 'BAHAGIAN C', 'SECTION C', 'Saya melakukan senaman ringan', 'I do light exercise', 'radio2', '[\"S\", \"K\", \"KK\", \"J\", \"TP\", \"< 30 min\", \"≥ 30 min\"]');
INSERT INTO `dbdi_section_c` VALUES (86, 'p86', 'BAHAGIAN C', 'SECTION C', 'Saya melakukan aktiviti berjalan pantas', 'I do brisk walking', 'radio2', '[\"S\", \"K\", \"KK\", \"J\", \"TP\", \"< 30 min\", \"≥ 30 min\"]');
INSERT INTO `dbdi_section_c` VALUES (87, 'p87', 'BAHAGIAN C', 'SECTION C', 'Saya bersenam menaiki dan menuruni tangga', 'I exercise going up and down the stairs', 'radio2', '[\"S\", \"K\", \"KK\", \"J\", \"TP\", \"< 30 min\", \"≥ 30 min\"]');
INSERT INTO `dbdi_section_c` VALUES (88, 'p88', 'BAHAGIAN C', 'SECTION C', 'Saya melakukan aktiviti larian (cth. berlari / berjoging)', 'I do running activity (i.e. running / jogging)', 'radio2', '[\"S\", \"K\", \"KK\", \"J\", \"TP\", \"< 30 min\", \"≥ 30 min\"]');
INSERT INTO `dbdi_section_c` VALUES (89, 'p89', 'BAHAGIAN C', 'SECTION C', 'Saya melakukan aktiviti bersukan (cth. berbasikal / berenang / bermain badminton)', 'I do sports activity (i.e. cycling / swimming / playing badminton)', 'radio2', '[\"S\", \"K\", \"KK\", \"J\", \"TP\", \"< 30 min\", \"≥ 30 min\"]');
INSERT INTO `dbdi_section_c` VALUES (90, 'p90', 'BAHAGIAN C', 'SECTION C', 'Saya melakukan aktiviti gimnasium', 'I do gymnasium activity', 'radio2', '[\"S\", \"K\", \"KK\", \"J\", \"TP\", \"< 30 min\", \"≥ 30 min\"]');

-- ----------------------------
-- Table structure for health_activity_attendance
-- ----------------------------
DROP TABLE IF EXISTS `health_activity_attendance`;
CREATE TABLE `health_activity_attendance`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `activity_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_activity_attendance
-- ----------------------------
INSERT INTO `health_activity_attendance` VALUES (31, 138, 1, '2024-09-18 09:59:16', '2.9250538', '101.6621451');
INSERT INTO `health_activity_attendance` VALUES (32, 138, 3, '2024-09-18 10:00:44', '2.9250122', '101.6621269');

-- ----------------------------
-- Table structure for health_activity_tracker
-- ----------------------------
DROP TABLE IF EXISTS `health_activity_tracker`;
CREATE TABLE `health_activity_tracker`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `activity_day` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `activity_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_activity_tracker
-- ----------------------------
INSERT INTO `health_activity_tracker` VALUES (1, 'Zumba', 'Monday', '16:30:00', '2024-09-26 07:17:25');
INSERT INTO `health_activity_tracker` VALUES (2, 'Silat', 'Tuesday', '16:30:00', '2024-09-26 07:17:31');
INSERT INTO `health_activity_tracker` VALUES (3, 'Healthy Me Talk', 'Thursday', '16:30:00', '2024-08-14 07:31:59');
INSERT INTO `health_activity_tracker` VALUES (4, 'Badminton', 'Thursday', '17:30:00', '2024-08-14 07:32:10');
INSERT INTO `health_activity_tracker` VALUES (5, 'Jom Jalan', 'Friday', '17:30:00', '2024-08-14 07:32:29');

-- ----------------------------
-- Table structure for health_metric_history
-- ----------------------------
DROP TABLE IF EXISTS `health_metric_history`;
CREATE TABLE `health_metric_history`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `measurement_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blood_pressure_systolic` int NULL DEFAULT NULL,
  `blood_pressure_diastolic` int NULL DEFAULT NULL,
  `glucose_level` decimal(5, 2) NULL DEFAULT NULL,
  `height_cm` decimal(12, 2) NULL DEFAULT NULL,
  `weight_kg` decimal(12, 2) NULL DEFAULT NULL,
  `bmi` decimal(12, 2) NULL DEFAULT NULL,
  `blood_pressure_classification` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `glucose_classification` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bmi_classification` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `glucose_binary_result` tinyint NULL DEFAULT NULL,
  `blood_pressure_binary_result` tinyint NULL DEFAULT NULL,
  `bmi_binary_result` tinyint NULL DEFAULT NULL,
  `health_score` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bmi_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bloodpressure_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dbdi_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `glucose_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dbdi_status_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pulse` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 471 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of health_metric_history
-- ----------------------------
INSERT INTO `health_metric_history` VALUES (385, 138, '2024-09-18 12:14:12', 170, 80, 11.00, 180.00, 85.00, 26.23, 'Abnormal', 'Normal', 'Abnormal', 0, 1, 1, 'Medium', '2024-09-18 12:14:03', '2024-09-18 12:14:12', NULL, '2024-09-18 12:13:51', '2024-09-18 12:14:12', NULL);
INSERT INTO `health_metric_history` VALUES (386, 139, '2024-08-28 10:49:35', 127, 83, 12.10, 172.00, 71.00, 24.00, 'Abnormal', 'Abnormal', 'Abnormal', 1, 1, 1, 'High', '2024-08-20 14:25:26', '2024-08-20 14:25:26', NULL, '2024-08-20 14:25:26', NULL, NULL);
INSERT INTO `health_metric_history` VALUES (387, 140, '2024-08-28 10:49:35', 145, 78, NULL, 183.00, 93.20, 27.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '83');
INSERT INTO `health_metric_history` VALUES (388, 141, '2024-08-28 10:49:35', 116, 80, NULL, 184.00, 65.60, 19.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85');
INSERT INTO `health_metric_history` VALUES (389, 142, '2024-08-28 10:49:35', 106, 85, NULL, 154.30, 50.40, 21.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `health_metric_history` VALUES (390, 143, '2024-08-28 10:49:35', 111, 69, 9.80, 150.00, 43.00, 19.10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `health_metric_history` VALUES (391, 144, '2024-08-28 10:49:35', 110, 68, NULL, 150.50, 44.00, 20.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '80');
INSERT INTO `health_metric_history` VALUES (392, 145, '2024-08-28 10:49:35', 100, 71, NULL, 157.50, 37.30, 15.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '84');
INSERT INTO `health_metric_history` VALUES (393, 146, '2024-08-28 10:49:35', 102, 78, NULL, 161.00, 50.40, 19.30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '86');
INSERT INTO `health_metric_history` VALUES (394, 147, '2024-08-28 10:49:35', 141, 80, 5.00, 171.00, 71.00, 24.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '73');
INSERT INTO `health_metric_history` VALUES (395, 148, '2024-08-28 10:49:35', 114, 72, 4.60, 160.00, 63.30, 34.76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '39');
INSERT INTO `health_metric_history` VALUES (396, 149, '2024-08-28 10:49:35', 100, 71, 5.30, 152.00, 52.00, 22.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '70');
INSERT INTO `health_metric_history` VALUES (397, 150, '2024-08-28 10:49:35', 106, 85, 5.60, 149.00, 51.80, 23.30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '78');
INSERT INTO `health_metric_history` VALUES (398, 151, '2024-08-28 10:49:35', 117, 85, 4.50, 151.00, 49.40, 21.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '74');
INSERT INTO `health_metric_history` VALUES (399, 152, '2024-08-28 10:49:35', 126, 79, 5.30, 160.00, 63.30, 24.73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '73');
INSERT INTO `health_metric_history` VALUES (400, 153, '2024-08-28 10:49:35', 120, 79, NULL, 148.00, 45.90, 20.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '80');
INSERT INTO `health_metric_history` VALUES (401, 154, '2024-08-28 10:49:35', 125, 75, 6.80, 160.00, 63.90, 24.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100');
INSERT INTO `health_metric_history` VALUES (402, 155, '2024-08-28 10:49:35', 106, 64, 5.50, 158.00, 58.00, 23.23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '73');
INSERT INTO `health_metric_history` VALUES (403, 156, '2024-08-28 10:49:35', 129, 70, NULL, 152.00, 39.10, 16.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '59');
INSERT INTO `health_metric_history` VALUES (404, 157, '2024-08-28 10:49:35', 110, 69, 3.90, 152.50, 54.10, 23.30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '79');
INSERT INTO `health_metric_history` VALUES (405, 158, '2024-08-28 10:49:35', 103, 67, NULL, 163.00, 44.80, 16.60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56');
INSERT INTO `health_metric_history` VALUES (406, 159, '2024-08-28 10:49:35', 133, 90, 5.20, 145.00, 52.00, 24.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76');
INSERT INTO `health_metric_history` VALUES (407, 160, '2024-08-28 10:49:35', 90, 61, 5.20, 169.00, 60.00, 21.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '66');
INSERT INTO `health_metric_history` VALUES (408, 161, '2024-08-28 10:49:35', 128, 67, NULL, 157.00, 58.00, 23.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '67');
INSERT INTO `health_metric_history` VALUES (409, 162, '2024-08-28 10:49:35', 132, 78, 4.20, 164.00, 64.90, 24.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81');
INSERT INTO `health_metric_history` VALUES (410, 163, '2024-08-28 10:49:35', 127, 79, 6.10, 155.00, 59.00, 24.56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '86');
INSERT INTO `health_metric_history` VALUES (411, 164, '2024-08-28 10:49:35', 116, 81, 6.60, 155.00, 59.00, 24.60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '97');
INSERT INTO `health_metric_history` VALUES (412, 165, '2024-08-28 10:49:35', 128, 67, 4.60, 158.50, 61.40, 24.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '67');
INSERT INTO `health_metric_history` VALUES (413, 166, '2024-08-28 10:49:35', 116, 69, 5.00, 163.00, 61.50, 23.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50');
INSERT INTO `health_metric_history` VALUES (414, 167, '2024-08-28 10:49:35', 123, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '80');
INSERT INTO `health_metric_history` VALUES (415, 168, '2024-08-28 10:49:35', 125, 82, NULL, 170.00, 67.00, 22.60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '63');
INSERT INTO `health_metric_history` VALUES (416, 169, '2024-08-28 10:49:35', 121, 82, 4.80, 155.00, 49.50, 20.60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '71');
INSERT INTO `health_metric_history` VALUES (417, 170, '2024-08-28 10:49:35', 103, 70, NULL, 153.00, 44.00, 18.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '77');
INSERT INTO `health_metric_history` VALUES (418, 171, '2024-08-28 10:49:35', 180, 87, 17.00, 168151.40, 144.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99');
INSERT INTO `health_metric_history` VALUES (419, 172, '2024-08-28 10:49:35', 134, 93, 6.80, 173.00, 75.30, 25.10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '97');
INSERT INTO `health_metric_history` VALUES (420, 173, '2024-08-28 10:49:35', 122, 79, NULL, 165.00, 69.80, 25.64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85');
INSERT INTO `health_metric_history` VALUES (421, 174, '2024-08-28 10:49:35', 157, 94, NULL, 166.00, 111.00, 40.30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '92');
INSERT INTO `health_metric_history` VALUES (422, 175, '2024-08-28 10:49:35', 175, 128, NULL, 174.20, 121.50, 40.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '83');
INSERT INTO `health_metric_history` VALUES (423, 176, '2024-08-28 10:49:35', 117, 81, NULL, 153.00, 62.00, 26.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91');
INSERT INTO `health_metric_history` VALUES (424, 177, '2024-08-28 10:49:35', 145, 86, NULL, 155.00, 76.00, 31.60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76');
INSERT INTO `health_metric_history` VALUES (425, 178, '2024-08-28 10:49:35', 161, 95, NULL, 151.50, 73.50, 32.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '92');
INSERT INTO `health_metric_history` VALUES (426, 179, '2024-08-28 10:49:35', 145, 94, NULL, 154.00, 79.40, 33.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '74');
INSERT INTO `health_metric_history` VALUES (427, 180, '2024-08-28 10:49:35', 143, 87, NULL, 152.50, 71.40, 30.30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94');
INSERT INTO `health_metric_history` VALUES (428, 181, '2024-08-28 10:49:35', 113, 72, NULL, 146.50, 58.20, 25.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '80');
INSERT INTO `health_metric_history` VALUES (429, 182, '2024-08-28 10:49:35', 133, 82, NULL, 171.00, 83.00, 28.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `health_metric_history` VALUES (430, 183, '2024-08-28 10:49:35', 160, 90, 21.30, 180.00, 120.00, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '75');
INSERT INTO `health_metric_history` VALUES (431, 184, '2024-08-28 10:49:35', 126, 88, NULL, 168.50, 87.10, 30.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '122');
INSERT INTO `health_metric_history` VALUES (432, 185, '2024-08-28 10:49:35', 119, 80, NULL, 164.50, 74.20, 27.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81');
INSERT INTO `health_metric_history` VALUES (433, 186, '2024-08-28 10:49:35', 116, 82, NULL, 160.00, 66.50, 25.98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '101');
INSERT INTO `health_metric_history` VALUES (434, 187, '2024-08-28 10:49:35', 156, 106, 8.30, 173.00, 77.40, 25.86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '75');
INSERT INTO `health_metric_history` VALUES (435, 188, '2024-08-28 10:49:35', 175, 101, NULL, 154.00, 99.20, 41.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81');
INSERT INTO `health_metric_history` VALUES (436, 189, '2024-08-28 10:49:35', 108, 79, 5.10, 154.00, 63.80, 26.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '65');
INSERT INTO `health_metric_history` VALUES (437, 190, '2024-08-28 10:49:35', 120, 77, 8.20, 182.00, 98.40, 29.71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '93');
INSERT INTO `health_metric_history` VALUES (438, 191, '2024-08-28 10:49:35', 144, 87, 4.60, 160.00, 71.80, 28.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '78');
INSERT INTO `health_metric_history` VALUES (439, 192, '2024-08-28 10:49:35', 131, 85, 5.00, 165.00, 110.00, 40.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '83');
INSERT INTO `health_metric_history` VALUES (440, 193, '2024-08-28 10:49:35', 131, 79, 4.80, 156.00, 85.30, 35.05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '79');
INSERT INTO `health_metric_history` VALUES (441, 194, '2024-08-28 10:49:35', 105, 66, 4.10, 160.00, 69.20, 27.03, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61');
INSERT INTO `health_metric_history` VALUES (442, 195, '2024-08-28 10:49:35', 136, 67, NULL, 162.00, 78.40, 29.87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91');
INSERT INTO `health_metric_history` VALUES (443, 196, '2024-08-28 10:49:35', 110, 70, 4.60, 153.00, 65.00, 27.77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56');
INSERT INTO `health_metric_history` VALUES (444, 197, '2024-08-28 10:49:35', 127, 83, 4.30, 178.00, 88.00, 27.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '63');
INSERT INTO `health_metric_history` VALUES (445, 198, '2024-08-28 10:49:35', 131, 91, 4.70, 160.00, 72.00, 28.13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76');
INSERT INTO `health_metric_history` VALUES (446, 199, '2024-08-28 10:49:35', 110, 83, NULL, 151.00, 63.00, 27.63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94');
INSERT INTO `health_metric_history` VALUES (447, 200, '2024-08-28 10:49:35', 104, 68, NULL, 156.00, 63.00, 25.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76');
INSERT INTO `health_metric_history` VALUES (448, 201, '2024-08-28 10:49:35', 136, 86, 5.80, 163.00, 81.00, 30.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '77');
INSERT INTO `health_metric_history` VALUES (449, 202, '2024-08-28 10:49:35', 117, 71, 7.80, 154.00, 75.30, 31.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '78');
INSERT INTO `health_metric_history` VALUES (450, 203, '2024-08-28 10:49:35', 168, 98, 6.60, 166.50, 91.50, 33.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '79');
INSERT INTO `health_metric_history` VALUES (451, 204, '2024-08-28 10:49:35', 139, 92, 6.60, 157.00, 71.80, 28.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '66');
INSERT INTO `health_metric_history` VALUES (452, 205, '2024-08-28 10:49:35', 154, 86, 4.60, 162.00, 85.40, 32.54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '84');
INSERT INTO `health_metric_history` VALUES (453, 206, '2024-08-28 10:49:35', 130, 75, 5.30, 148.00, 72.90, 33.28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91');
INSERT INTO `health_metric_history` VALUES (454, 207, '2024-08-28 10:49:35', 137, 94, 5.90, 170.00, 102.70, 35.54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '69');
INSERT INTO `health_metric_history` VALUES (455, 208, '2024-08-28 10:49:35', 119, 81, 5.30, 145.00, 59.00, 28.10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '65');
INSERT INTO `health_metric_history` VALUES (456, 209, '2024-08-28 10:49:35', 118, 78, 4.60, 153.00, 60.60, 25.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81');
INSERT INTO `health_metric_history` VALUES (457, 210, '2024-08-28 10:49:35', 123, 91, 4.90, 163.00, 72.50, 27.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '73');
INSERT INTO `health_metric_history` VALUES (458, 211, '2024-08-28 10:49:35', 112, 77, 6.30, 156.00, 61.30, 25.19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '65');
INSERT INTO `health_metric_history` VALUES (459, 212, '2024-08-28 10:49:35', 116, 84, 5.10, 157.00, 74.00, 30.02, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '68');
INSERT INTO `health_metric_history` VALUES (460, 213, '2024-08-28 10:49:35', 137, 99, 7.10, 173.00, 94.40, 31.54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '73');
INSERT INTO `health_metric_history` VALUES (461, 214, '2024-08-28 10:49:35', 153, 95, 5.20, 173.00, 85.00, 28.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '67');
INSERT INTO `health_metric_history` VALUES (462, 215, '2024-08-28 10:49:35', 140, 91, 6.10, 161.00, 74.70, 28.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91');
INSERT INTO `health_metric_history` VALUES (463, 216, '2024-08-28 10:49:35', 127, 68, 5.80, 160.00, 80.00, 31.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76');
INSERT INTO `health_metric_history` VALUES (464, 217, '2024-08-28 10:49:35', 149, 88, 5.60, 179.00, 100.70, 31.43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '74');
INSERT INTO `health_metric_history` VALUES (465, 218, '2024-08-28 10:49:35', 127, 72, 5.90, 152.00, 89.40, 38.60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '53');
INSERT INTO `health_metric_history` VALUES (466, 219, '2024-08-28 10:49:35', 134, 79, 5.90, 158.00, 94.20, 37.73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '86');
INSERT INTO `health_metric_history` VALUES (467, 220, '2024-08-28 10:49:35', 157, 102, 6.30, 148.00, 69.00, 31.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '90');
INSERT INTO `health_metric_history` VALUES (468, 221, '2024-08-28 10:49:35', 127, 73, 9.00, 173.00, 77.50, 25.89, 'Normal', 'Normal', 'Abnormal', 0, 0, 1, 'Medium', '2024-08-20 14:42:59', '2024-08-20 14:42:59', NULL, '2024-08-20 14:42:59', NULL, NULL);
INSERT INTO `health_metric_history` VALUES (469, 222, '2024-08-28 10:49:35', 120, 55, 11.00, 170.00, 50.00, 17.30, 'Normal', 'Normal', 'Abnormal', 0, 0, 1, 'Medium', '2024-08-21 15:21:11', '2024-08-20 15:32:53', NULL, '2024-08-21 09:55:44', NULL, NULL);
INSERT INTO `health_metric_history` VALUES (470, 223, '2024-08-28 10:49:35', 119, 78, 5.00, 160.00, 55.00, 21.48, 'Normal', 'Abnormal', 'Normal', 1, 0, 0, 'Medium', '2024-08-21 08:57:30', '2024-08-21 09:15:32', NULL, '2024-08-21 08:56:37', NULL, NULL);

-- ----------------------------
-- Table structure for health_metric_history_list
-- ----------------------------
DROP TABLE IF EXISTS `health_metric_history_list`;
CREATE TABLE `health_metric_history_list`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `measurement_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blood_pressure_systolic` int NULL DEFAULT NULL,
  `blood_pressure_diastolic` int NULL DEFAULT NULL,
  `glucose_level` decimal(5, 2) NULL DEFAULT NULL,
  `height_cm` decimal(5, 2) NULL DEFAULT NULL,
  `weight_kg` decimal(5, 2) NULL DEFAULT NULL,
  `bmi` decimal(5, 2) NULL DEFAULT NULL,
  `blood_pressure_classification` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `glucose_classification` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bmi_classification` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `glucose_binary_result` tinyint NULL DEFAULT NULL,
  `blood_pressure_binary_result` tinyint NULL DEFAULT NULL,
  `bmi_binary_result` tinyint NULL DEFAULT NULL,
  `health_score` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bmi_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bloodpressure_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `glucose_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of health_metric_history_list
-- ----------------------------
INSERT INTO `health_metric_history_list` VALUES (69, 138, '2024-08-19 09:02:39', 128, 71, 11.00, 172.00, 72.00, 24.34, 'Normal', 'Normal', 'Abnormal', 0, 0, 1, 'Medium', '2024-08-18 22:33:02', '2024-08-18 22:33:02', '2024-08-18 22:33:02');
INSERT INTO `health_metric_history_list` VALUES (70, 138, '2024-08-19 09:03:02', 128, 71, 11.00, 180.00, 75.00, 23.15, 'Normal', 'Normal', 'Abnormal', 0, 0, 1, 'Medium', '2024-08-19 09:02:39', '2024-08-18 22:33:02', '2024-08-18 22:33:02');
INSERT INTO `health_metric_history_list` VALUES (71, 138, '2024-08-19 09:15:12', 128, 71, 11.00, 160.00, 85.00, 33.20, 'Normal', 'Normal', 'Abnormal', 0, 0, 1, 'Medium', '2024-08-19 09:03:02', '2024-08-18 22:33:02', '2024-08-18 22:33:02');
INSERT INTO `health_metric_history_list` VALUES (72, 138, '2024-08-19 09:15:22', 128, 71, 12.10, 160.00, 85.00, 33.20, 'Normal', 'Abnormal', 'Abnormal', 1, 0, 1, 'Medium', '2024-08-19 09:03:02', '2024-08-18 22:33:02', '2024-08-19 09:15:12');
INSERT INTO `health_metric_history_list` VALUES (73, 138, '2024-08-19 09:15:25', 128, 71, 19.90, 160.00, 85.00, 33.20, 'Normal', 'Abnormal', 'Abnormal', 1, 0, 1, 'Medium', '2024-08-19 09:03:02', '2024-08-18 22:33:02', '2024-08-19 09:15:22');
INSERT INTO `health_metric_history_list` VALUES (74, 138, '2024-08-19 09:15:29', 128, 71, 11.00, 160.00, 85.00, 33.20, 'Normal', 'Normal', 'Abnormal', 0, 0, 1, 'Medium', '2024-08-19 09:03:02', '2024-08-18 22:33:02', '2024-08-19 09:15:25');
INSERT INTO `health_metric_history_list` VALUES (75, 138, '2024-08-19 09:15:33', 128, 71, 19.90, 160.00, 85.00, 33.20, 'Normal', 'Abnormal', 'Abnormal', 1, 0, 1, 'Medium', '2024-08-19 09:03:02', '2024-08-18 22:33:02', '2024-08-19 09:15:29');
INSERT INTO `health_metric_history_list` VALUES (76, 138, '2024-08-19 09:15:37', 128, 71, 11.00, 160.00, 85.00, 33.20, 'Normal', 'Normal', 'Abnormal', 0, 0, 1, 'Medium', '2024-08-19 09:03:02', '2024-08-18 22:33:02', '2024-08-19 09:15:33');
INSERT INTO `health_metric_history_list` VALUES (77, 138, '2024-08-19 09:15:42', 128, 71, 15.80, 160.00, 85.00, 33.20, 'Normal', 'Abnormal', 'Abnormal', 1, 0, 1, 'Medium', '2024-08-19 09:03:02', '2024-08-18 22:33:02', '2024-08-19 09:15:37');
INSERT INTO `health_metric_history_list` VALUES (78, 138, '2024-08-19 09:16:01', 128, 71, 17.80, 160.00, 85.00, 33.20, 'Normal', 'Abnormal', 'Abnormal', 1, 0, 1, 'Medium', '2024-08-19 09:03:02', '2024-08-18 22:33:02', '2024-08-19 09:15:42');
INSERT INTO `health_metric_history_list` VALUES (79, 138, '2024-08-19 09:18:27', 128, 71, 14.00, 160.00, 85.00, 33.20, 'Normal', 'Abnormal', 'Abnormal', 1, 0, 1, 'Medium', '2024-08-19 09:03:02', '2024-08-18 22:33:02', '2024-08-19 09:16:01');
INSERT INTO `health_metric_history_list` VALUES (80, 138, '2024-08-19 09:18:53', 120, 80, 14.00, 160.00, 85.00, 33.20, 'Normal', 'Abnormal', 'Abnormal', 1, 0, 1, 'Medium', '2024-08-19 09:03:02', '2024-08-19 09:18:27', '2024-08-19 09:16:01');
INSERT INTO `health_metric_history_list` VALUES (81, 138, '2024-09-18 12:13:51', 119, 45, 14.00, 160.00, 85.00, 33.20, 'Normal', 'Abnormal', 'Abnormal', 1, 0, 1, 'Medium', '2024-08-19 09:03:02', '2024-08-19 09:18:53', '2024-08-19 09:16:01');
INSERT INTO `health_metric_history_list` VALUES (82, 138, '2024-09-18 12:14:03', 119, 45, 11.00, 160.00, 85.00, 33.20, 'Normal', 'Normal', 'Abnormal', 0, 0, 1, 'Medium', '2024-08-19 09:03:02', '2024-08-19 09:18:53', '2024-09-18 12:13:51');
INSERT INTO `health_metric_history_list` VALUES (83, 138, '2024-09-18 12:14:12', 119, 45, 11.00, 180.00, 85.00, 26.23, 'Normal', 'Normal', 'Abnormal', 0, 0, 1, 'Medium', '2024-09-18 12:14:03', '2024-08-19 09:18:53', '2024-09-18 12:13:51');

-- ----------------------------
-- Table structure for health_screening_anthropometry
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_anthropometry`;
CREATE TABLE `health_screening_anthropometry`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int NULL DEFAULT NULL,
  `measurement_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blood_pressure_systolic` int NULL DEFAULT NULL,
  `blood_pressure_diastolic` int NULL DEFAULT NULL,
  `glucose_level` decimal(5, 2) NULL DEFAULT NULL,
  `height_cm` decimal(12, 2) NULL DEFAULT NULL,
  `weight_kg` decimal(12, 2) NULL DEFAULT NULL,
  `bmi` decimal(12, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_anthropometry
-- ----------------------------
INSERT INTO `health_screening_anthropometry` VALUES (1, 138, '2024-09-26 07:40:42', 125, 70, 12.10, 172.00, 72.00, 24.34);

-- ----------------------------
-- Table structure for health_screening_behavioural_risk_factor_activity
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_behavioural_risk_factor_activity`;
CREATE TABLE `health_screening_behavioural_risk_factor_activity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `possible_answers` json NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_behavioural_risk_factor_activity
-- ----------------------------
INSERT INTO `health_screening_behavioural_risk_factor_activity` VALUES (1, 'On those days, how many minutes do you engage in physical activity?', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_behavioural_risk_factor_activity` VALUES (2, 'Do you walk 10,000 steps per day?', '[\"Yes\", \"No\"]');

-- ----------------------------
-- Table structure for health_screening_behavioural_risk_factor_activity_answer
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_behavioural_risk_factor_activity_answer`;
CREATE TABLE `health_screening_behavioural_risk_factor_activity_answer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_behavioural_risk_factor_activity_answer
-- ----------------------------
INSERT INTO `health_screening_behavioural_risk_factor_activity_answer` VALUES (11, 138, 1, 'No', '2024-09-25 13:19:31');
INSERT INTO `health_screening_behavioural_risk_factor_activity_answer` VALUES (12, 138, 2, 'Yes', '2024-09-25 13:19:31');

-- ----------------------------
-- Table structure for health_screening_behavioural_risk_factor_alcohol
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_behavioural_risk_factor_alcohol`;
CREATE TABLE `health_screening_behavioural_risk_factor_alcohol`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `possible_answers` json NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_behavioural_risk_factor_alcohol
-- ----------------------------
INSERT INTO `health_screening_behavioural_risk_factor_alcohol` VALUES (1, 'Did you take alcohol?', '[\"Yes\", \"No\"]');

-- ----------------------------
-- Table structure for health_screening_behavioural_risk_factor_alcohol_answer
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_behavioural_risk_factor_alcohol_answer`;
CREATE TABLE `health_screening_behavioural_risk_factor_alcohol_answer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_behavioural_risk_factor_alcohol_answer
-- ----------------------------
INSERT INTO `health_screening_behavioural_risk_factor_alcohol_answer` VALUES (6, 138, 1, 'Yes', '2024-09-25 13:19:31');

-- ----------------------------
-- Table structure for health_screening_behavioural_risk_factor_audit
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_behavioural_risk_factor_audit`;
CREATE TABLE `health_screening_behavioural_risk_factor_audit`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `possible_answers` json NOT NULL,
  `point_map` json NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_behavioural_risk_factor_audit
-- ----------------------------
INSERT INTO `health_screening_behavioural_risk_factor_audit` VALUES (1, 'How often do you have a drink containing alcohol?', '[\"Never\", \"Monthly or less\", \"2-4 times a month\", \"2-3 times a week\", \"4 or more times a week\"]', '{\"Never\": 0, \"Monthly or less\": 1, \"2-3 times a week\": 3, \"2-4 times a month\": 2, \"4 or more times a week\": 4}');
INSERT INTO `health_screening_behavioural_risk_factor_audit` VALUES (2, 'How many drinks containing alcohol do you have on a typical day when you are drinking?', '[\"1 or 2\", \"3 or 4\", \"5 or 6\", \"7 or 9\", \"10 or more\"]', '{\"1 or 2\": 0, \"3 or 4\": 1, \"5 or 6\": 2, \"7 or 9\": 3, \"10 or more\": 4}');
INSERT INTO `health_screening_behavioural_risk_factor_audit` VALUES (5, 'How often do you have six or more drinks on one occasion?', '[\"Never\", \"Less Than Monthly\", \"Monthly\", \"Weekly\", \"Daily or almost daily\"]', '{\"Never\": 0, \"Weekly\": 3, \"Monthly\": 2, \"Less Than Monthly\": 1, \"Daily or almost daily\": 4}');

-- ----------------------------
-- Table structure for health_screening_behavioural_risk_factor_audit_answer
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_behavioural_risk_factor_audit_answer`;
CREATE TABLE `health_screening_behavioural_risk_factor_audit_answer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `points` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_behavioural_risk_factor_audit_answer
-- ----------------------------
INSERT INTO `health_screening_behavioural_risk_factor_audit_answer` VALUES (10, 138, 5, 'Never', 0, '2024-09-25 13:19:31');
INSERT INTO `health_screening_behavioural_risk_factor_audit_answer` VALUES (11, 138, 1, 'Monthly or less', 1, '2024-09-25 13:19:31');
INSERT INTO `health_screening_behavioural_risk_factor_audit_answer` VALUES (12, 138, 2, '3 or 4', 1, '2024-09-25 13:19:31');

-- ----------------------------
-- Table structure for health_screening_behavioural_risk_factor_smoking
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_behavioural_risk_factor_smoking`;
CREATE TABLE `health_screening_behavioural_risk_factor_smoking`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `possible_answers` json NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_behavioural_risk_factor_smoking
-- ----------------------------
INSERT INTO `health_screening_behavioural_risk_factor_smoking` VALUES (1, 'Did you smoke?', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_behavioural_risk_factor_smoking` VALUES (2, 'Are you interested to stop smoking within 6 months?', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_behavioural_risk_factor_smoking` VALUES (3, 'Do you plan to quit smoking next month?', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_behavioural_risk_factor_smoking` VALUES (4, 'Have you ever tried to quit smoking within the last 12 months?', '[\"Yes\", \"No\"]');

-- ----------------------------
-- Table structure for health_screening_behavioural_risk_factor_smoking_answer
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_behavioural_risk_factor_smoking_answer`;
CREATE TABLE `health_screening_behavioural_risk_factor_smoking_answer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_behavioural_risk_factor_smoking_answer
-- ----------------------------
INSERT INTO `health_screening_behavioural_risk_factor_smoking_answer` VALUES (21, 138, 1, 'Yes', '2024-09-25 13:19:31');
INSERT INTO `health_screening_behavioural_risk_factor_smoking_answer` VALUES (22, 138, 2, 'No', '2024-09-25 13:19:31');
INSERT INTO `health_screening_behavioural_risk_factor_smoking_answer` VALUES (23, 138, 3, 'No', '2024-09-25 13:19:31');
INSERT INTO `health_screening_behavioural_risk_factor_smoking_answer` VALUES (24, 138, 4, 'No', '2024-09-25 13:19:31');

-- ----------------------------
-- Table structure for health_screening_family_history
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_family_history`;
CREATE TABLE `health_screening_family_history`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `possible_answers` json NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_family_history
-- ----------------------------
INSERT INTO `health_screening_family_history` VALUES (1, 'Hypertension', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_family_history` VALUES (2, 'Diabetes', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_family_history` VALUES (3, 'Dyslipidemia/High Cholesterol', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_family_history` VALUES (4, 'Asthma/Chronic Obstructive Pulmonary Disorder', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_family_history` VALUES (5, 'Cancer', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_family_history` VALUES (6, 'Sudden Death', '[\"Yes\", \"No\"]');

-- ----------------------------
-- Table structure for health_screening_family_history_answers
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_family_history_answers`;
CREATE TABLE `health_screening_family_history_answers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_family_history_answers
-- ----------------------------
INSERT INTO `health_screening_family_history_answers` VALUES (1, 138, 1, 'Yes', '2024-09-25 09:20:10');
INSERT INTO `health_screening_family_history_answers` VALUES (2, 138, 2, 'Yes', '2024-09-25 09:20:10');
INSERT INTO `health_screening_family_history_answers` VALUES (3, 138, 3, 'Yes', '2024-09-25 09:20:10');
INSERT INTO `health_screening_family_history_answers` VALUES (4, 138, 4, 'Yes', '2024-09-25 09:20:10');
INSERT INTO `health_screening_family_history_answers` VALUES (5, 138, 5, 'Yes', '2024-09-25 09:20:10');
INSERT INTO `health_screening_family_history_answers` VALUES (6, 138, 6, 'No', '2024-09-25 09:20:10');

-- ----------------------------
-- Table structure for health_screening_hyperglycaemia_sysptoms
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_hyperglycaemia_sysptoms`;
CREATE TABLE `health_screening_hyperglycaemia_sysptoms`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `possible_answers` json NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_hyperglycaemia_sysptoms
-- ----------------------------
INSERT INTO `health_screening_hyperglycaemia_sysptoms` VALUES (1, 'Fatigue', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_hyperglycaemia_sysptoms` VALUES (2, 'Lethargy', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_hyperglycaemia_sysptoms` VALUES (5, 'Polyuria', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_hyperglycaemia_sysptoms` VALUES (6, 'Nocturia', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_hyperglycaemia_sysptoms` VALUES (7, 'Polydipsia', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_hyperglycaemia_sysptoms` VALUES (8, 'Polyphagia', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_hyperglycaemia_sysptoms` VALUES (9, 'Weight Loss', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_hyperglycaemia_sysptoms` VALUES (10, 'Pruritus vulvae', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_hyperglycaemia_sysptoms` VALUES (11, 'Balanitis', '[\"Yes\", \"No\"]');

-- ----------------------------
-- Table structure for health_screening_hyperglycaemia_sysptoms_answer
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_hyperglycaemia_sysptoms_answer`;
CREATE TABLE `health_screening_hyperglycaemia_sysptoms_answer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_hyperglycaemia_sysptoms_answer
-- ----------------------------
INSERT INTO `health_screening_hyperglycaemia_sysptoms_answer` VALUES (13, 138, 11, 'Yes', '2024-09-25 14:46:24');
INSERT INTO `health_screening_hyperglycaemia_sysptoms_answer` VALUES (14, 138, 1, 'Yes', '2024-09-25 14:46:24');
INSERT INTO `health_screening_hyperglycaemia_sysptoms_answer` VALUES (15, 138, 9, 'Yes', '2024-09-25 14:46:24');
INSERT INTO `health_screening_hyperglycaemia_sysptoms_answer` VALUES (16, 138, 6, 'No', '2024-09-25 14:46:24');
INSERT INTO `health_screening_hyperglycaemia_sysptoms_answer` VALUES (17, 138, 7, 'Yes', '2024-09-25 14:46:24');
INSERT INTO `health_screening_hyperglycaemia_sysptoms_answer` VALUES (18, 138, 8, 'No', '2024-09-25 14:46:24');
INSERT INTO `health_screening_hyperglycaemia_sysptoms_answer` VALUES (19, 138, 10, 'No', '2024-09-25 14:46:24');
INSERT INTO `health_screening_hyperglycaemia_sysptoms_answer` VALUES (20, 138, 2, 'No', '2024-09-25 14:46:24');
INSERT INTO `health_screening_hyperglycaemia_sysptoms_answer` VALUES (21, 138, 5, 'Yes', '2024-09-25 14:46:24');

-- ----------------------------
-- Table structure for health_screening_medical_history
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_medical_history`;
CREATE TABLE `health_screening_medical_history`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `possible_answers` json NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_medical_history
-- ----------------------------
INSERT INTO `health_screening_medical_history` VALUES (1, 'Hypertension', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_medical_history` VALUES (2, 'Diabetes', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_medical_history` VALUES (3, 'Dyslipidemia/High Cholesterol', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_medical_history` VALUES (4, 'Asthma/Chronic Obstructive Pulmonary Disorder', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_medical_history` VALUES (5, 'Cancer', '[\"Yes\", \"No\"]');

-- ----------------------------
-- Table structure for health_screening_medical_history_answers
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_medical_history_answers`;
CREATE TABLE `health_screening_medical_history_answers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_medical_history_answers
-- ----------------------------
INSERT INTO `health_screening_medical_history_answers` VALUES (1, 138, 1, 'Yes', '2024-09-25 09:07:51');
INSERT INTO `health_screening_medical_history_answers` VALUES (2, 138, 2, 'No', '2024-09-25 09:07:51');
INSERT INTO `health_screening_medical_history_answers` VALUES (3, 138, 3, 'No', '2024-09-25 09:07:51');
INSERT INTO `health_screening_medical_history_answers` VALUES (4, 138, 4, 'No', '2024-09-25 09:07:51');
INSERT INTO `health_screening_medical_history_answers` VALUES (5, 138, 5, 'No', '2024-09-25 09:07:51');

-- ----------------------------
-- Table structure for health_screening_mental_health_depression
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_mental_health_depression`;
CREATE TABLE `health_screening_mental_health_depression`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `possible_answers` json NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_mental_health_depression
-- ----------------------------
INSERT INTO `health_screening_mental_health_depression` VALUES (1, 'During the past month, have you often been bothered by feeling down, depressed, or hopeless?', '[\"Yes\", \"No\"]');
INSERT INTO `health_screening_mental_health_depression` VALUES (2, 'During the past month, have you often been bothered by little interest or pleasure in doing things?', '[\"Yes\", \"No\"]');

-- ----------------------------
-- Table structure for health_screening_mental_health_depression_answer
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_mental_health_depression_answer`;
CREATE TABLE `health_screening_mental_health_depression_answer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_mental_health_depression_answer
-- ----------------------------
INSERT INTO `health_screening_mental_health_depression_answer` VALUES (15, 138, 1, 'Yes', '2024-09-25 14:29:57');

-- ----------------------------
-- Table structure for health_screening_mental_health_gad2_answers
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_mental_health_gad2_answers`;
CREATE TABLE `health_screening_mental_health_gad2_answers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `answer_value` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `users_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `question_id`(`question_id` ASC) USING BTREE,
  CONSTRAINT `health_screening_mental_health_gad2_answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `health_screening_mental_health_gad7_questions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_mental_health_gad2_answers
-- ----------------------------
INSERT INTO `health_screening_mental_health_gad2_answers` VALUES (26, 1, 2, '2024-09-25 14:29:57', 138);
INSERT INTO `health_screening_mental_health_gad2_answers` VALUES (27, 2, 1, '2024-09-25 14:29:57', 138);

-- ----------------------------
-- Table structure for health_screening_mental_health_gad2_questions
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_mental_health_gad2_questions`;
CREATE TABLE `health_screening_mental_health_gad2_questions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `option_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Not at all',
  `option_1_value` int NULL DEFAULT 0,
  `option_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Several days',
  `option_2_value` int NULL DEFAULT 1,
  `option_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'More than half the days',
  `option_3_value` int NULL DEFAULT 2,
  `option_4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Nearly every day',
  `option_4_value` int NULL DEFAULT 3,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_mental_health_gad2_questions
-- ----------------------------
INSERT INTO `health_screening_mental_health_gad2_questions` VALUES (1, 'Over the last two weeks, how often have you been bothered by feeling nervous, anxious, or on edge?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);
INSERT INTO `health_screening_mental_health_gad2_questions` VALUES (2, 'Over the last two weeks, how often have you been bothered by not being able to stop or control worrying?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);

-- ----------------------------
-- Table structure for health_screening_mental_health_gad7_answers
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_mental_health_gad7_answers`;
CREATE TABLE `health_screening_mental_health_gad7_answers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `answer_value` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `users_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `question_id`(`question_id` ASC) USING BTREE,
  CONSTRAINT `health_screening_mental_health_gad7_answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `health_screening_mental_health_gad7_questions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_mental_health_gad7_answers
-- ----------------------------
INSERT INTO `health_screening_mental_health_gad7_answers` VALUES (32, 2, 1, '2024-09-25 14:29:57', 138);
INSERT INTO `health_screening_mental_health_gad7_answers` VALUES (33, 3, 2, '2024-09-25 14:29:57', 138);
INSERT INTO `health_screening_mental_health_gad7_answers` VALUES (34, 4, 2, '2024-09-25 14:29:57', 138);
INSERT INTO `health_screening_mental_health_gad7_answers` VALUES (35, 5, 3, '2024-09-25 14:29:57', 138);
INSERT INTO `health_screening_mental_health_gad7_answers` VALUES (36, 6, 3, '2024-09-25 14:29:57', 138);
INSERT INTO `health_screening_mental_health_gad7_answers` VALUES (37, 7, 2, '2024-09-25 14:29:57', 138);
INSERT INTO `health_screening_mental_health_gad7_answers` VALUES (38, 1, 0, '2024-09-25 14:29:57', 138);

-- ----------------------------
-- Table structure for health_screening_mental_health_gad7_questions
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_mental_health_gad7_questions`;
CREATE TABLE `health_screening_mental_health_gad7_questions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `option_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Not at all',
  `option_1_value` int NULL DEFAULT 0,
  `option_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Several days',
  `option_2_value` int NULL DEFAULT 1,
  `option_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'More than half the days',
  `option_3_value` int NULL DEFAULT 2,
  `option_4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Nearly every day',
  `option_4_value` int NULL DEFAULT 3,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_mental_health_gad7_questions
-- ----------------------------
INSERT INTO `health_screening_mental_health_gad7_questions` VALUES (1, 'Feeling nervous, anxious, or on edge?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);
INSERT INTO `health_screening_mental_health_gad7_questions` VALUES (2, 'Not being able to stop or control worrying?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);
INSERT INTO `health_screening_mental_health_gad7_questions` VALUES (3, 'Worrying too much about different things?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);
INSERT INTO `health_screening_mental_health_gad7_questions` VALUES (4, 'Trouble relaxing?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);
INSERT INTO `health_screening_mental_health_gad7_questions` VALUES (5, 'Being so restless that it’s hard to sit still?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);
INSERT INTO `health_screening_mental_health_gad7_questions` VALUES (6, 'Becoming easily annoyed or irritable?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);
INSERT INTO `health_screening_mental_health_gad7_questions` VALUES (7, 'Feeling afraid as if something awful might happen?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);

-- ----------------------------
-- Table structure for health_screening_mental_health_phq9_answers
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_mental_health_phq9_answers`;
CREATE TABLE `health_screening_mental_health_phq9_answers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `answer_value` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `users_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `question_id`(`question_id` ASC) USING BTREE,
  CONSTRAINT `health_screening_mental_health_phq9_answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `health_screening_mental_health_phq9_questions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_mental_health_phq9_answers
-- ----------------------------
INSERT INTO `health_screening_mental_health_phq9_answers` VALUES (46, 5, 2, '2024-09-25 14:29:57', 138);
INSERT INTO `health_screening_mental_health_phq9_answers` VALUES (47, 7, 2, '2024-09-25 14:29:57', 138);
INSERT INTO `health_screening_mental_health_phq9_answers` VALUES (48, 4, 2, '2024-09-25 14:29:57', 138);
INSERT INTO `health_screening_mental_health_phq9_answers` VALUES (49, 2, 1, '2024-09-25 14:29:57', 138);
INSERT INTO `health_screening_mental_health_phq9_answers` VALUES (50, 3, 1, '2024-09-25 14:29:57', 138);
INSERT INTO `health_screening_mental_health_phq9_answers` VALUES (51, 6, 2, '2024-09-25 14:29:57', 138);
INSERT INTO `health_screening_mental_health_phq9_answers` VALUES (52, 8, 2, '2024-09-25 14:29:57', 138);
INSERT INTO `health_screening_mental_health_phq9_answers` VALUES (53, 9, 3, '2024-09-25 14:29:57', 138);
INSERT INTO `health_screening_mental_health_phq9_answers` VALUES (54, 1, 1, '2024-09-25 14:29:57', 138);

-- ----------------------------
-- Table structure for health_screening_mental_health_phq9_questions
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_mental_health_phq9_questions`;
CREATE TABLE `health_screening_mental_health_phq9_questions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `option_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Not at all',
  `option_1_value` int NULL DEFAULT 0,
  `option_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Several days',
  `option_2_value` int NULL DEFAULT 1,
  `option_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'More than half the days',
  `option_3_value` int NULL DEFAULT 2,
  `option_4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Nearly every day',
  `option_4_value` int NULL DEFAULT 3,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_mental_health_phq9_questions
-- ----------------------------
INSERT INTO `health_screening_mental_health_phq9_questions` VALUES (1, 'Little interest or pleasure in doing things?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);
INSERT INTO `health_screening_mental_health_phq9_questions` VALUES (2, 'Feeling down, depressed, or hopeless?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);
INSERT INTO `health_screening_mental_health_phq9_questions` VALUES (3, 'Trouble falling or staying asleep, or sleeping too much?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);
INSERT INTO `health_screening_mental_health_phq9_questions` VALUES (4, 'Feeling tired or having little energy?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);
INSERT INTO `health_screening_mental_health_phq9_questions` VALUES (5, 'Poor appetite or overeating?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);
INSERT INTO `health_screening_mental_health_phq9_questions` VALUES (6, 'Feeling bad about yourself — or that you are a failure or have let yourself or your family down?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);
INSERT INTO `health_screening_mental_health_phq9_questions` VALUES (7, 'Trouble concentrating on things, such as reading the newspaper or watching television?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);
INSERT INTO `health_screening_mental_health_phq9_questions` VALUES (8, 'Moving or speaking so slowly that other people could have noticed? Or so fidgety or restless that you have been moving a lot more than usual?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);
INSERT INTO `health_screening_mental_health_phq9_questions` VALUES (9, 'Thoughts that you would be better off dead, or thoughts of hurting yourself in some way?', 'Not at all', 0, 'Several days', 1, 'More than half the days', 2, 'Nearly every day', 3);

-- ----------------------------
-- Table structure for health_screening_module
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_module`;
CREATE TABLE `health_screening_module`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_module
-- ----------------------------
INSERT INTO `health_screening_module` VALUES (1, 'Health Information', 'health_information.svg', 'health-screening-health-information', NULL);
INSERT INTO `health_screening_module` VALUES (2, 'Anthropometry', 'anthropometry.svg', 'health-screening-anthropometry', 'Done');
INSERT INTO `health_screening_module` VALUES (3, 'Lab Investigation', 'lab_investigation.svg', '#', NULL);
INSERT INTO `health_screening_module` VALUES (4, 'Clinical Notes', 'clinical_notes.svg', '#', NULL);
INSERT INTO `health_screening_module` VALUES (5, 'Referral', 'referral.svg', '#', NULL);

-- ----------------------------
-- Table structure for health_screening_sub_module
-- ----------------------------
DROP TABLE IF EXISTS `health_screening_sub_module`;
CREATE TABLE `health_screening_sub_module`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sub_module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_screening_sub_module
-- ----------------------------
INSERT INTO `health_screening_sub_module` VALUES (1, 'Medical History', 'medical_history.svg', 'health-screening-medical-history', NULL, 'health-screening-health-information');
INSERT INTO `health_screening_sub_module` VALUES (2, 'Family History', 'family_history.svg', 'health-screening-family-history', NULL, 'health-screening-health-information');
INSERT INTO `health_screening_sub_module` VALUES (3, 'Behavioural Risk Factor', 'behavioural_risk_factor.svg', 'health-screening-behavioral-risk-factor', NULL, 'health-screening-health-information');
INSERT INTO `health_screening_sub_module` VALUES (4, 'Mental Health Screening', 'health_screening.svg', 'health-screening-mental-health-screening', NULL, 'health-screening-health-information');
INSERT INTO `health_screening_sub_module` VALUES (5, 'Hyperglycaemia Symtoms', 'hyperglycaemia_symptoms.svg', 'health-screening-hyperglycaemia-sysmtoms', NULL, 'health-screening-health-information');

-- ----------------------------
-- Table structure for lookup_country
-- ----------------------------
DROP TABLE IF EXISTS `lookup_country`;
CREATE TABLE `lookup_country`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lookup_country
-- ----------------------------
INSERT INTO `lookup_country` VALUES (1, 'Malaysia');

-- ----------------------------
-- Table structure for lookup_state
-- ----------------------------
DROP TABLE IF EXISTS `lookup_state`;
CREATE TABLE `lookup_state`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lookup_state
-- ----------------------------
INSERT INTO `lookup_state` VALUES (1, 'Selangor');
INSERT INTO `lookup_state` VALUES (2, 'Perak');
INSERT INTO `lookup_state` VALUES (3, 'Melaka');
INSERT INTO `lookup_state` VALUES (4, 'Johor');
INSERT INTO `lookup_state` VALUES (5, 'Terengganu');
INSERT INTO `lookup_state` VALUES (6, 'Kelantan');
INSERT INTO `lookup_state` VALUES (7, 'Kedah');
INSERT INTO `lookup_state` VALUES (8, 'Perlis');
INSERT INTO `lookup_state` VALUES (9, 'Pahang');
INSERT INTO `lookup_state` VALUES (10, 'Sarawak');
INSERT INTO `lookup_state` VALUES (11, 'Sabah');
INSERT INTO `lookup_state` VALUES (12, 'Negeri Sembilan');
INSERT INTO `lookup_state` VALUES (13, 'Pulau Pinang');

-- ----------------------------
-- Table structure for mapping_blood_pressure_level_range
-- ----------------------------
DROP TABLE IF EXISTS `mapping_blood_pressure_level_range`;
CREATE TABLE `mapping_blood_pressure_level_range`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `systolic_min` int NULL DEFAULT NULL,
  `systolic_max` int NULL DEFAULT NULL,
  `diastolic_min` int NULL DEFAULT NULL,
  `diastolic_max` int NULL DEFAULT NULL,
  `classification` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `binary_result` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mapping_blood_pressure_level_range
-- ----------------------------
INSERT INTO `mapping_blood_pressure_level_range` VALUES (39, 0, 129, 0, 80, 'Normal', 0);
INSERT INTO `mapping_blood_pressure_level_range` VALUES (40, 130, 1000, 81, 1000, 'Abnormal', 1);

-- ----------------------------
-- Table structure for mapping_bmi_level_range
-- ----------------------------
DROP TABLE IF EXISTS `mapping_bmi_level_range`;
CREATE TABLE `mapping_bmi_level_range`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `bmi_min` decimal(5, 2) NULL DEFAULT NULL,
  `bmi_max` decimal(5, 2) NULL DEFAULT NULL,
  `classification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `binary_result` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mapping_bmi_level_range
-- ----------------------------
INSERT INTO `mapping_bmi_level_range` VALUES (1, 0.00, 17.49, 'Abnormal', 1);
INSERT INTO `mapping_bmi_level_range` VALUES (2, 17.50, 22.99, 'Normal', 0);
INSERT INTO `mapping_bmi_level_range` VALUES (3, 23.00, 50.00, 'Abnormal', 1);

-- ----------------------------
-- Table structure for mapping_glucose_level_range
-- ----------------------------
DROP TABLE IF EXISTS `mapping_glucose_level_range`;
CREATE TABLE `mapping_glucose_level_range`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `glucose_min` decimal(5, 2) NULL DEFAULT NULL,
  `glucose_max` decimal(5, 2) NULL DEFAULT NULL,
  `classification` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `binary_result` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mapping_glucose_level_range
-- ----------------------------
INSERT INTO `mapping_glucose_level_range` VALUES (36, 0.00, 7.79, 'Abnormal', 1);
INSERT INTO `mapping_glucose_level_range` VALUES (37, 7.80, 11.10, 'Normal', 0);
INSERT INTO `mapping_glucose_level_range` VALUES (38, 11.11, 20.00, 'Abnormal', 1);

-- ----------------------------
-- Table structure for medical_advisory_messages
-- ----------------------------
DROP TABLE IF EXISTS `medical_advisory_messages`;
CREATE TABLE `medical_advisory_messages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `channel_id` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sender_id` int NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sent_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `session_id`(`channel_id` ASC) USING BTREE,
  INDEX `sender_id`(`sender_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 952 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of medical_advisory_messages
-- ----------------------------
INSERT INTO `medical_advisory_messages` VALUES (946, '8:138', 138, 'fdgdgd', '2024-09-26 12:39:49');
INSERT INTO `medical_advisory_messages` VALUES (947, '8:138', 138, 'sgsf', '2024-09-26 12:39:56');
INSERT INTO `medical_advisory_messages` VALUES (948, '8:138', 138, 'sgv', '2024-09-26 12:39:58');
INSERT INTO `medical_advisory_messages` VALUES (949, '8:138', 138, 'dvgs', '2024-09-26 12:40:00');
INSERT INTO `medical_advisory_messages` VALUES (950, '8:138', 138, 'dsfe', '2024-09-26 12:40:01');
INSERT INTO `medical_advisory_messages` VALUES (951, '8:138', 138, 'fsefe', '2024-09-26 12:40:03');

-- ----------------------------
-- Table structure for medical_advisory_sessions
-- ----------------------------
DROP TABLE IF EXISTS `medical_advisory_sessions`;
CREATE TABLE `medical_advisory_sessions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `program_id` int NULL DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `channel_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `program_id`(`program_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of medical_advisory_sessions
-- ----------------------------
INSERT INTO `medical_advisory_sessions` VALUES (49, 138, 8, '2024-09-26 12:39:37', '8:138');
INSERT INTO `medical_advisory_sessions` VALUES (50, 138, 10, '2024-09-29 00:19:00', '10:138');

-- ----------------------------
-- Table structure for programs
-- ----------------------------
DROP TABLE IF EXISTS `programs`;
CREATE TABLE `programs`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ordering` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of programs
-- ----------------------------
INSERT INTO `programs` VALUES (1, 'Predictive Probability', NULL, '2024-08-21 21:12:29', 'predictive-probability.svg', '#', 'InActive', NULL);
INSERT INTO `programs` VALUES (2, 'Large Language Model', NULL, '2024-08-21 21:12:43', 'llm.svg', '#', 'InActive', NULL);
INSERT INTO `programs` VALUES (8, 'Diabetes Behavioural Diagnosis Instrument', NULL, '2024-08-28 08:11:00', 'dbdi.svg', 'diabetes-behavioural-diagnosis-instrument', 'Active', 4);
INSERT INTO `programs` VALUES (10, 'Health Activity Tracker', NULL, '2024-08-28 08:11:16', 'health-activity-tracking.svg', 'health-activity-tracker', 'Active', 3);
INSERT INTO `programs` VALUES (12, 'Stop Smoking', NULL, '2024-08-28 08:11:33', 'stop-smoking.svg', 'stop-smoking', 'Active', 7);
INSERT INTO `programs` VALUES (13, 'Self Initiated Health Activities', NULL, '2024-08-28 08:11:56', 'health-activity.svg', 'self-initiated-health-activity', 'Active', 6);
INSERT INTO `programs` VALUES (15, 'Lung Cancer', NULL, '2024-08-28 08:12:30', 'lung-cancer.svg', '#', 'Active', 10);
INSERT INTO `programs` VALUES (16, 'COPD', NULL, '2024-08-28 08:12:39', 'copd.svg', '#', 'Active', 11);
INSERT INTO `programs` VALUES (17, 'CKD Calculcator', NULL, '2024-08-28 08:13:16', 'ckd.svg', '#', 'Active', 12);
INSERT INTO `programs` VALUES (18, 'Weight Management', NULL, '2024-08-28 08:13:24', 'weight-management.svg', '#', 'Active', 13);
INSERT INTO `programs` VALUES (19, 'Nutrition', NULL, '2024-08-28 08:13:33', 'nutrition.svg', 'nutrition', 'Active', 9);
INSERT INTO `programs` VALUES (21, 'Health Screening', NULL, '2024-09-03 11:21:45', 'health-screening.svg', 'health-screening', 'Active', 1);
INSERT INTO `programs` VALUES (22, 'Mental Health', NULL, '2024-09-03 12:07:45', 'mental-health.svg', '#', 'Active', 10);

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ordering` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES (9, 'Medical Advisory', NULL, '2024-08-28 08:11:08', 'medical-adisory.svg', 'medical-advisory', 'Active', 5);
INSERT INTO `services` VALUES (14, 'Social Media Campaign', NULL, '2024-08-28 08:12:11', 'social-media-campaign.svg', 'social-media-campaign', 'Active', 8);

-- ----------------------------
-- Table structure for social_media_campaign
-- ----------------------------
DROP TABLE IF EXISTS `social_media_campaign`;
CREATE TABLE `social_media_campaign`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_media_campaign
-- ----------------------------
INSERT INTO `social_media_campaign` VALUES (1, 'Program ISS: Rawatan percuma hingga RM10,000 setahun untuk rakyat Selangor', 'https://www.kosmo.com.my/2024/09/19/fasiliti-pengilangan-insulin-dan-vaksin-pertama-di-malaysia/#google_vignette', '2024-09-24', '2024-09-24 01:48:36', '2024-09-24 01:48:36');

-- ----------------------------
-- Table structure for stop_smoking_answer
-- ----------------------------
DROP TABLE IF EXISTS `stop_smoking_answer`;
CREATE TABLE `stop_smoking_answer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `points` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stop_smoking_answer
-- ----------------------------
INSERT INTO `stop_smoking_answer` VALUES (1, 138, 5, 'Yes', 1, '2024-09-26 08:36:36');
INSERT INTO `stop_smoking_answer` VALUES (2, 138, 6, 'Yes', 1, '2024-09-26 08:36:36');
INSERT INTO `stop_smoking_answer` VALUES (3, 138, 1, 'Within 5 minutes', 3, '2024-09-26 08:36:36');
INSERT INTO `stop_smoking_answer` VALUES (4, 138, 2, 'No', 0, '2024-09-26 08:36:36');
INSERT INTO `stop_smoking_answer` VALUES (5, 138, 3, 'The first one in the morning', 1, '2024-09-26 08:36:36');
INSERT INTO `stop_smoking_answer` VALUES (6, 138, 4, '10 or fewer', 0, '2024-09-26 08:36:36');

-- ----------------------------
-- Table structure for stop_smoking_question
-- ----------------------------
DROP TABLE IF EXISTS `stop_smoking_question`;
CREATE TABLE `stop_smoking_question`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `possible_answers` json NOT NULL,
  `points_map` json NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stop_smoking_question
-- ----------------------------
INSERT INTO `stop_smoking_question` VALUES (1, 'How soon after you wake up do you smoke your first cigarette?', '[\"Within 5 minutes\", \"5 to 30 minutes\", \"31 to 60 minutes\", \"After 60 minutes\"]', '{\"5 to 30 minutes\": 2, \"31 to 60 minutes\": 1, \"After 60 minutes\": 0, \"Within 5 minutes\": 3}');
INSERT INTO `stop_smoking_question` VALUES (2, 'Do you find it difficult not to smoke in places where you shouldn’t, such as in church or school, in a movie, at the library, on a bus, in court or in a hospital?', '[\"Yes\", \"No\"]', '{\"No\": 0, \"Yes\": 1}');
INSERT INTO `stop_smoking_question` VALUES (3, 'Which cigarette would you most hate to give up; which cigarette do you treasure the most?', '[\"The first one in the morning\", \"Any other one\"]', '{\"Any other one\": 0, \"The first one in the morning\": 1}');
INSERT INTO `stop_smoking_question` VALUES (4, 'How many cigarettes do you smoke each day?', '[\"10 or fewer\", \"11 to 20\", \"21 to 30\", \"31 or more\"]', '{\"11 to 20\": 1, \"21 to 30\": 2, \"31 or more\": 3, \"10 or fewer\": 0}');
INSERT INTO `stop_smoking_question` VALUES (5, 'Do you smoke more during the first few hours after waking up than during the rest of the day?', '[\"Yes\", \"No\"]', '{\"No\": 0, \"Yes\": 1}');
INSERT INTO `stop_smoking_question` VALUES (6, 'Do you still smoke if you are so sick that you are in bed most of the day, or if you have a cold or the flu and have trouble breathing?', '[\"Yes\", \"No\"]', '{\"No\": 0, \"Yes\": 1}');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `identification_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dob` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nationality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `state` smallint NULL DEFAULT NULL,
  `postcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `country` smallint NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `online_status` enum('Online','Offline') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Offline',
  `last_active_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `contact_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `race` smallint NULL DEFAULT NULL,
  `education_level` smallint NULL DEFAULT NULL,
  `occupation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `oku_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 225 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (138, 'Muhammad Fuad Bin Shamsuddin', 34, 'Male', '900907105331', '$2a$10$gejom8SOuXtK5BvvZOOmq.i6q2Ys3FnZDAosSyQBXvQ.nFVEPT/gG', '1990-09-15', 'Done', 'Melayu', 'm.fuad_90@yahoo.com', 'Lot 4579,Jalan Norwana Batu 16 Tambak Jawa', 3, '45800', 1, 'juan.jpg', 'Offline', '2024-09-30 09:53:09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (140, 'Muhammad Shah Izwan b Xakri', 25, 'Male', '990224145379', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (141, 'Muhammad Razman Bin Abdul Rahim', 33, 'Male', '911222083845', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (142, 'Siti Nur Amira', 25, 'Female', '990206105154', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (143, 'Nur Azmina Binti Abdul Malik', 29, 'Female', '950930146452', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (144, 'Nur Iffah Binti Amirrudin', 27, 'Female', '970918106886', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (145, 'Farah Batrisya Binti Samhan', 24, 'Female', '001110140704', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (146, 'Siti Fatima Binti Mohamed Yusop', 31, 'Female', '930308106014', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (147, 'Nur Fareez Bin Othman', 25, 'Male', '9991027015385', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (148, 'Nur Alia Binti Alias', 30, 'Female', '940321106288', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (149, 'Norhaiza Binti Ahmad', 34, 'Female', '900605105926', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (150, 'Bryna Mae', 27, 'Female', '971116125246', NULL, NULL, NULL, 'Lain-lain', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (151, 'Noor Nurul Fatihah', 32, 'Female', '921109115220', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (152, 'Aimi Liyana Binti Mohd Norani', 38, 'Female', '860311155080', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (153, 'Faezatul Ezzati Binti Zainal', 32, 'Female', '920403085590', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (154, 'Syafiqah Diana', 31, 'Female', '930510106106', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (155, 'NoeSyazwani Binti Johari', 31, 'Female', '931205105910', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (156, 'Safiah Hanim Binti Samsudin', 45, 'Female', '790112085360', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (157, 'Nurul Husna Binti Mohd Satar', 28, 'Female', '961210105066', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (158, 'Nur Adriana Binti Eddie', 23, 'Female', '011224101630', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (159, 'Norshahida Binti Azrul Joon', 31, 'Female', '930616065162', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (160, 'Nur Hidayatul Hidayu', 33, 'Female', '910101145982', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (161, 'Nur Aqilah Sabrena Binti Rahim', 24, 'Female', '960804025712', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (162, 'Muhammad Haziq Bin Mohammed Yusoff', 33, 'Male', '911029075477', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (163, 'Theivanayagi Pathmanathan', 47, 'Female', '770526086250', NULL, NULL, NULL, 'Indian', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (164, 'Norfazira Binti Kasim', 31, 'Female', '930102036264', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (165, 'Nurul Hafizah Binti Mohd Hazman', 28, 'Female', '960725086170', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (166, 'Mohamad Hafiz Imran Bin Johar', 27, 'Male', '970611015277', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (167, 'Nur Izzati Binti Salim', 32, 'Female', '920303146480', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (168, 'Mohd Radi Ariff Bin Kosnin', 36, 'Male', '880224145283', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (169, 'Ain Azierah Binti Azman', 31, 'Female', '930625145906', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (170, 'Nurul Asyiqin Batrisyia Yaakub', 24, 'Female', '001109140926', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (171, 'Hairul Muzaffar Bin Mohammad', 44, 'Male', '801001015539', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (172, 'Wan Mazuki Wan Hassan', 51, 'Male', '731201115373', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (173, 'Ariff Ikram', 38, 'Male', '860925295753', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (174, 'Mohd Afandi Bin Mohd Devi', 38, 'Male', '860319385513', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (175, 'Muhamad Muzakkir Bin Muskamal', 29, 'Male', '941207055231', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (176, 'Shairah Binti Hazman', 27, 'Female', '970425105340', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (177, 'Nur Zatul Iftitah Binti Zolkania', 34, 'Female', '901204035896', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (178, 'Nurul Nadhirah Binti Mohd Rapi', 30, 'Female', '940409065230', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (179, 'Nurirliyana Irwan', 4, 'Female', '900109016190', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (180, 'Crystal Linda Casianus', 35, 'Female', '890326125768', NULL, NULL, NULL, 'Lain-lain', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (181, 'Diana Yusrina Binti Asri', 28, 'Female', '960725565012', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (182, 'Mohd Farrish Khalid', 51, 'Male', '730704145721', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (183, 'Zairudin Jamaludin', 48, 'Male', '661012145592', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (184, 'Muhammad Shazwan Bin Suhiman', 33, 'Male', '911002106229', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (185, 'Muhammad Syukrialif Bin Mohd Husin', 30, 'Male', '940314036103', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (186, 'Najihah Mohd Tahir', 37, 'Female', '870805115374', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (187, 'Jasman Haris', 41, 'Male', '830601146105', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (188, 'Nur Afiqah Bint Jamal', 30, 'Female', '940709145902', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (189, 'Siti Rohana', 32, 'Female', '920509025588', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (190, 'Ahmad Yusof Baharudin', 33, 'Male', '911118088829', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (191, 'Nurul Atikah Ahmad Rosli', 30, 'Female', '941126085826', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (192, 'Dr Abdul Hafiz Bin Idris', 34, 'Male', '900402135105', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (193, 'Nur Ainina', 29, 'Female', '950609035238', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (194, 'Sharifah Nur Farihah Binti Syed Amran', 24, 'Female', '00103012192', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (195, 'Azizah Masturina Bin Mohs Salleh', 28, 'Female', '960624106320', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (196, 'Sivaneswari A/P Erulappan', 34, 'Female', '901129055052', NULL, NULL, NULL, 'Indian', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (197, 'Muhammad Ukail Bin Roslan', 24, 'Male', '000215101565', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (198, 'Nurul Sarah Binti Daud', 30, 'Female', '940307015486', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (199, 'Anis Farhana Binti Badrul Hisham', 33, 'Female', '910813065446', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (200, 'Nur Ashiqin', 31, 'Female', '930704105684', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (201, 'Nur Zahirah Zulkifli', 35, 'Female', '891209435008', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (202, 'Maizura Binti Abdul Jabar', 42, 'Female', '820530065156', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (203, 'Fatimah Binti Jaafar', 52, 'Female', '710406045222', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (204, 'Seri Mastura Muhamad', 41, 'Female', '830413105306', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (205, 'Marini Jamlus', 51, 'Female', '730707105258', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (206, 'Aqilah', 27, 'Female', '970803075370', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (207, 'Muhammad Izzat Bin Ismail', 30, 'Male', '941201146909', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (208, 'Fazidahanum Mapol', 51, 'Female', '731022015932', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (209, 'Nurul Ahsikin Binti Ramli', 32, 'Female', '921205115394', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (210, 'Mohamad Khairul Naim', 30, 'Male', '940218065297', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (211, 'Wafa Binti Yasir', 31, 'Female', '930420855058', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (212, 'Syuhada', 39, 'Female', '860317386440', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (213, 'Lokman Hakim', 46, 'Male', '780317055509', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (214, 'Ismail bin Abu Bakar', 41, 'Male', '831124015755', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (215, 'Nur Eleena Binti Ramli', 34, 'Female', '901218145252', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (216, 'Fatimah Binti Ishak', 33, 'Female', '910803026144', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (217, 'Ahmad Tarmzii Sazali', 30, 'Male', '940616146383', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (218, 'Marlina Omar', 42, 'Female', '820517145338', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (219, 'Nadiatul Herlina Binti Nordin', 31, 'Female', '930324085604', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (220, 'Nur Aimi Fatin Binti Ahmad Razali', 34, 'Female', '8991112085320', NULL, NULL, NULL, 'Melayu', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (221, 'Dr. Jasman Haris', NULL, 'Male', NULL, '$2a$10$PeK1USg4Y4rI1/eo0YDNEOR0kjIVTzSnxNpm45GmI0Vd7SV8Vcw4q', NULL, 'Done', 'Melayu', 'drjasman@protecthealth.com.my', NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (222, 'Aiman', NULL, 'Male', NULL, '$2a$10$uTtKtZLdhVG8zy48T4VN7O2QOTZw.XZdR6q0MtSG79WfHyp.H52Mi', NULL, 'Done', 'Melayu', 'aiman@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-21 21:11:15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (223, 'Atikah', NULL, 'Female', NULL, '$2a$10$gejom8SOuXtK5BvvZOOmq.i6q2Ys3FnZDAosSyQBXvQ.nFVEPT/gG', NULL, 'Done', 'Melayu', 'nurul.atikah@protecthealth.com.my', NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-08-22 15:28:30', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (224, 'abc', NULL, NULL, NULL, '$2a$10$LPi1gcKLqiNZgoWbAU/C2eRb32RcaXf3BZUALqCqaSyIDpSXHNw7u', NULL, NULL, NULL, 'abc@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Offline', '2024-09-26 07:11:11', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for xml_data
-- ----------------------------
DROP TABLE IF EXISTS `xml_data`;
CREATE TABLE `xml_data`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `xml_content` json NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xml_data
-- ----------------------------
INSERT INTO `xml_data` VALUES (8, '138', '{\"DATA\": {\"FOOTER\": {\"NO_OF_CASES\": {\"_content\": \"1\"}}, \"HEADER\": {\"LAB_NAME\": {\"_content\": \"PATHLAB\"}, \"DATE_FILE\": {\"_content\": \"15/04/2022\"}, \"EVENT_NAME\": {\"_content\": \"PEKAB40\"}}, \"RECORD\": {\"IC\": {\"_content\": \"125220\"}, \"LAB_NO\": {\"_content\": \"27947428\"}, \"PIN_NO\": {\"_content\": \"456419\"}, \"REF_NO\": {\"_content\": \"1168051\"}, \"DR_NAME\": {\"_content\": \"PEKA B40\"}, \"COLL_DATE\": {\"_content\": \"30/11/2022\"}, \"COLL_TIME\": {\"_content\": \"08:00\"}, \"PRNT_DATE\": {\"_content\": \"30/11/2022\"}, \"PRNT_TIME\": {\"_content\": \"08:32\"}, \"REGD_DATE\": {\"_content\": \"30/11/2022\"}, \"REGD_TIME\": {\"_content\": \"11:54\"}, \"URINALYSIS\": {\"PH\": {\"name\": {\"_content\": \"PH\"}, \"units\": {}, \"param1\": {}, \"param2\": {\"_content\": \"6.0\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"4.8\"}, \"upper_limit\": {\"_content\": \"8.4\"}, \"outside_normal\": {\"_content\": \"NORMAL\"}}, \"BLOOD\": {\"name\": {\"_content\": \"BLOOD\"}, \"units\": {}, \"param1\": {\"_content\": \"NEGATIVE\"}, \"param2\": {}, \"param3\": {}, \"lower_limit\": {}, \"upper_limit\": {}, \"outside_normal\": {}}, \"COLOR\": {\"name\": {\"_content\": \"COLOR\"}, \"units\": {}, \"param1\": {\"_content\": \"STRAW\"}, \"param2\": {}, \"param3\": {}, \"lower_limit\": {}, \"upper_limit\": {}, \"outside_normal\": {}}, \"KETONE\": {\"name\": {\"_content\": \"KETONE\"}, \"units\": {}, \"param1\": {\"_content\": \"NEGATIVE\"}, \"param2\": {}, \"param3\": {}, \"lower_limit\": {}, \"upper_limit\": {}, \"outside_normal\": {}}, \"GLUCOSE\": {\"name\": {\"_content\": \"GLUCOSE\"}, \"units\": {}, \"param1\": {\"_content\": \"2+\"}, \"param2\": {}, \"param3\": {}, \"lower_limit\": {}, \"upper_limit\": {}, \"outside_normal\": {}}, \"PROTEIN\": {\"name\": {\"_content\": \"PROTEIN\"}, \"units\": {}, \"param1\": {\"_content\": \"1+\"}, \"param2\": {}, \"param3\": {}, \"lower_limit\": {}, \"upper_limit\": {}, \"outside_normal\": {}}, \"APPEARANCE\": {\"name\": {\"_content\": \"APPEARANCE\"}, \"units\": {}, \"param1\": {\"_content\": \"HAZY\"}, \"param2\": {}, \"param3\": {}, \"lower_limit\": {}, \"upper_limit\": {}, \"outside_normal\": {}}, \"LEUCOCYTES\": {\"name\": {\"_content\": \"LEUCOCYTES\"}, \"units\": {}, \"param1\": {\"_content\": \"NEGATIVE\"}, \"param2\": {}, \"param3\": {}, \"lower_limit\": {}, \"upper_limit\": {}, \"outside_normal\": {}}, \"SP_GRAVITY\": {\"name\": {\"_content\": \"SP GRAVITY\"}, \"units\": {}, \"param1\": {}, \"param2\": {\"_content\": \"1.030\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"1.005\"}, \"upper_limit\": {\"_content\": \"1.030\"}, \"outside_normal\": {\"_content\": \"ABNORMAL\"}}, \"URINE_NITRITE\": {\"name\": {\"_content\": \"URINE NITRITE\"}, \"units\": {}, \"param1\": {\"_content\": \"NEGATIVE\"}, \"param2\": {}, \"param3\": {}, \"lower_limit\": {}, \"upper_limit\": {}, \"outside_normal\": {}}, \"URINE_BILIRUBIN\": {\"name\": {\"_content\": \"URINE BILIRUBIN\"}, \"units\": {}, \"param1\": {\"_content\": \"NEGATIVE\"}, \"param2\": {}, \"param3\": {}, \"lower_limit\": {}, \"upper_limit\": {}, \"outside_normal\": {}}, \"URINALYSIS_REMARKS\": {\"param1\": {}, \"param2\": {}, \"param3\": {}}, \"URINE_UROBILINOGEN\": {\"name\": {\"_content\": \"URINE UROBILINOGEN\"}, \"units\": {}, \"param1\": {\"_content\": \"NORMAL\"}, \"param2\": {}, \"param3\": {}, \"lower_limit\": {}, \"upper_limit\": {}, \"outside_normal\": {}}}, \"CLINIC_ADDR\": {\"_content\": \"F01 & F02,TING 1,BLOK 2300,CENTURY SQUAREJLN USAHAWAN CYBERJAYA SELANGOR\"}, \"HAEMATOLOGY\": {\"MCH\": {\"name\": {\"_content\": \"MCH\"}, \"units\": {\"_content\": \"PG\"}, \"param1\": {}, \"param2\": {\"_content\": \"30\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"27\"}, \"upper_limit\": {\"_content\": \"32\"}, \"outside_normal\": {\"_content\": \"NORMAL\"}}, \"MCV\": {\"name\": {\"_content\": \"MCV\"}, \"units\": {\"_content\": \"FL\"}, \"param1\": {}, \"param2\": {\"_content\": \"100\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"76\"}, \"upper_limit\": {\"_content\": \"96\"}, \"outside_normal\": {\"_content\": \"ABNORMAL\"}}, \"PCV\": {\"name\": {\"_content\": \"PCV\"}, \"units\": {\"_content\": \"%\"}, \"param1\": {}, \"param2\": {\"_content\": \"52\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"35\"}, \"upper_limit\": {\"_content\": \"47\"}, \"outside_normal\": {\"_content\": \"HIGH\"}}, \"RBC\": {\"name\": {\"_content\": \"RBC\"}, \"units\": {\"_content\": \"X10^12/L\"}, \"param1\": {}, \"param2\": {\"_content\": \"5.1\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"3.9\"}, \"upper_limit\": {\"_content\": \"5.6\"}, \"outside_normal\": {\"_content\": \"NORMAL\"}}, \"RDW\": {\"name\": {\"_content\": \"RDW\"}, \"units\": {\"_content\": \"%\"}, \"param1\": {}, \"param2\": {\"_content\": \"12.9\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"11.5\"}, \"upper_limit\": {\"_content\": \"14.5\"}, \"outside_normal\": {\"_content\": \"NORMAL\"}}, \"WBC\": {\"name\": {\"_content\": \"WBC\"}, \"units\": {\"_content\": \"X10^9/L\"}, \"param1\": {}, \"param2\": {\"_content\": \"9.1\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"4.0\"}, \"upper_limit\": {\"_content\": \"11.0\"}, \"outside_normal\": {\"_content\": \"NORMAL\"}}, \"MCHC\": {\"name\": {\"_content\": \"MCHC\"}, \"units\": {\"_content\": \"G/DL\"}, \"param1\": {}, \"param2\": {\"_content\": \"30\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"32\"}, \"upper_limit\": {\"_content\": \"36\"}, \"outside_normal\": {\"_content\": \"ABNORMAL\"}}, \"HAEMOGLOBIN\": {\"name\": {\"_content\": \"HAEMOGLOBIN\"}, \"units\": {\"_content\": \"G/DL\"}, \"param1\": {}, \"param2\": {\"_content\": \"15.4\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"11.5\"}, \"upper_limit\": {\"_content\": \"16.5\"}, \"outside_normal\": {\"_content\": \"NORMAL\"}}, \"PLATELET_COUNT\": {\"name\": {\"_content\": \"PLATELET COUNT\"}, \"units\": {\"_content\": \"X10^9/L\"}, \"param1\": {}, \"param2\": {\"_content\": \"171\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"150\"}, \"upper_limit\": {\"_content\": \"400\"}, \"outside_normal\": {\"_content\": \"NORMAL\"}}, \"HAEMATOLOGY_REMARKS\": {\"param1\": {\"_content\": \"Validated by Calculated Test\"}, \"param2\": {}, \"param3\": {}}}, \"LIPID_PROFILE\": {\"TRIGLYCERIDES\": {\"name\": {\"_content\": \"TRIGLYCERIDES\"}, \"units\": {\"_content\": \"MMOL/L\"}, \"param1\": {}, \"param2\": {\"_content\": \"1.9\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"&lt;1.7\"}, \"upper_limit\": {}, \"outside_normal\": {\"_content\": \"ABNORMAL\"}}, \"HDL_CHOLESTEROL\": {\"name\": {\"_content\": \"HDL CHOLESTEROL\"}, \"units\": {\"_content\": \"MMOL/L\"}, \"param1\": {}, \"param2\": {\"_content\": \"1.84\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"&lt;1.04\"}, \"upper_limit\": {}, \"outside_normal\": {\"_content\": \"NORMAL\"}}, \"LDL_CHOLESTEROL\": {\"name\": {\"_content\": \"LDL CHOLESTEROL\"}, \"units\": {\"_content\": \"MMOL/L\"}, \"param1\": {}, \"param2\": {\"_content\": \"3.5\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"&lt;2.6\"}, \"upper_limit\": {}, \"outside_normal\": {\"_content\": \"ABNORMAL\"}}, \"TOTAL_HDL_RATIO\": {\"name\": {\"_content\": \"TOTAL/HDL RATIO\"}, \"units\": {}, \"param1\": {}, \"param2\": {\"_content\": \"3.4\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"&lt;5.0\"}, \"upper_limit\": {}, \"outside_normal\": {}}, \"TOTAL_CHOLESTEROL\": {\"name\": {\"_content\": \"TOTAL CHOLESTEROL\"}, \"units\": {\"_content\": \"MMOL/L\"}, \"param1\": {}, \"param2\": {\"_content\": \"6.2\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"&lt;5.2\"}, \"upper_limit\": {}, \"outside_normal\": {\"_content\": \"ABNORMAL\"}}, \"LIPID_PROFILE_REMARKS\": {\"param1\": {}, \"param2\": {}, \"param3\": {}}}, \"DIFFERENTIAL_COUNT\": {\"HBA1C\": {\"name\": {\"_content\": \"HBA1C\"}, \"units\": {\"_content\": \"%\"}, \"param1\": {}, \"param2\": {\"_content\": \"15.2\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"&lt;5.6\"}, \"upper_limit\": {}, \"outside_normal\": {\"_content\": \"ABNORMAL\"}}, \"BASOPHIL\": {\"name\": {\"_content\": \"BASOPHIL\"}, \"units\": {\"_content\": \"%\"}, \"param1\": {}, \"param2\": {\"_content\": \"0.9\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"0\"}, \"upper_limit\": {\"_content\": \"2\"}, \"outside_normal\": {\"_content\": \"NORMAL\"}}, \"MONOCYTE\": {\"name\": {\"_content\": \"MONOCYTE\"}, \"units\": {\"_content\": \"%\"}, \"param1\": {}, \"param2\": {\"_content\": \"7.7\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"2\"}, \"upper_limit\": {\"_content\": \"10\"}, \"outside_normal\": {\"_content\": \"NORMAL\"}}, \"EOSINOPHIL\": {\"name\": {\"_content\": \"EOSINOPHIL\"}, \"units\": {\"_content\": \"%\"}, \"param1\": {}, \"param2\": {\"_content\": \"0.9\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"0\"}, \"upper_limit\": {\"_content\": \"6\"}, \"outside_normal\": {\"_content\": \"NORMAL\"}}, \"HBA1C_MMOL\": {\"name\": {\"_content\": \"HBA1C MMOL\"}, \"units\": {\"_content\": \"MMOL/MOL\"}, \"param1\": {}, \"param2\": {\"_content\": \"143\"}, \"param3\": {\"_content\": \"NORMAL\"}, \"lower_limit\": {\"_content\": \"&lt;38\"}, \"upper_limit\": {}, \"outside_normal\": {\"_content\": \"ABNORMAL\"}}, \"LYMPHOCYTE\": {\"name\": {\"_content\": \"LYMPHOCYTE\"}, \"units\": {\"_content\": \"%\"}, \"param1\": {}, \"param2\": {\"_content\": \"26.2\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"20\"}, \"upper_limit\": {\"_content\": \"45\"}, \"outside_normal\": {\"_content\": \"NORMAL\"}}, \"NEUTROPHIL\": {\"name\": {\"_content\": \"NEUTROPHIL\"}, \"units\": {\"_content\": \"%\"}, \"param1\": {}, \"param2\": {\"_content\": \"64.3\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"40\"}, \"upper_limit\": {\"_content\": \"75\"}, \"outside_normal\": {\"_content\": \"NORMAL\"}}, \"DIFFERENTIAL_COUNT_REMARKS\": {\"param1\": {}, \"param2\": {}, \"param3\": {}}}, \"KIDNEY_FUCNTION_TESTS\": {\"EGFR\": {\"name\": {\"_content\": \"EGFR\"}, \"units\": {\"_content\": \"ML/MIN\"}, \"param1\": {}, \"param2\": {\"_content\": \"50\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"&gt;60\"}, \"upper_limit\": {}, \"outside_normal\": {\"_content\": \"ABNORMAL\"}}, \"UREA\": {\"name\": {\"_content\": \"UREA\"}, \"units\": {\"_content\": \"MMOL/L\"}, \"param1\": {}, \"param2\": {\"_content\": \"5.6\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"1.7\"}, \"upper_limit\": {\"_content\": \"8.4\"}, \"outside_normal\": {\"_content\": \"NORMAL\"}}, \"SODIUM\": {\"name\": {\"_content\": \"SODIUM\"}, \"units\": {\"_content\": \"MMOL/L\"}, \"param1\": {}, \"param2\": {\"_content\": \"142\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"137\"}, \"upper_limit\": {\"_content\": \"150\"}, \"outside_normal\": {\"_content\": \"NORMAL\"}}, \"POTASSIUM\": {\"name\": {\"_content\": \"POTASSIUM\"}, \"units\": {\"_content\": \"MMOL/L\"}, \"param1\": {}, \"param2\": {\"_content\": \"4.0\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"3.5\"}, \"upper_limit\": {\"_content\": \"5.3\"}, \"outside_normal\": {\"_content\": \"HIGH\"}}, \"CREATININE\": {\"name\": {\"_content\": \"CREATININE\"}, \"units\": {\"_content\": \"UMOL/L\"}, \"param1\": {}, \"param2\": {\"_content\": \"100\"}, \"param3\": {}, \"lower_limit\": {\"_content\": \"44\"}, \"upper_limit\": {\"_content\": \"97\"}, \"outside_normal\": {\"_content\": \"ABNORMAL\"}}, \"KIDNEY_FUNCTION_TESTS_REMARKS\": {\"param1\": {}, \"param2\": {}, \"param3\": {}}}}}}', '2024-09-26 16:27:35');

SET FOREIGN_KEY_CHECKS = 1;
