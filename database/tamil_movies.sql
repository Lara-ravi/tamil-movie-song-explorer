CREATE DATABASE tamil_movies;
USE tamil_movies;
 
CREATE TABLE tamil_songs (
  id INT AUTO_INCREMENT PRIMARY KEY,
  artist_id INT,
  movie_name VARCHAR(100),
  song VARCHAR(100),
  singer_name VARCHAR(200),
  release_year INT,
  rating DECIMAL(2,1)
);
 
INSERT INTO tamil_songs (artist_id, movie_name, song, singer_name, release_year, rating) VALUES
(2,'Master','Vaathi Coming','Gana Balachandar',2021,4.5),
(2,'Master','Kutti Story','Vijay',2021,4.3),
(2,'Beast','Arabic Kuthu','Anirudh Ravichander, Jonita Gandhi',2022,4.4),
(2,'Jailer','Kaavaalaa','Shilpa Rao',2023,4.6),
(2,'Jailer','Hukum','Anirudh Ravichander',2023,4.5),
(2,'Leo','Naa Ready','Vijay',2023,4.2),
(2,'Leo','Badass','Anirudh Ravichander',2023,4.4),
(2,'Kaththi','Selfie Pulla','Vijay, Sunidhi Chauhan',2014,4.1),
(2,'3','Why This Kolaveri Di','Dhanush',2012,4.6),
(2,'3','Kannazhaga','Dhanush, Shruti Haasan',2012,4.3),
(2,'Doctor','Chellamma','Anirudh Ravichander, Jonita Gandhi',2021,4.4),
(2,'Remo','Sirikkadhey','Anirudh Ravichander',2016,4.2),
(2,'Vedalam','Aaluma Doluma','Anirudh Ravichander, Badshah',2015,4.3),
(2,'Petta','Marana Mass','S. P. Balasubrahmanyam',2019,4.2),
(1,'Roja','Chinna Chinna Aasai','Minmini',1992,4.8),
(1,'Roja','Kadhal Rojave','S. P. Balasubrahmanyam, K. S. Chithra',1992,4.6),
(1,'Bombay','Kannalane','Hariharan, K. S. Chithra',1995,4.7),
(1,'Bombay','Uyire Uyire','Hariharan, K. S. Chithra',1995,4.7),
(1,'Alaipayuthey','Snehidhane','Sadhana Sargam, Srinivas',2000,4.5),
(1,'Mersal','Neethane','Sid Sriram, Shashaa Tirupati',2017,4.4),
(1,'Mersal','Aalaporan Thamizhan','Vijay, Kailash Kher',2017,4.2),
(1,'Vinnaithaandi Varuvaayaa','Hosanna','Vijay Prakash, Suzanne D''Mello, Blaaze',2010,4.6),
(1,'Vinnaithaandi Varuvaayaa','Omana Penne','Benny Dayal, Chinmayi Sripada',2010,4.3),
(1,'Enthiran','Arima Arima','Hariharan, Sadhana Sargam',2010,4.4),
(1,'Enthiran','Kilimanjaro','Javed Ali, Chinmayi Sripada',2010,4.3),
(1,'Sillunu Oru Kaadhal','Munbe Vaa','Shreya Ghoshal, Naresh Iyer',2006,4.8),
(1,'Muthu','Thillana Thillana','S. P. Balasubrahmanyam, Swarnalatha',1995,4.3),
(1,'Minsara Kanavu','Vennilave','Hariharan, Sadhana Sargam',1997,4.4),
(1,'Kadal','Nenjukkule','Shakthisree Gopalan',2013,4.5),
(1,'Achcham Yenbadhu Madamaiyada','Thalli Pogathey','Sid Sriram',2016,4.7),
(1,'Vendhu Thanindhathu Kaadu','Mallipoo','Madhushree',2022,4.5),
(1,'Sivaji','Sahana','Madhushree, Udit Narayan',2007,4.5),
(1,'Kaatru Veliyidai','Azhagiye','Arjun Chandy, Jonita Gandhi',2017,4.3),
(1,'Ponniyin Selvan 1','Ponni Nadhi','A. R. Rahman',2022,4.5),
(3,'Thalapathi','Rakkamma Kaiya Thattu','S. P. Balasubrahmanyam, Swarnalatha',1991,4.6),
(3,'Thalapathi','Sundari Kannal Oru Sethi','S. P. Balasubrahmanyam, S. Janaki',1991,4.7),
(3,'Moondram Pirai','Kannae Kalaimaane','K. J. Yesudas',1982,4.8),
(3,'Guna','Kanmani Anbodu Kaadhalan','Kamal Haasan, S. Janaki',1991,4.7),
(3,'Payanangal Mudivathillai','Ilaya Nila','S. P. Balasubrahmanyam',1982,4.6),
(3,'Johnny','Kaatril Enthan Geetham','S. Janaki',1980,4.5),
(4,'Minnale','Vaseegara','Bombay Jayashri',2001,4.7),
(4,'Vaaranam Aayiram','Nenjukkul Peidhidum','Hariharan',2008,4.8),
(4,'Thuppakki','Google Google','Vijay, Andrea Jeremiah',2012,4.2),
(4,'Ghajini','Oru Maalai','Karthik',2005,4.3),
(5,'Maari 2','Rowdy Baby','Dhanush, Dhee',2018,4.5),
(5,'Paiyaa','Thuli Thuli','Karthik',2010,4.2),
(5,'Paiyaa','Adada Mazhaida','Karthik, Saindhavi',2010,4.4),
(6,'Kabali','Neruppu Da','Arun Raja Kamaraj',2016,4.2),
(7,'Viswasam','Kannaana Kanne','Sid Sriram',2019,4.6),
(7,'Kumki','Sollitaley','Haricharan',2012,4.4);
 









