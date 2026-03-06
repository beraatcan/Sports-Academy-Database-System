-- 1. Programlara Kayıtlı Öğrenci ve Spor Branşı Listesi
-- Hangi öğrencinin hangi branşta, hangi programa kayıtlı olduğunu gösterir.
SELECT s.student_name, p.program_name, sp.sport_name 
FROM student s 
JOIN enrollment e ON s.student_id = e.student_id 
JOIN program p ON e.program_id = p.program_id 
JOIN sport sp ON p.sport_id = sp.sport_id;

-- 2. Program Başına Öğrenci Sayısı Analizi
-- Her bir eğitim programının doluluk oranını ve popülerliğini ölçer.
SELECT p.program_name, COUNT(e.student_id) AS num_students 
FROM program p 
LEFT JOIN enrollment e ON p.program_id = e.program_id 
GROUP BY p.program_name;

-- 3. Branş Bazlı Toplam Gelir Raporu
-- Spor dallarının akademiye sağladığı toplam finansal katkıyı listeler.
SELECT sp.sport_name, SUM(pay.amount) AS total_income 
FROM sport sp 
JOIN program p ON sp.sport_id = p.sport_id 
JOIN enrollment e ON p.program_id = e.program_id 
JOIN payment pay ON e.enrollment_id = pay.enrollment_id 
GROUP BY sp.sport_name;

-- 4. En Çok Ödeme Yapan "VIP" Öğrenciler (Top 5)
-- En yüksek tutarlı harcama yapan öğrencileri belirler.
SELECT s.student_name, SUM(pay.amount) AS total_paid 
FROM student s 
JOIN enrollment e ON s.student_id = e.student_id 
JOIN payment pay ON e.enrollment_id = pay.enrollment_id 
GROUP BY s.student_name 
ORDER BY total_paid DESC LIMIT 5;

-- 5. Program Süreleri ve Koç Eşleştirmesi
-- Programların kaç gün sürdüğünü ve sorumlu antrenörleri listeler.
SELECT p.program_name, c.coach_name, DATEDIFF(p.end_date, p.start_date) AS duration_days 
FROM program p 
JOIN coach c ON p.coach_id = c.coach_id;

-- 6. Cinsiyet Dağılımı İstatistiği
-- Akademideki demografik yapıyı analiz eder.
SELECT gender, COUNT(*) AS total 
FROM student 
GROUP BY gender;