/* 

----MEMBERS----

LIWA WATSON - watsonliwa@yahoo.com
SHEKINAH NYAMBURA - nshekinah7@gmail.com
KENNEDY MWANIKI - kennedymwaniki089@gmail.com

*/

/* 

git branch -M main 
git remote add origin https://github.com/WatsonWaswa/BOOKSTORE_DATABASE_PLP---GROUP-SHEKEWA.git 

*/

CREATE DATABASE IF NOT EXISTS bookstore_db;
USE bookstore_db;

CREATE TABLE book(
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  publisher_id INT,
  language_id INT,
  price DECIMAL(10,2),
  FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
  FOREIGN KEY (language_id) REFERENCES book_language(language_id)
);
