sequelize db:create &&
mysql -uroot -p -e 'ALTER DATABASE drivingSchool CHARACTER SET utf8 COLLATE utf8_bin' drivingSchool &&
sequelize db:migrate &&
mysql -uroot -p -e 'INSERT INTO `users` (`id`, `username`, `password`, `permissions`, `active`, `createdAt`, `updatedAt`, `clientId`) VALUES (NULL, "admin", "$2b$10$8jaK958ZD76lKW8b1gQEm.eaTM3feDajB9r2vUwcmn5HX.XXg0Teq", "admin", "1", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL)' drivingSchool &&
mysql -uroot -p -e 'SELECT * FROM `users`' drivingSchool&&
echo DATABASE Is SET Sir, Alaa 
echo username admin password admin



