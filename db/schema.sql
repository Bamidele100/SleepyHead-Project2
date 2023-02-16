
DROP DATABASE IF EXISTS sleepyhead_db;
CREATE DATABASE sleepyhead_db;

use sleepyhead_db;

CREATE TABLE userDetails (
user_id INT NOT NULL AUTO_INCREMENT  PRIMARY KEY,
UserName VARCHAR(100) NOT NULL,
UserPassword VARCHAR(255) NOT NULL,
EmailId VARCHAR(255) NOT NULL
);

CREATE TABLE Usersleepinfomation (
BedTime TIME NOT NULL,
wakeUpTime TIME NOT NULL,
user_id INT,
FOREIGN KEY (user_id) REFERENCES userDetails(user_id)
);

CREATE TABLE summarys (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
sleepHourTotal INT NOT NULL,
advice VARCHAR(255) NOT NULL

);