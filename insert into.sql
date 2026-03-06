-- ATHLETICORE SPORTS ACADEMY DATA SEED (Pre-Normalization)

-- Insert values into sport table
INSERT INTO sport VALUES 
(1, 'Football'),
(2, 'Basketball'),
(3, 'Volleyball'),
(4, 'Swimming'),
(5, 'Tennis'),
(6, 'Athletics'),
(7, 'Handball'),
(8, 'Archery');

-- Insert values into coach table (with address column)
INSERT INTO coach VALUES 
(1, 'Murat Akgündüz', 'Football', 'murat.akgunduz@sporakademi.com', '55087859645', 'Günçiçek Mahallesi Fidan Caddesi, 36077.Sokak Menekşe Apartmanı, Kırıkkale'),
(2, 'Kerem Yalın Şener', 'Basketball', 'yalin.sener@sporakademi.com', '51618923120', 'Altgeçit Mahallesi Papatya Caddesi, 873. Sokak Gül Apartmanı, Ankara'),
(3, 'Asuman Uğurlu', 'Swimming', 'asuman.ugurlu@sporakademi.com', '53312577892', 'Altıntepe Mahallesi, 773. Sokak, Ankara; Çiçek Mahallesi, 456. Sokak, Kırıkkale'),
(4, 'Ferhat Özçelik', 'Tennis', 'ferhat.ozcelik@sporakademi.com', '59900122345', 'Bahçelievler Mahallesi, 447. Sokak, Ankara'),
(5, 'Melda Koçak', 'Volleyball', 'melda.kocak@sporakademi.com', '50833991456', 'Kurtuluş Mahallesi, 123. Sokak, Kırıkkale; Barış Mahallesi, 888. Sokak, Ankara');

-- Insert values into student table (with address column)
INSERT INTO student VALUES 
(1, 'Erik Şensoy', '2007-06-15', 'Male', 'ifirat@yahoo.com', '56681499556', 'Türk Mahallesi, 979. Sokak, Ankara; Ahi Mesut Mahallesi, 456. Sokak, Ankara'),
(2, 'Sümerya Akçay Yorulmaz', '2012-06-17', 'Male', 'cangur41@hotmail.com', '55515133975', 'Soykut Soylu Mahallesi, 49511. Sokak, Ankara'),
(3, 'Hilal Yurtçu', '2007-04-14', 'Female', 'lkarabulut@hotmail.com', '56500411592', 'Elifce Mahallesi, 636. Sokak, Kırıkkale'),
(4, 'Kurt Torun', '2011-01-24', 'Male', 'azimdemirel@kaplanlar.com', '50823967129', 'Avci Kent Mahallesi, 788. Sokak, Ankara; Zafer Mahallesi, 222. Sokak, Kırıkkale'),
(5, 'Fikriye Kula', '2012-08-23', 'Female', 'umitdemir@hotmail.com', '59829347020', 'Sevimli Vadisi Mahallesi, 847. Sokak, Ankara'),
(6, 'Yusuf Emre Sütçü', '2011-09-19', 'Male', 'oktayilhan@yahoo.com', '56129740002', 'Mertçe Bahçesi Mahallesi, 773. Sokak, Ankara'),
(7, 'Turan Kızıltepe', '2009-10-24', 'Male', 'akarsu.ipek@terlikci.com', '54422702139', 'Göksu Yaylası Mahallesi, 609. Sokak, Kırıkkale; Kızılırmak Mahallesi, 345. Sokak, Ankara'),
(8, 'Sevgi Alper', '2007-12-05', 'Female', 'elifdaglar@hotmail.com', '58212539384', 'Yeşilkent Mahallesi, 843. Sokak, Ankara'),
(9, 'Gülten Kutluer', '2013-02-15', 'Female', 'fatmagul@gmail.com', '53500639114', 'Çamlık Tepesi Mahallesi, 231. Sokak, Ankara'),
(10, 'Hüseyin Şeker', '2011-03-21', 'Male', 'm.seker@posta.com', '53682537845', 'Gölbaşı Mahallesi, 714. Sokak, Ankara');

-- Insert values into program table
INSERT INTO program VALUES 
(1, 'Football Development Program', '2025-03-01', '2025-05-31', 1, 1),
(2, 'Basketball Basic Training', '2025-04-10', '2025-06-10', 2, 2),
(3, 'Swimming Technique Development', '2025-05-05', '2025-07-05', 3, 4),
(4, 'Tennis Advanced Program', '2025-06-01', '2025-08-01', 4, 5),
(5, 'Volleyball Skills Enhancement', '2025-04-20', '2025-06-20', 5, 3);

-- Insert values into enrollment table
INSERT INTO enrollment VALUES 
(1, '2025-04-20', 'Pending', 1, 1),
(2, '2025-04-22', 'Completed', 2, 1),
(3, '2025-04-21', 'Pending', 3, 2),
(4, '2025-04-25', 'Completed', 4, 3),
(5, '2025-04-23', 'Completed', 5, 4),
(6, '2025-04-24', 'Pending', 6, 2),
(7, '2025-04-22', 'Pending', 7, 5),
(8, '2025-04-21', 'Completed', 8, 3),
(9, '2025-04-20', 'Completed', 9, 4);

-- Insert values into payment table
INSERT INTO payment VALUES 
(1, 1001, '2025-04-28', 1000.00),
(2, 1002, '2025-04-27', 800.00),
(3, 1003, '2025-04-29', 950.00),
(4, 1004, '2025-04-30', 1200.00),
(5, 1005, '2025-04-26', 1100.00),
(6, 1006, '2025-04-28', 1050.00),
(7, 1007, '2025-04-29', 1000.00),
(8, 1008, '2025-04-27', 1150.00),
(9, 1009, '2025-04-30', 900.00);