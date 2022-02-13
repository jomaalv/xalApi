DROP DATABASE IF EXISTS xaldigit;
CREATE DATABASE xaldigit;
\c xaldigit;


CREATE TABLE person(
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	company_name VARCHAR(40),
	address VARCHAR(50),
	city VARCHAR(40),
	state VARCHAR(2) CHECK(state ~ '^[^0-9]*$'),
	zip INT,
	phone1 VARCHAR(40),
	phone2 VARCHAR(40),
	email VARCHAR(40),
	department VARCHAR(40)
);

INSERT INTO person VALUES('James', 'Butt', 'Benton, John B Jr', '6649 N Blue Gum St', 'New Orleans', 'LA', '70116', '504-621-8927', '504-845-1427', 'jbutt@gmail.com', 'Sales');
INSERT INTO person VALUES('James', 'Butt', 'Benton, John B Jr', '6649 N Blue Gum St', 'New Orleans', 'LA', '70116', '504-621-8927', '504-845-1427', 'jbutt@gmail.com', 'Marketing');
INSERT INTO person VALUES('Josephine', 'Darakjy', 'Chanay, Jeffrey A Esq', '4 B Blue Ridge Blvd', 'Brighton', 'MI', '48116', '810-292-9388', '810-374-9840', 'josephine_darakjy@darakjy.org', 'Human Resources');
INSERT INTO person VALUES('Art', 'Venere', 'Chemel, James L Cpa', '8 W Cerritos Ave #54', 'Bridgeport', 'NJ', '8014', '856-636-8749', '856-264-4130', 'art@venere.org', 'Purchasing');
INSERT INTO person VALUES('Lenna', 'Paprocki', 'Feltz Printing Service', '639 Main St', 'Anchorage', 'AK', '99501', '907-385-4412', '907-921-2010', 'lpaprocki@hotmail.com', 'Marketing');
INSERT INTO person VALUES('Donette', 'Foller', 'Printing Dimensions', '34 Center St', 'Hamilton', 'OH', '45011', '513-570-1893', '513-549-4561', 'donette.foller@cox.net', 'Production');
INSERT INTO person VALUES('Simona', 'Morasca', 'Chapman, Ross E Esq', '3 Mcauley Dr', 'Ashland', 'OH', '44805', '419-503-2484', '419-800-6759', 'simona@morasca.com', 'Research and Development');
INSERT INTO person VALUES('Mitsue', 'Tollner', 'Morlong Associates', '7 Eads St', 'Chicago', 'IL', '60632', '773-573-6914', '773-924-8565', 'mitsue_tollner@yahoo.com', 'Finances');
INSERT INTO person VALUES('Leota', 'Dilliard', 'Commercial Press', '7 W Jackson Blvd', 'San Jose', 'CA', '95111', '408-752-3500', '408-813-1105', 'leota@hotmail.com', 'Sales');
INSERT INTO person VALUES('Sage', 'Wieser', 'Truhlar And Truhlar Attys', '5 Boston Ave #88', 'Sioux Falls', 'SD', '57105', '605-414-2147', '605-794-4895', 'sage_wieser@cox.net', 'Human Resources');
INSERT INTO person VALUES('Kris', 'Marrier', 'King, Christopher A Esq', '228 Runamuck Pl #2808', 'Baltimore', 'MD', '21224', '410-655-8723', '410-804-4694', 'kris@gmail.com', 'Purchasing');
INSERT INTO person VALUES('Minna', 'Amigon', 'Dorl, James J Esq', '2371 Jerrold Ave', 'Kulpsville', 'PA', '19443', '215-874-1229', '215-422-8694', 'minna_amigon@yahoo.com', 'Marketing');
INSERT INTO person VALUES('Abel', 'Maclead', 'Rangoni Of Florence', '37275 St  Rt 17m M', 'Middle Island', 'NY', '11953', '631-335-3414', '631-677-3675', 'amaclead@gmail.com', 'Production');
INSERT INTO person VALUES('Kiley', 'Caldarera', 'Feiner Bros', '25 E 75th St #69', 'Los Angeles', 'CA', '90034', '310-498-5651', '310-254-3084', 'kiley.caldarera@aol.com', 'Research and Development');
INSERT INTO person VALUES('Graciela', 'Ruta', 'Buckley Miller & Wright', '98 Connecticut Ave Nw', 'Chagrin Falls', 'OH', '44023', '440-780-8425', '440-579-7763', 'gruta@cox.net', 'Finances');
INSERT INTO person VALUES('Cammy', 'Albares', 'Rousseaux, Michael Esq', '56 E Morehead St', 'Laredo', 'TX', '78045', '956-537-6195', '956-841-7216', 'calbares@gmail.com', 'Sales');
INSERT INTO person VALUES('Mattie', 'Poquette', 'Century Communications', '73 State Road 434 E', 'Phoenix', 'AZ', '85013', '602-277-4385', '602-953-6360', 'mattie@aol.com', 'Human Resources');
INSERT INTO person VALUES('Meaghan', 'Garufi', 'Bolton, Wilbur Esq', '69734 E Carrillo St', 'Mc Minnville', 'TN', '37110', '931-313-9635', '931-235-7959', 'meaghan@hotmail.com', 'Purchasing');
INSERT INTO person VALUES('Gladys', 'Rim', 'T M Byxbee Company Pc', '322 New Horizon Blvd', 'Milwaukee', 'WI', '53207', '414-661-9598', '414-377-2880', 'gladys.rim@rim.org', 'Marketing');
INSERT INTO person VALUES('Yuki', 'Whobrey', 'Farmers Insurance Group', '1 State Route 27', 'Taylor', 'MI', '48180', '313-288-7937', '313-341-4470', 'yuki_whobrey@aol.com', 'Production');
INSERT INTO person VALUES('Fletcher', 'Flosi', 'Post Box Services Plus', '394 Manchester Blvd', 'Rockford', 'IL', '61109', '815-828-2147', '815-426-5657', 'fletcher.flosi@yahoo.com', 'Research and Development');
INSERT INTO person VALUES('Bette', 'Nicka', 'Sport En Art', '6 S 33rd St', 'Aston', 'PA', '19014', '610-545-3615', '610-492-4643', 'bette_nicka@cox.net', 'Finances');
INSERT INTO person VALUES('Veronika', 'Inouye', 'C 4 Network Inc', '6 Greenleaf Ave', 'San Jose', 'CA', '95111', '408-540-1785', '408-813-4592', 'vinouye@aol.com', 'Sales');
INSERT INTO person VALUES('Veronika', 'Inouye', 'C 4 Network Inc', '6 Greenleaf Ave', 'San Jose', 'CA', '95111', '408-540-1785', '408-813-4592', 'vinouye@aol.com', 'Finances');
INSERT INTO person VALUES('Willard', 'Kolmetz', 'Ingalls, Donald R Esq', '618 W Yakima Ave', 'Irving', 'TX', '75062', '972-303-9197', '972-896-4882', 'willard@hotmail.com', 'Human Resources');
INSERT INTO person VALUES('Maryann', 'Royster', 'Franklin, Peter L Esq', '74 S Westgate St', 'Albany', 'NY', '12204', '518-966-7987', '518-448-8982', 'mroyster@royster.com', 'Purchasing');
INSERT INTO person VALUES('Alisha', 'Slusarski', 'Wtlz Power 107 Fm', '3273 State St', 'Middlesex', 'NJ', '8846', '732-658-3154', '732-635-3453', 'alisha@slusarski.com', 'Marketing');
INSERT INTO person VALUES('Allene', 'Iturbide', 'Ledecky, David Esq', '1 Central Ave', 'Stevens Point', 'WI', '54481', '715-662-6764', '715-530-9863', 'allene_iturbide@cox.net', 'Production');
INSERT INTO person VALUES('Chanel', 'Caudy', 'Professional Image Inc', '86 Nw 66th St #8673', 'Shawnee', 'KS', '66218', '913-388-2079', '913-899-1103', 'chanel.caudy@caudy.org', 'Research and Development');
INSERT INTO person VALUES('Ezekiel', 'Chui', 'Sider, Donald C Esq', '2 Cedar Ave #84', 'Easton', 'MD', '21601', '410-669-1642', '410-235-8738', 'ezekiel@chui.com', 'Finances');
INSERT INTO person VALUES('Willow', 'Kusko', 'U Pull It', '90991 Thorburn Ave', 'New York', 'NY', '10011', '212-582-4976', '212-934-5167', 'wkusko@yahoo.com', 'Human Resources');
INSERT INTO person VALUES('Bernardo', 'Figeroa', 'Clark, Richard Cpa', '386 9th Ave N', 'Conroe', 'TX', '77301', '936-336-3951', '936-597-3614', 'bfigeroa@aol.com', 'Finances');
INSERT INTO person VALUES('Bernardo', 'Figeroa', 'Clark, Richard Cpa', '386 9th Ave N', 'Conroe', 'TX', '77301', '936-336-3951', '936-597-3614', 'bfigeroa@aol.com', 'Purchasing');
INSERT INTO person VALUES('Ammie', 'Corrio', 'Moskowitz, Barry S', '74874 Atlantic Ave', 'Columbus', 'OH', '43215', '614-801-9788', '614-648-3265', 'ammie@corrio.com', 'Marketing');
INSERT INTO person VALUES('Francine', 'Vocelka', 'Cascade Realty Advisors Inc', '366 South Dr', 'Las Cruces', 'NM', '88011', '505-977-3911', '505-335-5293', 'francine_vocelka@vocelka.com', 'Human Resources');
INSERT INTO person VALUES('Ernie', 'Stenseth', 'Knwz Newsradio', '45 E Liberty St', 'Ridgefield Park', 'NJ', '7660', '201-709-6245', '201-387-9093', 'ernie_stenseth@aol.com', 'Purchasing');
INSERT INTO person VALUES('Albina', 'Glick', 'Giampetro, Anthony D', '4 Ralph Ct', 'Dunellen', 'NJ', '8812', '732-924-7882', '732-782-6701', 'albina@glick.com', 'Marketing');
INSERT INTO person VALUES('Alishia', 'Sergi', 'Milford Enterprises Inc', '2742 Distribution Way', 'New York', 'NY', '10025', '212-860-1579', '212-753-2740', 'asergi@gmail.com', 'Human Resources');
INSERT INTO person VALUES('Solange', 'Shinko', 'Mosocco, Ronald A', '426 Wolf St', 'Metairie', 'LA', '70002', '504-979-9175', '504-265-8174', 'solange@shinko.com', 'Purchasing');
INSERT INTO person VALUES('Jose', 'Stockham', 'Tri State Refueler Co', '128 Bransten Rd', 'New York', 'NY', '10011', '212-675-8570', '212-569-4233', 'jose@yahoo.com', 'Marketing');
INSERT INTO person VALUES('Rozella', 'Ostrosky', 'Parkway Company', '17 Morena Blvd', 'Camarillo', 'CA', '93012', '805-832-6163', '805-609-1531', 'rozella.ostrosky@ostrosky.com', 'Sales');
INSERT INTO person VALUES('Valentine', 'Gillian', 'Fbs Business Finance', '775 W 17th St', 'San Antonio', 'TX', '78204', '210-812-9597', '210-300-6244', 'valentine_gillian@gmail.com', 'Purchasing');
INSERT INTO person VALUES('Valentine', 'Gillian', 'Fbs Business Finance', '775 W 17th St', 'San Antonio', 'TX', '78204', '210-812-9597', '210-300-6244', 'valentine_gillian@gmail.com', 'Sales');
INSERT INTO person VALUES('Kati', 'Rulapaugh', 'Eder Assocs Consltng Engrs Pc', '6980 Dorsett Rd', 'Abilene', 'KS', '67410', '785-463-7829', '785-219-7724', 'kati.rulapaugh@hotmail.com', 'Sales');
INSERT INTO person VALUES('Youlanda', 'Schemmer', 'Tri M Tool Inc', '2881 Lewis Rd', 'Prineville', 'OR', '97754', '541-548-8197', '541-993-2611', 'youlanda@aol.com', 'Sales');
INSERT INTO person VALUES('Dyan', 'Oldroyd', 'International Eyelets Inc', '7219 Woodfield Rd', 'Overland Park', 'KS', '66204', '913-413-4604', '913-645-8918', 'doldroyd@aol.com', 'Sales');
INSERT INTO person VALUES('Roxane', 'Campain', 'Rapid Trading Intl', '1048 Main St', 'Fairbanks', 'AK', '99708', '907-231-4722', '907-335-6568', 'roxane@hotmail.com', 'Sales');
INSERT INTO person VALUES('Lavera', 'Perin', 'Abc Enterprises Inc', '678 3rd Ave', 'Miami', 'FL', '33196', '305-606-7291', '305-995-2078', 'lperin@perin.org', 'Sales');
INSERT INTO person VALUES('Erick', 'Ferencz', 'Cindy Turner Associates', '20 S Babcock St', 'Fairbanks', 'AK', '99712', '907-741-1044', '907-227-6777', 'erick.ferencz@aol.com', 'Sales');
INSERT INTO person VALUES('Fatima', 'Saylors', 'Stanton, James D Esq', '2 Lighthouse Ave', 'Hopkins', 'MN', '55343', '952-768-2416', '952-479-2375', 'fsaylors@saylors.org', 'Sales');
INSERT INTO person VALUES('Jina', 'Briddick', 'Grace Pastries Inc', '38938 Park Blvd', 'Boston', 'MA', '2128', '617-399-5124', '617-997-5771', 'jina_briddick@briddick.com', 'Sales');
INSERT INTO person VALUES('Kanisha', 'Waycott', 'Schroer, Gene E Esq', '5 Tomahawk Dr', 'Los Angeles', 'CA', '90006', '323-453-2780', '323-315-7314', 'kanisha_waycott@yahoo.com', 'Purchasing');
INSERT INTO person VALUES('Emerson', 'Bowley', 'Knights Inn', '762 S Main St', 'Madison', 'WI', '53711', '608-336-7444', '608-658-7940', 'emerson.bowley@bowley.org', 'Sales');
INSERT INTO person VALUES('Emerson', 'Bowley', 'Knights Inn', '762 S Main St', 'Madison', 'WI', '53711', '608-336-7444', '608-658-7940', 'emerson.bowley@bowley.org', 'Purchasing');
INSERT INTO person VALUES('Blair', 'Malet', 'Bollinger Mach Shp & Shipyard', '209 Decker Dr', 'Philadelphia', 'PA', '19132', '215-907-9111', '215-794-4519', 'bmalet@yahoo.com', 'Purchasing');
INSERT INTO person VALUES('Brock', 'Bolognia', 'Orinda News', '4486 W O St #1', 'New York', 'NY', '10003', '212-402-9216', '212-617-5063', 'bbolognia@yahoo.com', 'Purchasing');
INSERT INTO person VALUES('Lorrie', 'Nestle', 'Ballard Spahr Andrews', '39 S 7th St', 'Tullahoma', 'TN', '37388', '931-875-6644', '931-303-6041', 'lnestle@hotmail.com', 'Purchasing');
INSERT INTO person VALUES('Sabra', 'Uyetake', 'Lowy Limousine Service', '98839 Hawthorne Blvd #6101', 'Columbia', 'SC', '29201', '803-925-5213', '803-681-3678', 'sabra@uyetake.org', 'Purchasing');
INSERT INTO person VALUES('Marjory', 'Mastella', 'Vicon Corporation', '71 San Mateo Ave', 'Wayne', 'PA', '19087', '610-814-5533', '610-379-7125', 'mmastella@mastella.com', 'Purchasing');
INSERT INTO person VALUES('Karl', 'Klonowski', 'Rossi, Michael M', '76 Brooks St #9', 'Flemington', 'NJ', '8822', '908-877-6135', '908-470-4661', 'karl_klonowski@yahoo.com', 'Production');
INSERT INTO person VALUES('Tonette', 'Wenner', 'Northwest Publishing', '4545 Courthouse Rd', 'Westbury', 'NY', '11590', '516-968-6051', '516-333-4861', 'twenner@aol.com', 'Production');
INSERT INTO person VALUES('Amber', 'Monarrez', 'Branford Wire & Mfg Co', '14288 Foster Ave #4121', 'Jenkintown', 'PA', '19046', '215-934-8655', '215-329-6386', 'amber_monarrez@monarrez.org', 'Production');
INSERT INTO person VALUES('Shenika', 'Seewald', 'East Coast Marketing', '4 Otis St', 'Van Nuys', 'CA', '91405', '818-423-4007', '818-749-8650', 'shenika@gmail.com', 'Production');
INSERT INTO person VALUES('Delmy', 'Ahle', 'Wye Technologies Inc', '65895 S 16th St', 'Providence', 'RI', '2909', '401-458-2547', '401-559-8961', 'delmy.ahle@hotmail.com', 'Production');
INSERT INTO person VALUES('Deeanna', 'Juhas', 'Healy, George W Iv', '14302 Pennsylvania Ave', 'Huntingdon Valley', 'PA', '19006', '215-211-9589', '215-417-9563', 'deeanna_juhas@gmail.com', 'Sales');
INSERT INTO person VALUES('Blondell', 'Pugh', 'Alpenlite Inc', '201 Hawk Ct', 'Providence', 'RI', '2904', '401-960-8259', '401-300-8122', 'bpugh@aol.com', 'Purchasing');
INSERT INTO person VALUES('Blondell', 'Pugh', 'Alpenlite Inc', '201 Hawk Ct', 'Providence', 'RI', '2904', '401-960-8259', '401-300-8122', 'bpugh@aol.com', 'Human Resources');
INSERT INTO person VALUES('Jamal', 'Vanausdal', 'Hubbard, Bruce Esq', '53075 Sw 152nd Ter #615', 'Monroe Township', 'NJ', '8831', '732-234-1546', '732-904-2931', 'jamal@vanausdal.org', 'Purchasing');
INSERT INTO person VALUES('Cecily', 'Hollack', 'Arthur A Oliver & Son Inc', '59 N Groesbeck Hwy', 'Austin', 'TX', '78731', '512-486-3817', '512-861-3814', 'cecily@hollack.org', 'Marketing');
INSERT INTO person VALUES('Carmelina', 'Lindall', 'George Jessop Carter Jewelers', '2664 Lewis Rd', 'Littleton', 'CO', '80126', '303-724-7371', '303-874-5160', 'carmelina_lindall@lindall.com', 'Production');
INSERT INTO person VALUES('Maurine', 'Yglesias', 'Schultz, Thomas C Md', '59 Shady Ln #53', 'Milwaukee', 'WI', '53214', '414-748-1374', '414-573-7719', 'maurine_yglesias@yglesias.com', 'Research and Development');
INSERT INTO person VALUES('Tawna', 'Buvens', 'H H H Enterprises Inc', '3305 Nabell Ave #679', 'New York', 'NY', '10009', '212-674-9610', '212-462-9157', 'tawna@gmail.com', 'Finances');
INSERT INTO person VALUES('Penney', 'Weight', 'Hawaiian King Hotel', '18 Fountain St', 'Anchorage', 'AK', '99515', '907-797-9628', '907-873-2882', 'penney_weight@aol.com', 'Sales');
INSERT INTO person VALUES('Elly', 'Morocco', 'Killion Industries', '7 W 32nd St', 'Erie', 'PA', '16502', '814-393-5571', '814-420-3553', 'elly_morocco@gmail.com', 'Human Resources');
INSERT INTO person VALUES('Ilene', 'Eroman', 'Robinson, William J Esq', '2853 S Central Expy', 'Glen Burnie', 'MD', '21061', '410-914-9018', '410-937-4543', 'ilene.eroman@hotmail.com', 'Purchasing');
INSERT INTO person VALUES('Vallie', 'Mondella', 'Private Properties', '74 W College St', 'Boise', 'ID', '83707', '208-862-5339', '208-737-8439', 'vmondella@mondella.com', 'Marketing');
INSERT INTO person VALUES('Kallie', 'Blackwood', 'Rowley Schlimgen Inc', '701 S Harrison Rd', 'San Francisco', 'CA', '94104', '415-315-2761', '415-604-7609', 'kallie.blackwood@gmail.com', 'Production');
INSERT INTO person VALUES('Johnetta', 'Abdallah', 'Forging Specialties', '1088 Pinehurst St', 'Chapel Hill', 'NC', '27514', '919-225-9345', '919-715-3791', 'johnetta_abdallah@aol.com', 'Research and Development');
INSERT INTO person VALUES('Bobbye', 'Rhym', 'Smits, Patricia Garity', '30 W 80th St #1995', 'San Carlos', 'CA', '94070', '650-528-5783', '650-811-9032', 'brhym@rhym.com', 'Finances');
INSERT INTO person VALUES('Micaela', 'Rhymes', 'H Lee Leonard Attorney At Law', '20932 Hedley St', 'Concord', 'CA', '94520', '925-647-3298', '925-522-7798', 'micaela_rhymes@gmail.com', 'Finances');
INSERT INTO person VALUES('Tamar', 'Hoogland', 'A K Construction Co', '2737 Pistorio Rd #9230', 'London', 'OH', '43140', '740-343-8575', '740-526-5410', 'tamar@hotmail.com', 'Finances');
INSERT INTO person VALUES('Moon', 'Parlato', 'Ambelang, Jessica M Md', '74989 Brandon St', 'Wellsville', 'NY', '14895', '585-866-8313', '585-498-4278', 'moon@yahoo.com', 'Finances');
INSERT INTO person VALUES('Laurel', 'Reitler', 'Q A Service', '6 Kains Ave', 'Baltimore', 'MD', '21215', '410-520-4832', '410-957-6903', 'laurel_reitler@reitler.com', 'Finances');
INSERT INTO person VALUES('Delisa', 'Crupi', 'Wood & Whitacre Contractors', '47565 W Grand Ave', 'Newark', 'NJ', '7105', '973-354-2040', '973-847-9611', 'delisa.crupi@crupi.com', 'Finances');
INSERT INTO person VALUES('Viva', 'Toelkes', 'Mark Iv Press Ltd', '4284 Dorigo Ln', 'Chicago', 'IL', '60647', '773-446-5569', '773-352-3437', 'viva.toelkes@gmail.com', 'Finances');
INSERT INTO person VALUES('Elza', 'Lipke', 'Museum Of Science & Industry', '6794 Lake Dr E', 'Newark', 'NJ', '7104', '973-927-3447', '973-796-3667', 'elza@yahoo.com', 'Human Resources');
INSERT INTO person VALUES('Devorah', 'Chickering', 'Garrison Ind', '31 Douglas Blvd #950', 'Clovis', 'NM', '88101', '505-975-8559', '505-950-1763', 'devorah@hotmail.com', 'Human Resources');
INSERT INTO person VALUES('Timothy', 'Mulqueen', 'Saronix Nymph Products', '44 W 4th St', 'Staten Island', 'NY', '10309', '718-332-6527', '718-654-7063', 'timothy_mulqueen@mulqueen.org', 'Human Resources');
INSERT INTO person VALUES('Arlette', 'Honeywell', 'Smc Inc', '11279 Loytan St', 'Jacksonville', 'FL', '32254', '904-775-4480', '904-514-9918', 'ahoneywell@honeywell.com', 'Human Resources');
INSERT INTO person VALUES('Dominque', 'Dickerson', 'E A I Electronic Assocs Inc', '69 Marquette Ave', 'Hayward', 'CA', '94545', '510-993-3758', '510-901-7640', 'dominque.dickerson@dickerson.org', 'Human Resources');
INSERT INTO person VALUES('Lettie', 'Isenhower', 'Conte, Christopher A Esq', '70 W Main St', 'Beachwood', 'OH', '44122', '216-657-7668', '216-733-8494', 'lettie_isenhower@yahoo.com', 'Human Resources');
INSERT INTO person VALUES('Myra', 'Munns', 'Anker Law Office', '461 Prospect Pl #316', 'Euless', 'TX', '76040', '817-914-7518', '817-451-3518', 'mmunns@cox.net', 'Human Resources');
INSERT INTO person VALUES('Stephaine', 'Barfield', 'Beutelschies & Company', '47154 Whipple Ave Nw', 'Gardena', 'CA', '90247', '310-774-7643', '310-968-1219', 'stephaine@barfield.com', 'Human Resources');
INSERT INTO person VALUES('Lai', 'Gato', 'Fligg, Kenneth I Jr', '37 Alabama Ave', 'Evanston', 'IL', '60201', '847-728-7286', '847-957-4614', 'lai.gato@gato.org', 'Marketing');
INSERT INTO person VALUES('Stephen', 'Emigh', 'Sharp, J Daniel Esq', '3777 E Richmond St #900', 'Akron', 'OH', '44302', '330-537-5358', '330-700-2312', 'stephen_emigh@hotmail.com', 'Marketing');
INSERT INTO person VALUES('Tyra', 'Shields', 'Assink, Anne H Esq', '3 Fort Worth Ave', 'Philadelphia', 'PA', '19106', '215-255-1641', '215-228-8264', 'tshields@gmail.com', 'Marketing');
INSERT INTO person VALUES('Tammara', 'Wardrip', 'Jewel My Shop Inc', '4800 Black Horse Pike', 'Burlingame', 'CA', '94010', '650-803-1936', '650-216-5075', 'twardrip@cox.net', 'Marketing');
INSERT INTO person VALUES('Cory', 'Gibes', 'Chinese Translation Resources', '83649 W Belmont Ave', 'San Gabriel', 'CA', '91776', '626-572-1096', '626-696-2777', 'cory.gibes@gmail.com', 'Marketing');
INSERT INTO person VALUES('Danica', 'Bruschke', 'Stevens, Charles T', '840 15th Ave', 'Waco', 'TX', '76708', '254-782-8569', '254-205-1422', 'danica_bruschke@gmail.com', 'Marketing');
INSERT INTO person VALUES('Wilda', 'Giguere', 'Mclaughlin, Luther W Cpa', '1747 Calle Amanecer #2', 'Anchorage', 'AK', '99501', '907-870-5536', '907-914-9482', 'wilda@cox.net', 'Marketing');
INSERT INTO person VALUES('Elvera', 'Benimadho', 'Tree Musketeers', '99385 Charity St #840', 'San Jose', 'CA', '95110', '408-703-8505', '408-440-8447', 'elvera.benimadho@cox.net', 'Marketing');
INSERT INTO person VALUES('Carma', 'Vanheusen', 'Springfield Div Oh Edison Co', '68556 Central Hwy', 'San Leandro', 'CA', '94577', '510-503-7169', '510-452-4835', 'carma@cox.net', 'Marketing');
INSERT INTO person VALUES('Malinda', 'Hochard', 'Logan Memorial Hospital', '55 Riverside Ave', 'Indianapolis', 'IN', '46202', '317-722-5066', '317-472-2412', 'malinda.hochard@yahoo.com', 'Marketing');
INSERT INTO person VALUES('Natalie', 'Fern', 'Kelly, Charles G Esq', '7140 University Ave', 'Rock Springs', 'WY', '82901', '307-704-8713', '307-279-3793', 'natalie.fern@hotmail.com', 'Marketing');
INSERT INTO person VALUES('Lisha', 'Centini', 'Industrial Paper Shredders Inc', '64 5th Ave #1153', 'Mc Lean', 'VA', '22102', '703-235-3937', '703-475-7568', 'lisha@centini.org', 'Marketing');
INSERT INTO person VALUES('Arlene', 'Klusman', 'Beck Horizon Builders', '3 Secor Rd', 'New Orleans', 'LA', '70112', '504-710-5840', '504-946-1807', 'arlene_klusman@gmail.com', 'Marketing');
