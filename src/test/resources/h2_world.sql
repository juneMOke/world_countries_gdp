--
-- World database dump from PostgreSQL, cleaned up for H2.
--

--
-- Create tables.
--

CREATE TABLE city
(
    id          integer      NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name        text         NOT NULL,
    countrycode character(3) NOT NULL,
    district    text         NOT NULL,
    population  integer      NOT NULL
);

CREATE TABLE country
(
    code           character(3) NOT NULL PRIMARY KEY,
    name           text         NOT NULL,
    continent      text         NOT NULL,
    region         text         NOT NULL,
    surfacearea    real         NOT NULL,
    indepyear      smallint,
    population     integer      NOT NULL,
    lifeexpectancy real,
    gnp            numeric(10, 2),
    gnpold         numeric(10, 2),
    localname      text         NOT NULL,
    governmentform text         NOT NULL,
    headofstate    text,
    capital        integer,
    code2          character(2) NOT NULL,
    CONSTRAINT country_continent_check CHECK ((
            ((((((continent = 'Asia'::text) OR (continent = 'Europe'::text)) OR (continent = 'North America'::text)) OR
               (continent = 'Africa'::text)) OR (continent = 'Oceania'::text)) OR (continent = 'Antarctica'::text)) OR
            (continent = 'South America'::text)))
);

CREATE TABLE countrylanguage
(
    countrycode character(3) NOT NULL,
    language    varchar(255) NOT NULL,
    isofficial  boolean      NOT NULL,
    percentage  real         NOT NULL,
    PRIMARY KEY (countrycode, language)
);

--
-- Insert cities.
--

INSERT INTO city (id, name, countrycode, district, population)
VALUES (1, 'Kabul', 'AFG', 'Kabol', 1780000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2, 'Qandahar', 'AFG', 'Qandahar', 237500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3, 'Herat', 'AFG', 'Herat', 186800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4, 'Mazar-e-Sharif', 'AFG', 'Balkh', 127800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (5, 'Amsterdam', 'NLD', 'Noord-Holland', 731200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (6, 'Rotterdam', 'NLD', 'Zuid-Holland', 593321);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (7, 'Haag', 'NLD', 'Zuid-Holland', 440900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (8, 'Utrecht', 'NLD', 'Utrecht', 234323);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (9, 'Eindhoven', 'NLD', 'Noord-Brabant', 201843);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (10, 'Tilburg', 'NLD', 'Noord-Brabant', 193238);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (11, 'Groningen', 'NLD', 'Groningen', 172701);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (12, 'Breda', 'NLD', 'Noord-Brabant', 160398);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (13, 'Apeldoorn', 'NLD', 'Gelderland', 153491);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (14, 'Nijmegen', 'NLD', 'Gelderland', 152463);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (15, 'Enschede', 'NLD', 'Overijssel', 149544);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (16, 'Haarlem', 'NLD', 'Noord-Holland', 148772);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (17, 'Almere', 'NLD', 'Flevoland', 142465);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (18, 'Arnhem', 'NLD', 'Gelderland', 138020);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (19, 'Zaanstad', 'NLD', 'Noord-Holland', 135621);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (20, 'Â´s-Hertogenbosch', 'NLD', 'Noord-Brabant', 129170);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (21, 'Amersfoort', 'NLD', 'Utrecht', 126270);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (22, 'Maastricht', 'NLD', 'Limburg', 122087);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (23, 'Dordrecht', 'NLD', 'Zuid-Holland', 119811);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (24, 'Leiden', 'NLD', 'Zuid-Holland', 117196);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (25, 'Haarlemmermeer', 'NLD', 'Noord-Holland', 110722);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (26, 'Zoetermeer', 'NLD', 'Zuid-Holland', 110214);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (27, 'Emmen', 'NLD', 'Drenthe', 105853);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (28, 'Zwolle', 'NLD', 'Overijssel', 105819);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (29, 'Ede', 'NLD', 'Gelderland', 101574);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (30, 'Delft', 'NLD', 'Zuid-Holland', 95268);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (31, 'Heerlen', 'NLD', 'Limburg', 95052);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (32, 'Alkmaar', 'NLD', 'Noord-Holland', 92713);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (33, 'Willemstad', 'ANT', 'CuraÃ§ao', 2345);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (34, 'Tirana', 'ALB', 'Tirana', 270000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (35, 'Alger', 'DZA', 'Alger', 2168000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (36, 'Oran', 'DZA', 'Oran', 609823);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (37, 'Constantine', 'DZA', 'Constantine', 443727);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (38, 'Annaba', 'DZA', 'Annaba', 222518);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (39, 'Batna', 'DZA', 'Batna', 183377);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (40, 'SÃ©tif', 'DZA', 'SÃ©tif', 179055);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (41, 'Sidi Bel AbbÃ¨s', 'DZA', 'Sidi Bel AbbÃ¨s', 153106);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (42, 'Skikda', 'DZA', 'Skikda', 128747);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (43, 'Biskra', 'DZA', 'Biskra', 128281);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (44, 'Blida (el-Boulaida)', 'DZA', 'Blida', 127284);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (45, 'BÃ©jaÃ¯a', 'DZA', 'BÃ©jaÃ¯a', 117162);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (46, 'Mostaganem', 'DZA', 'Mostaganem', 115212);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (47, 'TÃ©bessa', 'DZA', 'TÃ©bessa', 112007);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (48, 'Tlemcen (Tilimsen)', 'DZA', 'Tlemcen', 110242);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (49, 'BÃ©char', 'DZA', 'BÃ©char', 107311);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (50, 'Tiaret', 'DZA', 'Tiaret', 100118);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (51, 'Ech-Chleff (el-Asnam)', 'DZA', 'Chlef', 96794);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (52, 'GhardaÃ¯a', 'DZA', 'GhardaÃ¯a', 89415);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (53, 'Tafuna', 'ASM', 'Tutuila', 5200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (54, 'Fagatogo', 'ASM', 'Tutuila', 2323);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (55, 'Andorra la Vella', 'AND', 'Andorra la Vella', 21189);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (56, 'Luanda', 'AGO', 'Luanda', 2022000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (57, 'Huambo', 'AGO', 'Huambo', 163100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (58, 'Lobito', 'AGO', 'Benguela', 130000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (59, 'Benguela', 'AGO', 'Benguela', 128300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (60, 'Namibe', 'AGO', 'Namibe', 118200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (61, 'South Hill', 'AIA', 'Â–', 961);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (62, 'The Valley', 'AIA', 'Â–', 595);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (63, 'Saint JohnÂ´s', 'ATG', 'St John', 24000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (64, 'Dubai', 'ARE', 'Dubai', 669181);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (65, 'Abu Dhabi', 'ARE', 'Abu Dhabi', 398695);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (66, 'Sharja', 'ARE', 'Sharja', 320095);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (67, 'al-Ayn', 'ARE', 'Abu Dhabi', 225970);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (68, 'Ajman', 'ARE', 'Ajman', 114395);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (69, 'Buenos Aires', 'ARG', 'Distrito Federal', 2982146);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (70, 'La Matanza', 'ARG', 'Buenos Aires', 1266461);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (71, 'CÃ³rdoba', 'ARG', 'CÃ³rdoba', 1157507);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (72, 'Rosario', 'ARG', 'Santa FÃ©', 907718);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (73, 'Lomas de Zamora', 'ARG', 'Buenos Aires', 622013);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (74, 'Quilmes', 'ARG', 'Buenos Aires', 559249);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (75, 'Almirante Brown', 'ARG', 'Buenos Aires', 538918);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (76, 'La Plata', 'ARG', 'Buenos Aires', 521936);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (77, 'Mar del Plata', 'ARG', 'Buenos Aires', 512880);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (78, 'San Miguel de TucumÃ¡n', 'ARG', 'TucumÃ¡n', 470809);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (79, 'LanÃºs', 'ARG', 'Buenos Aires', 469735);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (80, 'Merlo', 'ARG', 'Buenos Aires', 463846);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (81, 'General San MartÃ­n', 'ARG', 'Buenos Aires', 422542);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (82, 'Salta', 'ARG', 'Salta', 367550);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (83, 'Moreno', 'ARG', 'Buenos Aires', 356993);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (84, 'Santa FÃ©', 'ARG', 'Santa FÃ©', 353063);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (85, 'Avellaneda', 'ARG', 'Buenos Aires', 353046);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (86, 'Tres de Febrero', 'ARG', 'Buenos Aires', 352311);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (87, 'MorÃ³n', 'ARG', 'Buenos Aires', 349246);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (88, 'Florencio Varela', 'ARG', 'Buenos Aires', 315432);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (89, 'San Isidro', 'ARG', 'Buenos Aires', 306341);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (90, 'Tigre', 'ARG', 'Buenos Aires', 296226);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (91, 'Malvinas Argentinas', 'ARG', 'Buenos Aires', 290335);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (92, 'Vicente LÃ³pez', 'ARG', 'Buenos Aires', 288341);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (93, 'Berazategui', 'ARG', 'Buenos Aires', 276916);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (94, 'Corrientes', 'ARG', 'Corrientes', 258103);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (95, 'San Miguel', 'ARG', 'Buenos Aires', 248700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (96, 'BahÃ­a Blanca', 'ARG', 'Buenos Aires', 239810);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (97, 'Esteban EcheverrÃ­a', 'ARG', 'Buenos Aires', 235760);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (98, 'Resistencia', 'ARG', 'Chaco', 229212);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (99, 'JosÃ© C. Paz', 'ARG', 'Buenos Aires', 221754);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (100, 'ParanÃ¡', 'ARG', 'Entre Rios', 207041);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (101, 'Godoy Cruz', 'ARG', 'Mendoza', 206998);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (102, 'Posadas', 'ARG', 'Misiones', 201273);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (103, 'GuaymallÃ©n', 'ARG', 'Mendoza', 200595);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (104, 'Santiago del Estero', 'ARG', 'Santiago del Estero', 189947);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (105, 'San Salvador de Jujuy', 'ARG', 'Jujuy', 178748);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (106, 'Hurlingham', 'ARG', 'Buenos Aires', 170028);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (107, 'NeuquÃ©n', 'ARG', 'NeuquÃ©n', 167296);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (108, 'ItuzaingÃ³', 'ARG', 'Buenos Aires', 158197);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (109, 'San Fernando', 'ARG', 'Buenos Aires', 153036);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (110, 'Formosa', 'ARG', 'Formosa', 147636);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (111, 'Las Heras', 'ARG', 'Mendoza', 145823);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (112, 'La Rioja', 'ARG', 'La Rioja', 138117);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (113, 'San Fernando del Valle de Cata', 'ARG', 'Catamarca', 134935);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (114, 'RÃ­o Cuarto', 'ARG', 'CÃ³rdoba', 134355);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (115, 'Comodoro Rivadavia', 'ARG', 'Chubut', 124104);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (116, 'Mendoza', 'ARG', 'Mendoza', 123027);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (117, 'San NicolÃ¡s de los Arroyos', 'ARG', 'Buenos Aires', 119302);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (118, 'San Juan', 'ARG', 'San Juan', 119152);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (119, 'Escobar', 'ARG', 'Buenos Aires', 116675);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (120, 'Concordia', 'ARG', 'Entre Rios', 116485);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (121, 'Pilar', 'ARG', 'Buenos Aires', 113428);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (122, 'San Luis', 'ARG', 'San Luis', 110136);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (123, 'Ezeiza', 'ARG', 'Buenos Aires', 99578);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (124, 'San Rafael', 'ARG', 'Mendoza', 94651);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (125, 'Tandil', 'ARG', 'Buenos Aires', 91101);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (126, 'Yerevan', 'ARM', 'Yerevan', 1248700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (127, 'Gjumri', 'ARM', 'ÂŠirak', 211700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (128, 'Vanadzor', 'ARM', 'Lori', 172700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (129, 'Oranjestad', 'ABW', 'Â–', 29034);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (130, 'Sydney', 'AUS', 'New South Wales', 3276207);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (131, 'Melbourne', 'AUS', 'Victoria', 2865329);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (132, 'Brisbane', 'AUS', 'Queensland', 1291117);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (133, 'Perth', 'AUS', 'West Australia', 1096829);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (134, 'Adelaide', 'AUS', 'South Australia', 978100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (135, 'Canberra', 'AUS', 'Capital Region', 322723);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (136, 'Gold Coast', 'AUS', 'Queensland', 311932);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (137, 'Newcastle', 'AUS', 'New South Wales', 270324);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (138, 'Central Coast', 'AUS', 'New South Wales', 227657);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (139, 'Wollongong', 'AUS', 'New South Wales', 219761);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (140, 'Hobart', 'AUS', 'Tasmania', 126118);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (141, 'Geelong', 'AUS', 'Victoria', 125382);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (142, 'Townsville', 'AUS', 'Queensland', 109914);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (143, 'Cairns', 'AUS', 'Queensland', 92273);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (144, 'Baku', 'AZE', 'Baki', 1787800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (145, 'GÃ¤ncÃ¤', 'AZE', 'GÃ¤ncÃ¤', 299300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (146, 'Sumqayit', 'AZE', 'Sumqayit', 283000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (147, 'MingÃ¤Ã§evir', 'AZE', 'MingÃ¤Ã§evir', 93900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (148, 'Nassau', 'BHS', 'New Providence', 172000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (149, 'al-Manama', 'BHR', 'al-Manama', 148000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (150, 'Dhaka', 'BGD', 'Dhaka', 3612850);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (151, 'Chittagong', 'BGD', 'Chittagong', 1392860);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (152, 'Khulna', 'BGD', 'Khulna', 663340);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (153, 'Rajshahi', 'BGD', 'Rajshahi', 294056);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (154, 'Narayanganj', 'BGD', 'Dhaka', 202134);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (155, 'Rangpur', 'BGD', 'Rajshahi', 191398);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (156, 'Mymensingh', 'BGD', 'Dhaka', 188713);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (157, 'Barisal', 'BGD', 'Barisal', 170232);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (158, 'Tungi', 'BGD', 'Dhaka', 168702);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (159, 'Jessore', 'BGD', 'Khulna', 139710);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (160, 'Comilla', 'BGD', 'Chittagong', 135313);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (161, 'Nawabganj', 'BGD', 'Rajshahi', 130577);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (162, 'Dinajpur', 'BGD', 'Rajshahi', 127815);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (163, 'Bogra', 'BGD', 'Rajshahi', 120170);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (164, 'Sylhet', 'BGD', 'Sylhet', 117396);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (165, 'Brahmanbaria', 'BGD', 'Chittagong', 109032);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (166, 'Tangail', 'BGD', 'Dhaka', 106004);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (167, 'Jamalpur', 'BGD', 'Dhaka', 103556);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (168, 'Pabna', 'BGD', 'Rajshahi', 103277);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (169, 'Naogaon', 'BGD', 'Rajshahi', 101266);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (170, 'Sirajganj', 'BGD', 'Rajshahi', 99669);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (171, 'Narsinghdi', 'BGD', 'Dhaka', 98342);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (172, 'Saidpur', 'BGD', 'Rajshahi', 96777);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (173, 'Gazipur', 'BGD', 'Dhaka', 96717);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (174, 'Bridgetown', 'BRB', 'St Michael', 6070);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (175, 'Antwerpen', 'BEL', 'Antwerpen', 446525);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (176, 'Gent', 'BEL', 'East Flanderi', 224180);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (177, 'Charleroi', 'BEL', 'Hainaut', 200827);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (178, 'LiÃ¨ge', 'BEL', 'LiÃ¨ge', 185639);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (179, 'Bruxelles [Brussel]', 'BEL', 'Bryssel', 133859);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (180, 'Brugge', 'BEL', 'West Flanderi', 116246);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (181, 'Schaerbeek', 'BEL', 'Bryssel', 105692);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (182, 'Namur', 'BEL', 'Namur', 105419);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (183, 'Mons', 'BEL', 'Hainaut', 90935);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (184, 'Belize City', 'BLZ', 'Belize City', 55810);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (185, 'Belmopan', 'BLZ', 'Cayo', 7105);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (186, 'Cotonou', 'BEN', 'Atlantique', 536827);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (187, 'Porto-Novo', 'BEN', 'OuÃ©mÃ©', 194000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (188, 'Djougou', 'BEN', 'Atacora', 134099);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (189, 'Parakou', 'BEN', 'Borgou', 103577);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (190, 'Saint George', 'BMU', 'Saint GeorgeÂ´s', 1800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (191, 'Hamilton', 'BMU', 'Hamilton', 1200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (192, 'Thimphu', 'BTN', 'Thimphu', 22000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (193, 'Santa Cruz de la Sierra', 'BOL', 'Santa Cruz', 935361);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (194, 'La Paz', 'BOL', 'La Paz', 758141);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (195, 'El Alto', 'BOL', 'La Paz', 534466);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (196, 'Cochabamba', 'BOL', 'Cochabamba', 482800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (197, 'Oruro', 'BOL', 'Oruro', 223553);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (198, 'Sucre', 'BOL', 'Chuquisaca', 178426);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (199, 'PotosÃ­', 'BOL', 'PotosÃ­', 140642);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (200, 'Tarija', 'BOL', 'Tarija', 125255);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (201, 'Sarajevo', 'BIH', 'Federaatio', 360000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (202, 'Banja Luka', 'BIH', 'Republika Srpska', 143079);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (203, 'Zenica', 'BIH', 'Federaatio', 96027);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (204, 'Gaborone', 'BWA', 'Gaborone', 213017);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (205, 'Francistown', 'BWA', 'Francistown', 101805);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (206, 'SÃ£o Paulo', 'BRA', 'SÃ£o Paulo', 9968485);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (207, 'Rio de Janeiro', 'BRA', 'Rio de Janeiro', 5598953);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (208, 'Salvador', 'BRA', 'Bahia', 2302832);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (209, 'Belo Horizonte', 'BRA', 'Minas Gerais', 2139125);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (210, 'Fortaleza', 'BRA', 'CearÃ¡', 2097757);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (211, 'BrasÃ­lia', 'BRA', 'Distrito Federal', 1969868);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (212, 'Curitiba', 'BRA', 'ParanÃ¡', 1584232);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (213, 'Recife', 'BRA', 'Pernambuco', 1378087);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (214, 'Porto Alegre', 'BRA', 'Rio Grande do Sul', 1314032);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (215, 'Manaus', 'BRA', 'Amazonas', 1255049);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (216, 'BelÃ©m', 'BRA', 'ParÃ¡', 1186926);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (217, 'Guarulhos', 'BRA', 'SÃ£o Paulo', 1095874);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (218, 'GoiÃ¢nia', 'BRA', 'GoiÃ¡s', 1056330);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (219, 'Campinas', 'BRA', 'SÃ£o Paulo', 950043);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (220, 'SÃ£o GonÃ§alo', 'BRA', 'Rio de Janeiro', 869254);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (221, 'Nova IguaÃ§u', 'BRA', 'Rio de Janeiro', 862225);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (222, 'SÃ£o LuÃ­s', 'BRA', 'MaranhÃ£o', 837588);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (223, 'MaceiÃ³', 'BRA', 'Alagoas', 786288);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (224, 'Duque de Caxias', 'BRA', 'Rio de Janeiro', 746758);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (225, 'SÃ£o Bernardo do Campo', 'BRA', 'SÃ£o Paulo', 723132);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (226, 'Teresina', 'BRA', 'PiauÃ­', 691942);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (227, 'Natal', 'BRA', 'Rio Grande do Norte', 688955);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (228, 'Osasco', 'BRA', 'SÃ£o Paulo', 659604);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (229, 'Campo Grande', 'BRA', 'Mato Grosso do Sul', 649593);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (230, 'Santo AndrÃ©', 'BRA', 'SÃ£o Paulo', 630073);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (231, 'JoÃ£o Pessoa', 'BRA', 'ParaÃ­ba', 584029);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (232, 'JaboatÃ£o dos Guararapes', 'BRA', 'Pernambuco', 558680);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (233, 'Contagem', 'BRA', 'Minas Gerais', 520801);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (234, 'SÃ£o JosÃ© dos Campos', 'BRA', 'SÃ£o Paulo', 515553);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (235, 'UberlÃ¢ndia', 'BRA', 'Minas Gerais', 487222);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (236, 'Feira de Santana', 'BRA', 'Bahia', 479992);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (237, 'RibeirÃ£o Preto', 'BRA', 'SÃ£o Paulo', 473276);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (238, 'Sorocaba', 'BRA', 'SÃ£o Paulo', 466823);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (239, 'NiterÃ³i', 'BRA', 'Rio de Janeiro', 459884);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (240, 'CuiabÃ¡', 'BRA', 'Mato Grosso', 453813);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (241, 'Juiz de Fora', 'BRA', 'Minas Gerais', 450288);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (242, 'Aracaju', 'BRA', 'Sergipe', 445555);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (243, 'SÃ£o JoÃ£o de Meriti', 'BRA', 'Rio de Janeiro', 440052);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (244, 'Londrina', 'BRA', 'ParanÃ¡', 432257);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (245, 'Joinville', 'BRA', 'Santa Catarina', 428011);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (246, 'Belford Roxo', 'BRA', 'Rio de Janeiro', 425194);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (247, 'Santos', 'BRA', 'SÃ£o Paulo', 408748);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (248, 'Ananindeua', 'BRA', 'ParÃ¡', 400940);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (249, 'Campos dos Goytacazes', 'BRA', 'Rio de Janeiro', 398418);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (250, 'MauÃ¡', 'BRA', 'SÃ£o Paulo', 375055);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (251, 'CarapicuÃ­ba', 'BRA', 'SÃ£o Paulo', 357552);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (252, 'Olinda', 'BRA', 'Pernambuco', 354732);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (253, 'Campina Grande', 'BRA', 'ParaÃ­ba', 352497);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (254, 'SÃ£o JosÃ© do Rio Preto', 'BRA', 'SÃ£o Paulo', 351944);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (255, 'Caxias do Sul', 'BRA', 'Rio Grande do Sul', 349581);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (256, 'Moji das Cruzes', 'BRA', 'SÃ£o Paulo', 339194);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (257, 'Diadema', 'BRA', 'SÃ£o Paulo', 335078);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (258, 'Aparecida de GoiÃ¢nia', 'BRA', 'GoiÃ¡s', 324662);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (259, 'Piracicaba', 'BRA', 'SÃ£o Paulo', 319104);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (260, 'Cariacica', 'BRA', 'EspÃ­rito Santo', 319033);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (261, 'Vila Velha', 'BRA', 'EspÃ­rito Santo', 318758);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (262, 'Pelotas', 'BRA', 'Rio Grande do Sul', 315415);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (263, 'Bauru', 'BRA', 'SÃ£o Paulo', 313670);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (264, 'Porto Velho', 'BRA', 'RondÃ´nia', 309750);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (265, 'Serra', 'BRA', 'EspÃ­rito Santo', 302666);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (266, 'Betim', 'BRA', 'Minas Gerais', 302108);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (267, 'JundÃ­aÃ­', 'BRA', 'SÃ£o Paulo', 296127);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (268, 'Canoas', 'BRA', 'Rio Grande do Sul', 294125);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (269, 'Franca', 'BRA', 'SÃ£o Paulo', 290139);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (270, 'SÃ£o Vicente', 'BRA', 'SÃ£o Paulo', 286848);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (271, 'MaringÃ¡', 'BRA', 'ParanÃ¡', 286461);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (272, 'Montes Claros', 'BRA', 'Minas Gerais', 286058);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (273, 'AnÃ¡polis', 'BRA', 'GoiÃ¡s', 282197);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (274, 'FlorianÃ³polis', 'BRA', 'Santa Catarina', 281928);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (275, 'PetrÃ³polis', 'BRA', 'Rio de Janeiro', 279183);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (276, 'Itaquaquecetuba', 'BRA', 'SÃ£o Paulo', 270874);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (277, 'VitÃ³ria', 'BRA', 'EspÃ­rito Santo', 270626);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (278, 'Ponta Grossa', 'BRA', 'ParanÃ¡', 268013);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (279, 'Rio Branco', 'BRA', 'Acre', 259537);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (280, 'Foz do IguaÃ§u', 'BRA', 'ParanÃ¡', 259425);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (281, 'MacapÃ¡', 'BRA', 'AmapÃ¡', 256033);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (282, 'IlhÃ©us', 'BRA', 'Bahia', 254970);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (283, 'VitÃ³ria da Conquista', 'BRA', 'Bahia', 253587);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (284, 'Uberaba', 'BRA', 'Minas Gerais', 249225);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (285, 'Paulista', 'BRA', 'Pernambuco', 248473);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (286, 'Limeira', 'BRA', 'SÃ£o Paulo', 245497);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (287, 'Blumenau', 'BRA', 'Santa Catarina', 244379);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (288, 'Caruaru', 'BRA', 'Pernambuco', 244247);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (289, 'SantarÃ©m', 'BRA', 'ParÃ¡', 241771);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (290, 'Volta Redonda', 'BRA', 'Rio de Janeiro', 240315);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (291, 'Novo Hamburgo', 'BRA', 'Rio Grande do Sul', 239940);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (292, 'Caucaia', 'BRA', 'CearÃ¡', 238738);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (293, 'Santa Maria', 'BRA', 'Rio Grande do Sul', 238473);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (294, 'Cascavel', 'BRA', 'ParanÃ¡', 237510);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (295, 'GuarujÃ¡', 'BRA', 'SÃ£o Paulo', 237206);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (296, 'RibeirÃ£o das Neves', 'BRA', 'Minas Gerais', 232685);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (297, 'Governador Valadares', 'BRA', 'Minas Gerais', 231724);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (298, 'TaubatÃ©', 'BRA', 'SÃ£o Paulo', 229130);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (299, 'Imperatriz', 'BRA', 'MaranhÃ£o', 224564);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (300, 'GravataÃ­', 'BRA', 'Rio Grande do Sul', 223011);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (301, 'Embu', 'BRA', 'SÃ£o Paulo', 222223);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (302, 'MossorÃ³', 'BRA', 'Rio Grande do Norte', 214901);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (303, 'VÃ¡rzea Grande', 'BRA', 'Mato Grosso', 214435);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (304, 'Petrolina', 'BRA', 'Pernambuco', 210540);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (305, 'Barueri', 'BRA', 'SÃ£o Paulo', 208426);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (306, 'ViamÃ£o', 'BRA', 'Rio Grande do Sul', 207557);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (307, 'Ipatinga', 'BRA', 'Minas Gerais', 206338);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (308, 'Juazeiro', 'BRA', 'Bahia', 201073);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (309, 'Juazeiro do Norte', 'BRA', 'CearÃ¡', 199636);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (310, 'TaboÃ£o da Serra', 'BRA', 'SÃ£o Paulo', 197550);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (311, 'SÃ£o JosÃ© dos Pinhais', 'BRA', 'ParanÃ¡', 196884);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (312, 'MagÃ©', 'BRA', 'Rio de Janeiro', 196147);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (313, 'Suzano', 'BRA', 'SÃ£o Paulo', 195434);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (314, 'SÃ£o Leopoldo', 'BRA', 'Rio Grande do Sul', 189258);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (315, 'MarÃ­lia', 'BRA', 'SÃ£o Paulo', 188691);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (316, 'SÃ£o Carlos', 'BRA', 'SÃ£o Paulo', 187122);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (317, 'SumarÃ©', 'BRA', 'SÃ£o Paulo', 186205);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (318, 'Presidente Prudente', 'BRA', 'SÃ£o Paulo', 185340);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (319, 'DivinÃ³polis', 'BRA', 'Minas Gerais', 185047);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (320, 'Sete Lagoas', 'BRA', 'Minas Gerais', 182984);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (321, 'Rio Grande', 'BRA', 'Rio Grande do Sul', 182222);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (322, 'Itabuna', 'BRA', 'Bahia', 182148);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (323, 'JequiÃ©', 'BRA', 'Bahia', 179128);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (324, 'Arapiraca', 'BRA', 'Alagoas', 178988);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (325, 'Colombo', 'BRA', 'ParanÃ¡', 177764);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (326, 'Americana', 'BRA', 'SÃ£o Paulo', 177409);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (327, 'Alvorada', 'BRA', 'Rio Grande do Sul', 175574);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (328, 'Araraquara', 'BRA', 'SÃ£o Paulo', 174381);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (329, 'ItaboraÃ­', 'BRA', 'Rio de Janeiro', 173977);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (330, 'Santa BÃ¡rbara dÂ´Oeste', 'BRA', 'SÃ£o Paulo', 171657);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (331, 'Nova Friburgo', 'BRA', 'Rio de Janeiro', 170697);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (332, 'JacareÃ­', 'BRA', 'SÃ£o Paulo', 170356);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (333, 'AraÃ§atuba', 'BRA', 'SÃ£o Paulo', 169303);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (334, 'Barra Mansa', 'BRA', 'Rio de Janeiro', 168953);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (335, 'Praia Grande', 'BRA', 'SÃ£o Paulo', 168434);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (336, 'MarabÃ¡', 'BRA', 'ParÃ¡', 167795);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (337, 'CriciÃºma', 'BRA', 'Santa Catarina', 167661);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (338, 'Boa Vista', 'BRA', 'Roraima', 167185);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (339, 'Passo Fundo', 'BRA', 'Rio Grande do Sul', 166343);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (340, 'Dourados', 'BRA', 'Mato Grosso do Sul', 164716);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (341, 'Santa Luzia', 'BRA', 'Minas Gerais', 164704);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (342, 'Rio Claro', 'BRA', 'SÃ£o Paulo', 163551);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (343, 'MaracanaÃº', 'BRA', 'CearÃ¡', 162022);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (344, 'Guarapuava', 'BRA', 'ParanÃ¡', 160510);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (345, 'RondonÃ³polis', 'BRA', 'Mato Grosso', 155115);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (346, 'SÃ£o JosÃ©', 'BRA', 'Santa Catarina', 155105);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (347, 'Cachoeiro de Itapemirim', 'BRA', 'EspÃ­rito Santo', 155024);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (348, 'NilÃ³polis', 'BRA', 'Rio de Janeiro', 153383);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (349, 'Itapevi', 'BRA', 'SÃ£o Paulo', 150664);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (350, 'Cabo de Santo Agostinho', 'BRA', 'Pernambuco', 149964);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (351, 'CamaÃ§ari', 'BRA', 'Bahia', 149146);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (352, 'Sobral', 'BRA', 'CearÃ¡', 146005);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (353, 'ItajaÃ­', 'BRA', 'Santa Catarina', 145197);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (354, 'ChapecÃ³', 'BRA', 'Santa Catarina', 144158);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (355, 'Cotia', 'BRA', 'SÃ£o Paulo', 140042);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (356, 'Lages', 'BRA', 'Santa Catarina', 139570);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (357, 'Ferraz de Vasconcelos', 'BRA', 'SÃ£o Paulo', 139283);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (358, 'Indaiatuba', 'BRA', 'SÃ£o Paulo', 135968);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (359, 'HortolÃ¢ndia', 'BRA', 'SÃ£o Paulo', 135755);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (360, 'Caxias', 'BRA', 'MaranhÃ£o', 133980);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (361, 'SÃ£o Caetano do Sul', 'BRA', 'SÃ£o Paulo', 133321);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (362, 'Itu', 'BRA', 'SÃ£o Paulo', 132736);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (363, 'Nossa Senhora do Socorro', 'BRA', 'Sergipe', 131351);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (364, 'ParnaÃ­ba', 'BRA', 'PiauÃ­', 129756);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (365, 'PoÃ§os de Caldas', 'BRA', 'Minas Gerais', 129683);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (366, 'TeresÃ³polis', 'BRA', 'Rio de Janeiro', 128079);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (367, 'Barreiras', 'BRA', 'Bahia', 127801);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (368, 'Castanhal', 'BRA', 'ParÃ¡', 127634);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (369, 'Alagoinhas', 'BRA', 'Bahia', 126820);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (370, 'Itapecerica da Serra', 'BRA', 'SÃ£o Paulo', 126672);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (371, 'Uruguaiana', 'BRA', 'Rio Grande do Sul', 126305);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (372, 'ParanaguÃ¡', 'BRA', 'ParanÃ¡', 126076);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (373, 'IbiritÃ©', 'BRA', 'Minas Gerais', 125982);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (374, 'Timon', 'BRA', 'MaranhÃ£o', 125812);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (375, 'LuziÃ¢nia', 'BRA', 'GoiÃ¡s', 125597);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (376, 'MacaÃ©', 'BRA', 'Rio de Janeiro', 125597);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (377, 'TeÃ³filo Otoni', 'BRA', 'Minas Gerais', 124489);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (378, 'Moji-GuaÃ§u', 'BRA', 'SÃ£o Paulo', 123782);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (379, 'Palmas', 'BRA', 'Tocantins', 121919);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (380, 'Pindamonhangaba', 'BRA', 'SÃ£o Paulo', 121904);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (381, 'Francisco Morato', 'BRA', 'SÃ£o Paulo', 121197);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (382, 'BagÃ©', 'BRA', 'Rio Grande do Sul', 120793);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (383, 'Sapucaia do Sul', 'BRA', 'Rio Grande do Sul', 120217);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (384, 'Cabo Frio', 'BRA', 'Rio de Janeiro', 119503);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (385, 'Itapetininga', 'BRA', 'SÃ£o Paulo', 119391);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (386, 'Patos de Minas', 'BRA', 'Minas Gerais', 119262);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (387, 'Camaragibe', 'BRA', 'Pernambuco', 118968);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (388, 'BraganÃ§a Paulista', 'BRA', 'SÃ£o Paulo', 116929);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (389, 'Queimados', 'BRA', 'Rio de Janeiro', 115020);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (390, 'AraguaÃ­na', 'BRA', 'Tocantins', 114948);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (391, 'Garanhuns', 'BRA', 'Pernambuco', 114603);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (392, 'VitÃ³ria de Santo AntÃ£o', 'BRA', 'Pernambuco', 113595);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (393, 'Santa Rita', 'BRA', 'ParaÃ­ba', 113135);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (394, 'Barbacena', 'BRA', 'Minas Gerais', 113079);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (395, 'Abaetetuba', 'BRA', 'ParÃ¡', 111258);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (396, 'JaÃº', 'BRA', 'SÃ£o Paulo', 109965);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (397, 'Lauro de Freitas', 'BRA', 'Bahia', 109236);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (398, 'Franco da Rocha', 'BRA', 'SÃ£o Paulo', 108964);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (399, 'Teixeira de Freitas', 'BRA', 'Bahia', 108441);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (400, 'Varginha', 'BRA', 'Minas Gerais', 108314);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (401, 'RibeirÃ£o Pires', 'BRA', 'SÃ£o Paulo', 108121);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (402, 'SabarÃ¡', 'BRA', 'Minas Gerais', 107781);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (403, 'Catanduva', 'BRA', 'SÃ£o Paulo', 107761);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (404, 'Rio Verde', 'BRA', 'GoiÃ¡s', 107755);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (405, 'Botucatu', 'BRA', 'SÃ£o Paulo', 107663);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (406, 'Colatina', 'BRA', 'EspÃ­rito Santo', 107354);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (407, 'Santa Cruz do Sul', 'BRA', 'Rio Grande do Sul', 106734);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (408, 'Linhares', 'BRA', 'EspÃ­rito Santo', 106278);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (409, 'Apucarana', 'BRA', 'ParanÃ¡', 105114);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (410, 'Barretos', 'BRA', 'SÃ£o Paulo', 104156);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (411, 'GuaratinguetÃ¡', 'BRA', 'SÃ£o Paulo', 103433);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (412, 'Cachoeirinha', 'BRA', 'Rio Grande do Sul', 103240);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (413, 'CodÃ³', 'BRA', 'MaranhÃ£o', 103153);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (414, 'JaraguÃ¡ do Sul', 'BRA', 'Santa Catarina', 102580);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (415, 'CubatÃ£o', 'BRA', 'SÃ£o Paulo', 102372);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (416, 'Itabira', 'BRA', 'Minas Gerais', 102217);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (417, 'Itaituba', 'BRA', 'ParÃ¡', 101320);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (418, 'Araras', 'BRA', 'SÃ£o Paulo', 101046);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (419, 'Resende', 'BRA', 'Rio de Janeiro', 100627);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (420, 'Atibaia', 'BRA', 'SÃ£o Paulo', 100356);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (421, 'Pouso Alegre', 'BRA', 'Minas Gerais', 100028);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (422, 'Toledo', 'BRA', 'ParanÃ¡', 99387);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (423, 'Crato', 'BRA', 'CearÃ¡', 98965);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (424, 'Passos', 'BRA', 'Minas Gerais', 98570);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (425, 'Araguari', 'BRA', 'Minas Gerais', 98399);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (426, 'SÃ£o JosÃ© de Ribamar', 'BRA', 'MaranhÃ£o', 98318);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (427, 'Pinhais', 'BRA', 'ParanÃ¡', 98198);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (428, 'SertÃ£ozinho', 'BRA', 'SÃ£o Paulo', 98140);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (429, 'Conselheiro Lafaiete', 'BRA', 'Minas Gerais', 97507);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (430, 'Paulo Afonso', 'BRA', 'Bahia', 97291);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (431, 'Angra dos Reis', 'BRA', 'Rio de Janeiro', 96864);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (432, 'EunÃ¡polis', 'BRA', 'Bahia', 96610);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (433, 'Salto', 'BRA', 'SÃ£o Paulo', 96348);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (434, 'Ourinhos', 'BRA', 'SÃ£o Paulo', 96291);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (435, 'Parnamirim', 'BRA', 'Rio Grande do Norte', 96210);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (436, 'Jacobina', 'BRA', 'Bahia', 96131);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (437, 'Coronel Fabriciano', 'BRA', 'Minas Gerais', 95933);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (438, 'Birigui', 'BRA', 'SÃ£o Paulo', 94685);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (439, 'TatuÃ­', 'BRA', 'SÃ£o Paulo', 93897);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (440, 'Ji-ParanÃ¡', 'BRA', 'RondÃ´nia', 93346);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (441, 'Bacabal', 'BRA', 'MaranhÃ£o', 93121);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (442, 'CametÃ¡', 'BRA', 'ParÃ¡', 92779);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (443, 'GuaÃ­ba', 'BRA', 'Rio Grande do Sul', 92224);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (444, 'SÃ£o LourenÃ§o da Mata', 'BRA', 'Pernambuco', 91999);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (445, 'Santana do Livramento', 'BRA', 'Rio Grande do Sul', 91779);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (446, 'Votorantim', 'BRA', 'SÃ£o Paulo', 91777);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (447, 'Campo Largo', 'BRA', 'ParanÃ¡', 91203);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (448, 'Patos', 'BRA', 'ParaÃ­ba', 90519);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (449, 'Ituiutaba', 'BRA', 'Minas Gerais', 90507);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (450, 'CorumbÃ¡', 'BRA', 'Mato Grosso do Sul', 90111);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (451, 'PalhoÃ§a', 'BRA', 'Santa Catarina', 89465);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (452, 'Barra do PiraÃ­', 'BRA', 'Rio de Janeiro', 89388);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (453, 'Bento GonÃ§alves', 'BRA', 'Rio Grande do Sul', 89254);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (454, 'PoÃ¡', 'BRA', 'SÃ£o Paulo', 89236);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (455, 'Ã�guas Lindas de GoiÃ¡s', 'BRA', 'GoiÃ¡s', 89200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (456, 'London', 'GBR', 'England', 7285000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (457, 'Birmingham', 'GBR', 'England', 1013000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (458, 'Glasgow', 'GBR', 'Scotland', 619680);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (459, 'Liverpool', 'GBR', 'England', 461000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (460, 'Edinburgh', 'GBR', 'Scotland', 450180);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (461, 'Sheffield', 'GBR', 'England', 431607);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (462, 'Manchester', 'GBR', 'England', 430000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (463, 'Leeds', 'GBR', 'England', 424194);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (464, 'Bristol', 'GBR', 'England', 402000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (465, 'Cardiff', 'GBR', 'Wales', 321000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (466, 'Coventry', 'GBR', 'England', 304000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (467, 'Leicester', 'GBR', 'England', 294000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (468, 'Bradford', 'GBR', 'England', 289376);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (469, 'Belfast', 'GBR', 'North Ireland', 287500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (470, 'Nottingham', 'GBR', 'England', 287000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (471, 'Kingston upon Hull', 'GBR', 'England', 262000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (472, 'Plymouth', 'GBR', 'England', 253000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (473, 'Stoke-on-Trent', 'GBR', 'England', 252000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (474, 'Wolverhampton', 'GBR', 'England', 242000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (475, 'Derby', 'GBR', 'England', 236000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (476, 'Swansea', 'GBR', 'Wales', 230000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (477, 'Southampton', 'GBR', 'England', 216000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (478, 'Aberdeen', 'GBR', 'Scotland', 213070);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (479, 'Northampton', 'GBR', 'England', 196000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (480, 'Dudley', 'GBR', 'England', 192171);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (481, 'Portsmouth', 'GBR', 'England', 190000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (482, 'Newcastle upon Tyne', 'GBR', 'England', 189150);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (483, 'Sunderland', 'GBR', 'England', 183310);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (484, 'Luton', 'GBR', 'England', 183000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (485, 'Swindon', 'GBR', 'England', 180000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (486, 'Southend-on-Sea', 'GBR', 'England', 176000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (487, 'Walsall', 'GBR', 'England', 174739);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (488, 'Bournemouth', 'GBR', 'England', 162000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (489, 'Peterborough', 'GBR', 'England', 156000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (490, 'Brighton', 'GBR', 'England', 156124);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (491, 'Blackpool', 'GBR', 'England', 151000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (492, 'Dundee', 'GBR', 'Scotland', 146690);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (493, 'West Bromwich', 'GBR', 'England', 146386);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (494, 'Reading', 'GBR', 'England', 148000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (495, 'Oldbury/Smethwick (Warley)', 'GBR', 'England', 145542);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (496, 'Middlesbrough', 'GBR', 'England', 145000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (497, 'Huddersfield', 'GBR', 'England', 143726);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (498, 'Oxford', 'GBR', 'England', 144000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (499, 'Poole', 'GBR', 'England', 141000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (500, 'Bolton', 'GBR', 'England', 139020);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (501, 'Blackburn', 'GBR', 'England', 140000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (502, 'Newport', 'GBR', 'Wales', 139000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (503, 'Preston', 'GBR', 'England', 135000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (504, 'Stockport', 'GBR', 'England', 132813);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (505, 'Norwich', 'GBR', 'England', 124000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (506, 'Rotherham', 'GBR', 'England', 121380);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (507, 'Cambridge', 'GBR', 'England', 121000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (508, 'Watford', 'GBR', 'England', 113080);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (509, 'Ipswich', 'GBR', 'England', 114000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (510, 'Slough', 'GBR', 'England', 112000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (511, 'Exeter', 'GBR', 'England', 111000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (512, 'Cheltenham', 'GBR', 'England', 106000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (513, 'Gloucester', 'GBR', 'England', 107000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (514, 'Saint Helens', 'GBR', 'England', 106293);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (515, 'Sutton Coldfield', 'GBR', 'England', 106001);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (516, 'York', 'GBR', 'England', 104425);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (517, 'Oldham', 'GBR', 'England', 103931);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (518, 'Basildon', 'GBR', 'England', 100924);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (519, 'Worthing', 'GBR', 'England', 100000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (520, 'Chelmsford', 'GBR', 'England', 97451);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (521, 'Colchester', 'GBR', 'England', 96063);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (522, 'Crawley', 'GBR', 'England', 97000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (523, 'Gillingham', 'GBR', 'England', 92000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (524, 'Solihull', 'GBR', 'England', 94531);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (525, 'Rochdale', 'GBR', 'England', 94313);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (526, 'Birkenhead', 'GBR', 'England', 93087);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (527, 'Worcester', 'GBR', 'England', 95000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (528, 'Hartlepool', 'GBR', 'England', 92000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (529, 'Halifax', 'GBR', 'England', 91069);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (530, 'Woking/Byfleet', 'GBR', 'England', 92000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (531, 'Southport', 'GBR', 'England', 90959);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (532, 'Maidstone', 'GBR', 'England', 90878);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (533, 'Eastbourne', 'GBR', 'England', 90000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (534, 'Grimsby', 'GBR', 'England', 89000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (535, 'Saint Helier', 'GBR', 'Jersey', 27523);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (536, 'Douglas', 'GBR', 'Â–', 23487);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (537, 'Road Town', 'VGB', 'Tortola', 8000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (538, 'Bandar Seri Begawan', 'BRN', 'Brunei and Muara', 21484);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (539, 'Sofija', 'BGR', 'Grad Sofija', 1122302);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (540, 'Plovdiv', 'BGR', 'Plovdiv', 342584);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (541, 'Varna', 'BGR', 'Varna', 299801);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (542, 'Burgas', 'BGR', 'Burgas', 195255);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (543, 'Ruse', 'BGR', 'Ruse', 166467);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (544, 'Stara Zagora', 'BGR', 'Haskovo', 147939);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (545, 'Pleven', 'BGR', 'Lovec', 121952);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (546, 'Sliven', 'BGR', 'Burgas', 105530);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (547, 'Dobric', 'BGR', 'Varna', 100399);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (548, 'ÂŠumen', 'BGR', 'Varna', 94686);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (549, 'Ouagadougou', 'BFA', 'Kadiogo', 824000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (550, 'Bobo-Dioulasso', 'BFA', 'Houet', 300000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (551, 'Koudougou', 'BFA', 'BoulkiemdÃ©', 105000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (552, 'Bujumbura', 'BDI', 'Bujumbura', 300000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (553, 'George Town', 'CYM', 'Grand Cayman', 19600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (554, 'Santiago de Chile', 'CHL', 'Santiago', 4703954);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (555, 'Puente Alto', 'CHL', 'Santiago', 386236);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (556, 'ViÃ±a del Mar', 'CHL', 'ValparaÃ­so', 312493);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (557, 'ValparaÃ­so', 'CHL', 'ValparaÃ­so', 293800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (558, 'Talcahuano', 'CHL', 'BÃ­obÃ­o', 277752);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (559, 'Antofagasta', 'CHL', 'Antofagasta', 251429);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (560, 'San Bernardo', 'CHL', 'Santiago', 241910);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (561, 'Temuco', 'CHL', 'La AraucanÃ­a', 233041);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (562, 'ConcepciÃ³n', 'CHL', 'BÃ­obÃ­o', 217664);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (563, 'Rancagua', 'CHL', 'OÂ´Higgins', 212977);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (564, 'Arica', 'CHL', 'TarapacÃ¡', 189036);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (565, 'Talca', 'CHL', 'Maule', 187557);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (566, 'ChillÃ¡n', 'CHL', 'BÃ­obÃ­o', 178182);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (567, 'Iquique', 'CHL', 'TarapacÃ¡', 177892);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (568, 'Los Angeles', 'CHL', 'BÃ­obÃ­o', 158215);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (569, 'Puerto Montt', 'CHL', 'Los Lagos', 152194);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (570, 'Coquimbo', 'CHL', 'Coquimbo', 143353);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (571, 'Osorno', 'CHL', 'Los Lagos', 141468);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (572, 'La Serena', 'CHL', 'Coquimbo', 137409);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (573, 'Calama', 'CHL', 'Antofagasta', 137265);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (574, 'Valdivia', 'CHL', 'Los Lagos', 133106);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (575, 'Punta Arenas', 'CHL', 'Magallanes', 125631);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (576, 'CopiapÃ³', 'CHL', 'Atacama', 120128);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (577, 'QuilpuÃ©', 'CHL', 'ValparaÃ­so', 118857);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (578, 'CuricÃ³', 'CHL', 'Maule', 115766);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (579, 'Ovalle', 'CHL', 'Coquimbo', 94854);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (580, 'Coronel', 'CHL', 'BÃ­obÃ­o', 93061);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (581, 'San Pedro de la Paz', 'CHL', 'BÃ­obÃ­o', 91684);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (582, 'Melipilla', 'CHL', 'Santiago', 91056);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (583, 'Avarua', 'COK', 'Rarotonga', 11900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (584, 'San JosÃ©', 'CRI', 'San JosÃ©', 339131);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (585, 'Djibouti', 'DJI', 'Djibouti', 383000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (586, 'Roseau', 'DMA', 'St George', 16243);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (587, 'Santo Domingo de GuzmÃ¡n', 'DOM', 'Distrito Nacional', 1609966);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (588, 'Santiago de los Caballeros', 'DOM', 'Santiago', 365463);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (589, 'La Romana', 'DOM', 'La Romana', 140204);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (590, 'San Pedro de MacorÃ­s', 'DOM', 'San Pedro de MacorÃ­s', 124735);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (591, 'San Francisco de MacorÃ­s', 'DOM', 'Duarte', 108485);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (592, 'San Felipe de Puerto Plata', 'DOM', 'Puerto Plata', 89423);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (593, 'Guayaquil', 'ECU', 'Guayas', 2070040);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (594, 'Quito', 'ECU', 'Pichincha', 1573458);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (595, 'Cuenca', 'ECU', 'Azuay', 270353);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (596, 'Machala', 'ECU', 'El Oro', 210368);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (597, 'Santo Domingo de los Colorados', 'ECU', 'Pichincha', 202111);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (598, 'Portoviejo', 'ECU', 'ManabÃ­', 176413);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (599, 'Ambato', 'ECU', 'Tungurahua', 169612);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (600, 'Manta', 'ECU', 'ManabÃ­', 164739);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (601, 'Duran [Eloy Alfaro]', 'ECU', 'Guayas', 152514);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (602, 'Ibarra', 'ECU', 'Imbabura', 130643);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (603, 'Quevedo', 'ECU', 'Los RÃ­os', 129631);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (604, 'Milagro', 'ECU', 'Guayas', 124177);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (605, 'Loja', 'ECU', 'Loja', 123875);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (606, 'RÃ­obamba', 'ECU', 'Chimborazo', 123163);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (607, 'Esmeraldas', 'ECU', 'Esmeraldas', 123045);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (608, 'Cairo', 'EGY', 'Kairo', 6789479);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (609, 'Alexandria', 'EGY', 'Aleksandria', 3328196);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (610, 'Giza', 'EGY', 'Giza', 2221868);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (611, 'Shubra al-Khayma', 'EGY', 'al-Qalyubiya', 870716);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (612, 'Port Said', 'EGY', 'Port Said', 469533);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (613, 'Suez', 'EGY', 'Suez', 417610);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (614, 'al-Mahallat al-Kubra', 'EGY', 'al-Gharbiya', 395402);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (615, 'Tanta', 'EGY', 'al-Gharbiya', 371010);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (616, 'al-Mansura', 'EGY', 'al-Daqahliya', 369621);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (617, 'Luxor', 'EGY', 'Luxor', 360503);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (618, 'Asyut', 'EGY', 'Asyut', 343498);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (619, 'Bahtim', 'EGY', 'al-Qalyubiya', 275807);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (620, 'Zagazig', 'EGY', 'al-Sharqiya', 267351);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (621, 'al-Faiyum', 'EGY', 'al-Faiyum', 260964);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (622, 'Ismailia', 'EGY', 'Ismailia', 254477);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (623, 'Kafr al-Dawwar', 'EGY', 'al-Buhayra', 231978);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (624, 'Assuan', 'EGY', 'Assuan', 219017);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (625, 'Damanhur', 'EGY', 'al-Buhayra', 212203);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (626, 'al-Minya', 'EGY', 'al-Minya', 201360);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (627, 'Bani Suwayf', 'EGY', 'Bani Suwayf', 172032);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (628, 'Qina', 'EGY', 'Qina', 171275);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (629, 'Sawhaj', 'EGY', 'Sawhaj', 170125);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (630, 'Shibin al-Kawm', 'EGY', 'al-Minufiya', 159909);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (631, 'Bulaq al-Dakrur', 'EGY', 'Giza', 148787);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (632, 'Banha', 'EGY', 'al-Qalyubiya', 145792);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (633, 'Warraq al-Arab', 'EGY', 'Giza', 127108);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (634, 'Kafr al-Shaykh', 'EGY', 'Kafr al-Shaykh', 124819);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (635, 'Mallawi', 'EGY', 'al-Minya', 119283);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (636, 'Bilbays', 'EGY', 'al-Sharqiya', 113608);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (637, 'Mit Ghamr', 'EGY', 'al-Daqahliya', 101801);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (638, 'al-Arish', 'EGY', 'Shamal Sina', 100447);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (639, 'Talkha', 'EGY', 'al-Daqahliya', 97700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (640, 'Qalyub', 'EGY', 'al-Qalyubiya', 97200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (641, 'Jirja', 'EGY', 'Sawhaj', 95400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (642, 'Idfu', 'EGY', 'Qina', 94200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (643, 'al-Hawamidiya', 'EGY', 'Giza', 91700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (644, 'Disuq', 'EGY', 'Kafr al-Shaykh', 91300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (645, 'San Salvador', 'SLV', 'San Salvador', 415346);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (646, 'Santa Ana', 'SLV', 'Santa Ana', 139389);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (647, 'Mejicanos', 'SLV', 'San Salvador', 138800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (648, 'Soyapango', 'SLV', 'San Salvador', 129800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (649, 'San Miguel', 'SLV', 'San Miguel', 127696);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (650, 'Nueva San Salvador', 'SLV', 'La Libertad', 98400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (651, 'Apopa', 'SLV', 'San Salvador', 88800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (652, 'Asmara', 'ERI', 'Maekel', 431000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (653, 'Madrid', 'ESP', 'Madrid', 2879052);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (654, 'Barcelona', 'ESP', 'Katalonia', 1503451);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (655, 'Valencia', 'ESP', 'Valencia', 739412);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (656, 'Sevilla', 'ESP', 'Andalusia', 701927);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (657, 'Zaragoza', 'ESP', 'Aragonia', 603367);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (658, 'MÃ¡laga', 'ESP', 'Andalusia', 530553);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (659, 'Bilbao', 'ESP', 'Baskimaa', 357589);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (660, 'Las Palmas de Gran Canaria', 'ESP', 'Canary Islands', 354757);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (661, 'Murcia', 'ESP', 'Murcia', 353504);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (662, 'Palma de Mallorca', 'ESP', 'Balears', 326993);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (663, 'Valladolid', 'ESP', 'Castilla and LeÃ³n', 319998);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (664, 'CÃ³rdoba', 'ESP', 'Andalusia', 311708);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (665, 'Vigo', 'ESP', 'Galicia', 283670);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (666, 'Alicante [Alacant]', 'ESP', 'Valencia', 272432);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (667, 'GijÃ³n', 'ESP', 'Asturia', 267980);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (668, 'LÂ´Hospitalet de Llobregat', 'ESP', 'Katalonia', 247986);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (669, 'Granada', 'ESP', 'Andalusia', 244767);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (670, 'A CoruÃ±a (La CoruÃ±a)', 'ESP', 'Galicia', 243402);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (671, 'Vitoria-Gasteiz', 'ESP', 'Baskimaa', 217154);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (672, 'Santa Cruz de Tenerife', 'ESP', 'Canary Islands', 213050);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (673, 'Badalona', 'ESP', 'Katalonia', 209635);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (674, 'Oviedo', 'ESP', 'Asturia', 200453);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (675, 'MÃ³stoles', 'ESP', 'Madrid', 195351);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (676, 'Elche [Elx]', 'ESP', 'Valencia', 193174);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (677, 'Sabadell', 'ESP', 'Katalonia', 184859);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (678, 'Santander', 'ESP', 'Cantabria', 184165);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (679, 'Jerez de la Frontera', 'ESP', 'Andalusia', 182660);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (680, 'Pamplona [IruÃ±a]', 'ESP', 'Navarra', 180483);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (681, 'Donostia-San SebastiÃ¡n', 'ESP', 'Baskimaa', 179208);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (682, 'Cartagena', 'ESP', 'Murcia', 177709);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (683, 'LeganÃ©s', 'ESP', 'Madrid', 173163);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (684, 'Fuenlabrada', 'ESP', 'Madrid', 171173);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (685, 'AlmerÃ­a', 'ESP', 'Andalusia', 169027);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (686, 'Terrassa', 'ESP', 'Katalonia', 168695);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (687, 'AlcalÃ¡ de Henares', 'ESP', 'Madrid', 164463);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (688, 'Burgos', 'ESP', 'Castilla and LeÃ³n', 162802);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (689, 'Salamanca', 'ESP', 'Castilla and LeÃ³n', 158720);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (690, 'Albacete', 'ESP', 'Kastilia-La Mancha', 147527);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (691, 'Getafe', 'ESP', 'Madrid', 145371);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (692, 'CÃ¡diz', 'ESP', 'Andalusia', 142449);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (693, 'AlcorcÃ³n', 'ESP', 'Madrid', 142048);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (694, 'Huelva', 'ESP', 'Andalusia', 140583);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (695, 'LeÃ³n', 'ESP', 'Castilla and LeÃ³n', 139809);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (696, 'CastellÃ³n de la Plana [Castell', 'ESP', 'Valencia', 139712);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (697, 'Badajoz', 'ESP', 'Extremadura', 136613);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (698, '[San CristÃ³bal de] la Laguna', 'ESP', 'Canary Islands', 127945);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (699, 'LogroÃ±o', 'ESP', 'La Rioja', 127093);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (700, 'Santa Coloma de Gramenet', 'ESP', 'Katalonia', 120802);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (701, 'Tarragona', 'ESP', 'Katalonia', 113016);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (702, 'Lleida (LÃ©rida)', 'ESP', 'Katalonia', 112207);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (703, 'JaÃ©n', 'ESP', 'Andalusia', 109247);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (704, 'Ourense (Orense)', 'ESP', 'Galicia', 109120);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (705, 'MatarÃ³', 'ESP', 'Katalonia', 104095);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (706, 'Algeciras', 'ESP', 'Andalusia', 103106);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (707, 'Marbella', 'ESP', 'Andalusia', 101144);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (708, 'Barakaldo', 'ESP', 'Baskimaa', 98212);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (709, 'Dos Hermanas', 'ESP', 'Andalusia', 94591);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (710, 'Santiago de Compostela', 'ESP', 'Galicia', 93745);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (711, 'TorrejÃ³n de Ardoz', 'ESP', 'Madrid', 92262);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (712, 'Cape Town', 'ZAF', 'Western Cape', 2352121);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (713, 'Soweto', 'ZAF', 'Gauteng', 904165);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (714, 'Johannesburg', 'ZAF', 'Gauteng', 756653);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (715, 'Port Elizabeth', 'ZAF', 'Eastern Cape', 752319);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (716, 'Pretoria', 'ZAF', 'Gauteng', 658630);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (717, 'Inanda', 'ZAF', 'KwaZulu-Natal', 634065);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (718, 'Durban', 'ZAF', 'KwaZulu-Natal', 566120);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (719, 'Vanderbijlpark', 'ZAF', 'Gauteng', 468931);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (720, 'Kempton Park', 'ZAF', 'Gauteng', 442633);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (721, 'Alberton', 'ZAF', 'Gauteng', 410102);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (722, 'Pinetown', 'ZAF', 'KwaZulu-Natal', 378810);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (723, 'Pietermaritzburg', 'ZAF', 'KwaZulu-Natal', 370190);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (724, 'Benoni', 'ZAF', 'Gauteng', 365467);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (725, 'Randburg', 'ZAF', 'Gauteng', 341288);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (726, 'Umlazi', 'ZAF', 'KwaZulu-Natal', 339233);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (727, 'Bloemfontein', 'ZAF', 'Free State', 334341);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (728, 'Vereeniging', 'ZAF', 'Gauteng', 328535);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (729, 'Wonderboom', 'ZAF', 'Gauteng', 283289);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (730, 'Roodepoort', 'ZAF', 'Gauteng', 279340);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (731, 'Boksburg', 'ZAF', 'Gauteng', 262648);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (732, 'Klerksdorp', 'ZAF', 'North West', 261911);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (733, 'Soshanguve', 'ZAF', 'Gauteng', 242727);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (734, 'Newcastle', 'ZAF', 'KwaZulu-Natal', 222993);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (735, 'East London', 'ZAF', 'Eastern Cape', 221047);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (736, 'Welkom', 'ZAF', 'Free State', 203296);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (737, 'Kimberley', 'ZAF', 'Northern Cape', 197254);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (738, 'Uitenhage', 'ZAF', 'Eastern Cape', 192120);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (739, 'Chatsworth', 'ZAF', 'KwaZulu-Natal', 189885);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (740, 'Mdantsane', 'ZAF', 'Eastern Cape', 182639);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (741, 'Krugersdorp', 'ZAF', 'Gauteng', 181503);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (742, 'Botshabelo', 'ZAF', 'Free State', 177971);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (743, 'Brakpan', 'ZAF', 'Gauteng', 171363);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (744, 'Witbank', 'ZAF', 'Mpumalanga', 167183);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (745, 'Oberholzer', 'ZAF', 'Gauteng', 164367);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (746, 'Germiston', 'ZAF', 'Gauteng', 164252);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (747, 'Springs', 'ZAF', 'Gauteng', 162072);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (748, 'Westonaria', 'ZAF', 'Gauteng', 159632);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (749, 'Randfontein', 'ZAF', 'Gauteng', 120838);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (750, 'Paarl', 'ZAF', 'Western Cape', 105768);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (751, 'Potchefstroom', 'ZAF', 'North West', 101817);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (752, 'Rustenburg', 'ZAF', 'North West', 97008);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (753, 'Nigel', 'ZAF', 'Gauteng', 96734);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (754, 'George', 'ZAF', 'Western Cape', 93818);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (755, 'Ladysmith', 'ZAF', 'KwaZulu-Natal', 89292);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (756, 'Addis Abeba', 'ETH', 'Addis Abeba', 2495000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (757, 'Dire Dawa', 'ETH', 'Dire Dawa', 164851);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (758, 'Nazret', 'ETH', 'Oromia', 127842);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (759, 'Gonder', 'ETH', 'Amhara', 112249);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (760, 'Dese', 'ETH', 'Amhara', 97314);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (761, 'Mekele', 'ETH', 'Tigray', 96938);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (762, 'Bahir Dar', 'ETH', 'Amhara', 96140);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (763, 'Stanley', 'FLK', 'East Falkland', 1636);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (764, 'Suva', 'FJI', 'Central', 77366);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (765, 'Quezon', 'PHL', 'National Capital Reg', 2173831);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (766, 'Manila', 'PHL', 'National Capital Reg', 1581082);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (767, 'Kalookan', 'PHL', 'National Capital Reg', 1177604);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (768, 'Davao', 'PHL', 'Southern Mindanao', 1147116);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (769, 'Cebu', 'PHL', 'Central Visayas', 718821);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (770, 'Zamboanga', 'PHL', 'Western Mindanao', 601794);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (771, 'Pasig', 'PHL', 'National Capital Reg', 505058);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (772, 'Valenzuela', 'PHL', 'National Capital Reg', 485433);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (773, 'Las PiÃ±as', 'PHL', 'National Capital Reg', 472780);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (774, 'Antipolo', 'PHL', 'Southern Tagalog', 470866);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (775, 'Taguig', 'PHL', 'National Capital Reg', 467375);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (776, 'Cagayan de Oro', 'PHL', 'Northern Mindanao', 461877);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (777, 'ParaÃ±aque', 'PHL', 'National Capital Reg', 449811);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (778, 'Makati', 'PHL', 'National Capital Reg', 444867);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (779, 'Bacolod', 'PHL', 'Western Visayas', 429076);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (780, 'General Santos', 'PHL', 'Southern Mindanao', 411822);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (781, 'Marikina', 'PHL', 'National Capital Reg', 391170);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (782, 'DasmariÃ±as', 'PHL', 'Southern Tagalog', 379520);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (783, 'Muntinlupa', 'PHL', 'National Capital Reg', 379310);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (784, 'Iloilo', 'PHL', 'Western Visayas', 365820);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (785, 'Pasay', 'PHL', 'National Capital Reg', 354908);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (786, 'Malabon', 'PHL', 'National Capital Reg', 338855);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (787, 'San JosÃ© del Monte', 'PHL', 'Central Luzon', 315807);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (788, 'Bacoor', 'PHL', 'Southern Tagalog', 305699);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (789, 'Iligan', 'PHL', 'Central Mindanao', 285061);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (790, 'Calamba', 'PHL', 'Southern Tagalog', 281146);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (791, 'Mandaluyong', 'PHL', 'National Capital Reg', 278474);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (792, 'Butuan', 'PHL', 'Caraga', 267279);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (793, 'Angeles', 'PHL', 'Central Luzon', 263971);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (794, 'Tarlac', 'PHL', 'Central Luzon', 262481);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (795, 'Mandaue', 'PHL', 'Central Visayas', 259728);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (796, 'Baguio', 'PHL', 'CAR', 252386);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (797, 'Batangas', 'PHL', 'Southern Tagalog', 247588);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (798, 'Cainta', 'PHL', 'Southern Tagalog', 242511);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (799, 'San Pedro', 'PHL', 'Southern Tagalog', 231403);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (800, 'Navotas', 'PHL', 'National Capital Reg', 230403);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (801, 'Cabanatuan', 'PHL', 'Central Luzon', 222859);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (802, 'San Fernando', 'PHL', 'Central Luzon', 221857);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (803, 'Lipa', 'PHL', 'Southern Tagalog', 218447);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (804, 'Lapu-Lapu', 'PHL', 'Central Visayas', 217019);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (805, 'San Pablo', 'PHL', 'Southern Tagalog', 207927);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (806, 'BiÃ±an', 'PHL', 'Southern Tagalog', 201186);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (807, 'Taytay', 'PHL', 'Southern Tagalog', 198183);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (808, 'Lucena', 'PHL', 'Southern Tagalog', 196075);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (809, 'Imus', 'PHL', 'Southern Tagalog', 195482);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (810, 'Olongapo', 'PHL', 'Central Luzon', 194260);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (811, 'Binangonan', 'PHL', 'Southern Tagalog', 187691);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (812, 'Santa Rosa', 'PHL', 'Southern Tagalog', 185633);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (813, 'Tagum', 'PHL', 'Southern Mindanao', 179531);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (814, 'Tacloban', 'PHL', 'Eastern Visayas', 178639);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (815, 'Malolos', 'PHL', 'Central Luzon', 175291);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (816, 'Mabalacat', 'PHL', 'Central Luzon', 171045);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (817, 'Cotabato', 'PHL', 'Central Mindanao', 163849);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (818, 'Meycauayan', 'PHL', 'Central Luzon', 163037);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (819, 'Puerto Princesa', 'PHL', 'Southern Tagalog', 161912);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (820, 'Legazpi', 'PHL', 'Bicol', 157010);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (821, 'Silang', 'PHL', 'Southern Tagalog', 156137);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (822, 'Ormoc', 'PHL', 'Eastern Visayas', 154297);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (823, 'San Carlos', 'PHL', 'Ilocos', 154264);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (824, 'Kabankalan', 'PHL', 'Western Visayas', 149769);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (825, 'Talisay', 'PHL', 'Central Visayas', 148110);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (826, 'Valencia', 'PHL', 'Northern Mindanao', 147924);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (827, 'Calbayog', 'PHL', 'Eastern Visayas', 147187);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (828, 'Santa Maria', 'PHL', 'Central Luzon', 144282);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (829, 'Pagadian', 'PHL', 'Western Mindanao', 142515);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (830, 'Cadiz', 'PHL', 'Western Visayas', 141954);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (831, 'Bago', 'PHL', 'Western Visayas', 141721);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (832, 'Toledo', 'PHL', 'Central Visayas', 141174);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (833, 'Naga', 'PHL', 'Bicol', 137810);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (834, 'San Mateo', 'PHL', 'Southern Tagalog', 135603);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (835, 'Panabo', 'PHL', 'Southern Mindanao', 133950);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (836, 'Koronadal', 'PHL', 'Southern Mindanao', 133786);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (837, 'Marawi', 'PHL', 'Central Mindanao', 131090);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (838, 'Dagupan', 'PHL', 'Ilocos', 130328);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (839, 'Sagay', 'PHL', 'Western Visayas', 129765);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (840, 'Roxas', 'PHL', 'Western Visayas', 126352);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (841, 'Lubao', 'PHL', 'Central Luzon', 125699);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (842, 'Digos', 'PHL', 'Southern Mindanao', 125171);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (843, 'San Miguel', 'PHL', 'Central Luzon', 123824);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (844, 'Malaybalay', 'PHL', 'Northern Mindanao', 123672);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (845, 'Tuguegarao', 'PHL', 'Cagayan Valley', 120645);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (846, 'Ilagan', 'PHL', 'Cagayan Valley', 119990);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (847, 'Baliuag', 'PHL', 'Central Luzon', 119675);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (848, 'Surigao', 'PHL', 'Caraga', 118534);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (849, 'San Carlos', 'PHL', 'Western Visayas', 118259);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (850, 'San Juan del Monte', 'PHL', 'National Capital Reg', 117680);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (851, 'Tanauan', 'PHL', 'Southern Tagalog', 117539);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (852, 'Concepcion', 'PHL', 'Central Luzon', 115171);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (853, 'Rodriguez (Montalban)', 'PHL', 'Southern Tagalog', 115167);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (854, 'Sariaya', 'PHL', 'Southern Tagalog', 114568);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (855, 'Malasiqui', 'PHL', 'Ilocos', 113190);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (856, 'General Mariano Alvarez', 'PHL', 'Southern Tagalog', 112446);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (857, 'Urdaneta', 'PHL', 'Ilocos', 111582);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (858, 'Hagonoy', 'PHL', 'Central Luzon', 111425);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (859, 'San Jose', 'PHL', 'Southern Tagalog', 111009);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (860, 'Polomolok', 'PHL', 'Southern Mindanao', 110709);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (861, 'Santiago', 'PHL', 'Cagayan Valley', 110531);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (862, 'Tanza', 'PHL', 'Southern Tagalog', 110517);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (863, 'Ozamis', 'PHL', 'Northern Mindanao', 110420);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (864, 'Mexico', 'PHL', 'Central Luzon', 109481);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (865, 'San Jose', 'PHL', 'Central Luzon', 108254);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (866, 'Silay', 'PHL', 'Western Visayas', 107722);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (867, 'General Trias', 'PHL', 'Southern Tagalog', 107691);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (868, 'Tabaco', 'PHL', 'Bicol', 107166);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (869, 'Cabuyao', 'PHL', 'Southern Tagalog', 106630);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (870, 'Calapan', 'PHL', 'Southern Tagalog', 105910);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (871, 'Mati', 'PHL', 'Southern Mindanao', 105908);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (872, 'Midsayap', 'PHL', 'Central Mindanao', 105760);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (873, 'Cauayan', 'PHL', 'Cagayan Valley', 103952);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (874, 'Gingoog', 'PHL', 'Northern Mindanao', 102379);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (875, 'Dumaguete', 'PHL', 'Central Visayas', 102265);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (876, 'San Fernando', 'PHL', 'Ilocos', 102082);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (877, 'Arayat', 'PHL', 'Central Luzon', 101792);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (878, 'Bayawan (Tulong)', 'PHL', 'Central Visayas', 101391);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (879, 'Kidapawan', 'PHL', 'Central Mindanao', 101205);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (880, 'Daraga (Locsin)', 'PHL', 'Bicol', 101031);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (881, 'Marilao', 'PHL', 'Central Luzon', 101017);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (882, 'Malita', 'PHL', 'Southern Mindanao', 100000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (883, 'Dipolog', 'PHL', 'Western Mindanao', 99862);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (884, 'Cavite', 'PHL', 'Southern Tagalog', 99367);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (885, 'Danao', 'PHL', 'Central Visayas', 98781);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (886, 'Bislig', 'PHL', 'Caraga', 97860);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (887, 'Talavera', 'PHL', 'Central Luzon', 97329);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (888, 'Guagua', 'PHL', 'Central Luzon', 96858);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (889, 'Bayambang', 'PHL', 'Ilocos', 96609);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (890, 'Nasugbu', 'PHL', 'Southern Tagalog', 96113);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (891, 'Baybay', 'PHL', 'Eastern Visayas', 95630);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (892, 'Capas', 'PHL', 'Central Luzon', 95219);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (893, 'Sultan Kudarat', 'PHL', 'ARMM', 94861);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (894, 'Laoag', 'PHL', 'Ilocos', 94466);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (895, 'Bayugan', 'PHL', 'Caraga', 93623);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (896, 'Malungon', 'PHL', 'Southern Mindanao', 93232);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (897, 'Santa Cruz', 'PHL', 'Southern Tagalog', 92694);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (898, 'Sorsogon', 'PHL', 'Bicol', 92512);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (899, 'Candelaria', 'PHL', 'Southern Tagalog', 92429);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (900, 'Ligao', 'PHL', 'Bicol', 90603);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (901, 'TÃ³rshavn', 'FRO', 'Streymoyar', 14542);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (902, 'Libreville', 'GAB', 'Estuaire', 419000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (903, 'Serekunda', 'GMB', 'Kombo St Mary', 102600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (904, 'Banjul', 'GMB', 'Banjul', 42326);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (905, 'Tbilisi', 'GEO', 'Tbilisi', 1235200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (906, 'Kutaisi', 'GEO', 'Imereti', 240900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (907, 'Rustavi', 'GEO', 'Kvemo Kartli', 155400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (908, 'Batumi', 'GEO', 'Adzaria [AtÂšara]', 137700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (909, 'Sohumi', 'GEO', 'Abhasia [Aphazeti]', 111700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (910, 'Accra', 'GHA', 'Greater Accra', 1070000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (911, 'Kumasi', 'GHA', 'Ashanti', 385192);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (912, 'Tamale', 'GHA', 'Northern', 151069);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (913, 'Tema', 'GHA', 'Greater Accra', 109975);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (914, 'Sekondi-Takoradi', 'GHA', 'Western', 103653);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (915, 'Gibraltar', 'GIB', 'Â–', 27025);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (916, 'Saint GeorgeÂ´s', 'GRD', 'St George', 4621);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (917, 'Nuuk', 'GRL', 'Kitaa', 13445);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (918, 'Les Abymes', 'GLP', 'Grande-Terre', 62947);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (919, 'Basse-Terre', 'GLP', 'Basse-Terre', 12433);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (920, 'Tamuning', 'GUM', 'Â–', 9500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (921, 'AgaÃ±a', 'GUM', 'Â–', 1139);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (922, 'Ciudad de Guatemala', 'GTM', 'Guatemala', 823301);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (923, 'Mixco', 'GTM', 'Guatemala', 209791);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (924, 'Villa Nueva', 'GTM', 'Guatemala', 101295);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (925, 'Quetzaltenango', 'GTM', 'Quetzaltenango', 90801);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (926, 'Conakry', 'GIN', 'Conakry', 1090610);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (927, 'Bissau', 'GNB', 'Bissau', 241000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (928, 'Georgetown', 'GUY', 'Georgetown', 254000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (929, 'Port-au-Prince', 'HTI', 'Ouest', 884472);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (930, 'Carrefour', 'HTI', 'Ouest', 290204);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (931, 'Delmas', 'HTI', 'Ouest', 240429);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (932, 'Le-Cap-HaÃ¯tien', 'HTI', 'Nord', 102233);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (933, 'Tegucigalpa', 'HND', 'Distrito Central', 813900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (934, 'San Pedro Sula', 'HND', 'CortÃ©s', 383900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (935, 'La Ceiba', 'HND', 'AtlÃ¡ntida', 89200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (936, 'Kowloon and New Kowloon', 'HKG', 'Kowloon and New Kowl', 1987996);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (937, 'Victoria', 'HKG', 'Hongkong', 1312637);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (938, 'Longyearbyen', 'SJM', 'LÃ¤nsimaa', 1438);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (939, 'Jakarta', 'IDN', 'Jakarta Raya', 9604900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (940, 'Surabaya', 'IDN', 'East Java', 2663820);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (941, 'Bandung', 'IDN', 'West Java', 2429000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (942, 'Medan', 'IDN', 'Sumatera Utara', 1843919);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (943, 'Palembang', 'IDN', 'Sumatera Selatan', 1222764);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (944, 'Tangerang', 'IDN', 'West Java', 1198300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (945, 'Semarang', 'IDN', 'Central Java', 1104405);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (946, 'Ujung Pandang', 'IDN', 'Sulawesi Selatan', 1060257);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (947, 'Malang', 'IDN', 'East Java', 716862);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (948, 'Bandar Lampung', 'IDN', 'Lampung', 680332);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (949, 'Bekasi', 'IDN', 'West Java', 644300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (950, 'Padang', 'IDN', 'Sumatera Barat', 534474);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (951, 'Surakarta', 'IDN', 'Central Java', 518600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (952, 'Banjarmasin', 'IDN', 'Kalimantan Selatan', 482931);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (953, 'Pekan Baru', 'IDN', 'Riau', 438638);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (954, 'Denpasar', 'IDN', 'Bali', 435000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (955, 'Yogyakarta', 'IDN', 'Yogyakarta', 418944);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (956, 'Pontianak', 'IDN', 'Kalimantan Barat', 409632);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (957, 'Samarinda', 'IDN', 'Kalimantan Timur', 399175);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (958, 'Jambi', 'IDN', 'Jambi', 385201);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (959, 'Depok', 'IDN', 'West Java', 365200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (960, 'Cimahi', 'IDN', 'West Java', 344600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (961, 'Balikpapan', 'IDN', 'Kalimantan Timur', 338752);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (962, 'Manado', 'IDN', 'Sulawesi Utara', 332288);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (963, 'Mataram', 'IDN', 'Nusa Tenggara Barat', 306600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (964, 'Pekalongan', 'IDN', 'Central Java', 301504);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (965, 'Tegal', 'IDN', 'Central Java', 289744);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (966, 'Bogor', 'IDN', 'West Java', 285114);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (967, 'Ciputat', 'IDN', 'West Java', 270800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (968, 'Pondokgede', 'IDN', 'West Java', 263200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (969, 'Cirebon', 'IDN', 'West Java', 254406);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (970, 'Kediri', 'IDN', 'East Java', 253760);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (971, 'Ambon', 'IDN', 'Molukit', 249312);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (972, 'Jember', 'IDN', 'East Java', 218500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (973, 'Cilacap', 'IDN', 'Central Java', 206900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (974, 'Cimanggis', 'IDN', 'West Java', 205100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (975, 'Pematang Siantar', 'IDN', 'Sumatera Utara', 203056);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (976, 'Purwokerto', 'IDN', 'Central Java', 202500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (977, 'Ciomas', 'IDN', 'West Java', 187400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (978, 'Tasikmalaya', 'IDN', 'West Java', 179800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (979, 'Madiun', 'IDN', 'East Java', 171532);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (980, 'Bengkulu', 'IDN', 'Bengkulu', 146439);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (981, 'Karawang', 'IDN', 'West Java', 145000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (982, 'Banda Aceh', 'IDN', 'Aceh', 143409);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (983, 'Palu', 'IDN', 'Sulawesi Tengah', 142800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (984, 'Pasuruan', 'IDN', 'East Java', 134019);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (985, 'Kupang', 'IDN', 'Nusa Tenggara Timur', 129300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (986, 'Tebing Tinggi', 'IDN', 'Sumatera Utara', 129300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (987, 'Percut Sei Tuan', 'IDN', 'Sumatera Utara', 129000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (988, 'Binjai', 'IDN', 'Sumatera Utara', 127222);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (989, 'Sukabumi', 'IDN', 'West Java', 125766);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (990, 'Waru', 'IDN', 'East Java', 124300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (991, 'Pangkal Pinang', 'IDN', 'Sumatera Selatan', 124000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (992, 'Magelang', 'IDN', 'Central Java', 123800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (993, 'Blitar', 'IDN', 'East Java', 122600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (994, 'Serang', 'IDN', 'West Java', 122400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (995, 'Probolinggo', 'IDN', 'East Java', 120770);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (996, 'Cilegon', 'IDN', 'West Java', 117000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (997, 'Cianjur', 'IDN', 'West Java', 114300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (998, 'Ciparay', 'IDN', 'West Java', 111500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (999, 'Lhokseumawe', 'IDN', 'Aceh', 109600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1000, 'Taman', 'IDN', 'East Java', 107000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1001, 'Depok', 'IDN', 'Yogyakarta', 106800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1002, 'Citeureup', 'IDN', 'West Java', 105100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1003, 'Pemalang', 'IDN', 'Central Java', 103500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1004, 'Klaten', 'IDN', 'Central Java', 103300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1005, 'Salatiga', 'IDN', 'Central Java', 103000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1006, 'Cibinong', 'IDN', 'West Java', 101300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1007, 'Palangka Raya', 'IDN', 'Kalimantan Tengah', 99693);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1008, 'Mojokerto', 'IDN', 'East Java', 96626);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1009, 'Purwakarta', 'IDN', 'West Java', 95900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1010, 'Garut', 'IDN', 'West Java', 95800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1011, 'Kudus', 'IDN', 'Central Java', 95300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1012, 'Kendari', 'IDN', 'Sulawesi Tenggara', 94800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1013, 'Jaya Pura', 'IDN', 'West Irian', 94700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1014, 'Gorontalo', 'IDN', 'Sulawesi Utara', 94058);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1015, 'Majalaya', 'IDN', 'West Java', 93200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1016, 'Pondok Aren', 'IDN', 'West Java', 92700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1017, 'Jombang', 'IDN', 'East Java', 92600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1018, 'Sunggal', 'IDN', 'Sumatera Utara', 92300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1019, 'Batam', 'IDN', 'Riau', 91871);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1020, 'Padang Sidempuan', 'IDN', 'Sumatera Utara', 91200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1021, 'Sawangan', 'IDN', 'West Java', 91100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1022, 'Banyuwangi', 'IDN', 'East Java', 89900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1023, 'Tanjung Pinang', 'IDN', 'Riau', 89900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1024, 'Mumbai (Bombay)', 'IND', 'Maharashtra', 10500000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1025, 'Delhi', 'IND', 'Delhi', 7206704);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1026, 'Calcutta [Kolkata]', 'IND', 'West Bengali', 4399819);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1027, 'Chennai (Madras)', 'IND', 'Tamil Nadu', 3841396);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1028, 'Hyderabad', 'IND', 'Andhra Pradesh', 2964638);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1029, 'Ahmedabad', 'IND', 'Gujarat', 2876710);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1030, 'Bangalore', 'IND', 'Karnataka', 2660088);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1031, 'Kanpur', 'IND', 'Uttar Pradesh', 1874409);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1032, 'Nagpur', 'IND', 'Maharashtra', 1624752);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1033, 'Lucknow', 'IND', 'Uttar Pradesh', 1619115);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1034, 'Pune', 'IND', 'Maharashtra', 1566651);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1035, 'Surat', 'IND', 'Gujarat', 1498817);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1036, 'Jaipur', 'IND', 'Rajasthan', 1458483);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1037, 'Indore', 'IND', 'Madhya Pradesh', 1091674);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1038, 'Bhopal', 'IND', 'Madhya Pradesh', 1062771);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1039, 'Ludhiana', 'IND', 'Punjab', 1042740);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1040, 'Vadodara (Baroda)', 'IND', 'Gujarat', 1031346);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1041, 'Kalyan', 'IND', 'Maharashtra', 1014557);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1042, 'Madurai', 'IND', 'Tamil Nadu', 977856);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1043, 'Haora (Howrah)', 'IND', 'West Bengali', 950435);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1044, 'Varanasi (Benares)', 'IND', 'Uttar Pradesh', 929270);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1045, 'Patna', 'IND', 'Bihar', 917243);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1046, 'Srinagar', 'IND', 'Jammu and Kashmir', 892506);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1047, 'Agra', 'IND', 'Uttar Pradesh', 891790);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1048, 'Coimbatore', 'IND', 'Tamil Nadu', 816321);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1049, 'Thane (Thana)', 'IND', 'Maharashtra', 803389);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1050, 'Allahabad', 'IND', 'Uttar Pradesh', 792858);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1051, 'Meerut', 'IND', 'Uttar Pradesh', 753778);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1052, 'Vishakhapatnam', 'IND', 'Andhra Pradesh', 752037);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1053, 'Jabalpur', 'IND', 'Madhya Pradesh', 741927);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1054, 'Amritsar', 'IND', 'Punjab', 708835);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1055, 'Faridabad', 'IND', 'Haryana', 703592);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1056, 'Vijayawada', 'IND', 'Andhra Pradesh', 701827);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1057, 'Gwalior', 'IND', 'Madhya Pradesh', 690765);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1058, 'Jodhpur', 'IND', 'Rajasthan', 666279);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1059, 'Nashik (Nasik)', 'IND', 'Maharashtra', 656925);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1060, 'Hubli-Dharwad', 'IND', 'Karnataka', 648298);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1061, 'Solapur (Sholapur)', 'IND', 'Maharashtra', 604215);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1062, 'Ranchi', 'IND', 'Jharkhand', 599306);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1063, 'Bareilly', 'IND', 'Uttar Pradesh', 587211);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1064, 'Guwahati (Gauhati)', 'IND', 'Assam', 584342);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1065, 'Shambajinagar (Aurangabad)', 'IND', 'Maharashtra', 573272);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1066, 'Cochin (Kochi)', 'IND', 'Kerala', 564589);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1067, 'Rajkot', 'IND', 'Gujarat', 559407);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1068, 'Kota', 'IND', 'Rajasthan', 537371);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1069, 'Thiruvananthapuram (Trivandrum', 'IND', 'Kerala', 524006);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1070, 'Pimpri-Chinchwad', 'IND', 'Maharashtra', 517083);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1071, 'Jalandhar (Jullundur)', 'IND', 'Punjab', 509510);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1072, 'Gorakhpur', 'IND', 'Uttar Pradesh', 505566);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1073, 'Chandigarh', 'IND', 'Chandigarh', 504094);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1074, 'Mysore', 'IND', 'Karnataka', 480692);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1075, 'Aligarh', 'IND', 'Uttar Pradesh', 480520);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1076, 'Guntur', 'IND', 'Andhra Pradesh', 471051);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1077, 'Jamshedpur', 'IND', 'Jharkhand', 460577);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1078, 'Ghaziabad', 'IND', 'Uttar Pradesh', 454156);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1079, 'Warangal', 'IND', 'Andhra Pradesh', 447657);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1080, 'Raipur', 'IND', 'Chhatisgarh', 438639);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1081, 'Moradabad', 'IND', 'Uttar Pradesh', 429214);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1082, 'Durgapur', 'IND', 'West Bengali', 425836);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1083, 'Amravati', 'IND', 'Maharashtra', 421576);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1084, 'Calicut (Kozhikode)', 'IND', 'Kerala', 419831);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1085, 'Bikaner', 'IND', 'Rajasthan', 416289);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1086, 'Bhubaneswar', 'IND', 'Orissa', 411542);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1087, 'Kolhapur', 'IND', 'Maharashtra', 406370);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1088, 'Kataka (Cuttack)', 'IND', 'Orissa', 403418);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1089, 'Ajmer', 'IND', 'Rajasthan', 402700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1090, 'Bhavnagar', 'IND', 'Gujarat', 402338);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1091, 'Tiruchirapalli', 'IND', 'Tamil Nadu', 387223);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1092, 'Bhilai', 'IND', 'Chhatisgarh', 386159);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1093, 'Bhiwandi', 'IND', 'Maharashtra', 379070);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1094, 'Saharanpur', 'IND', 'Uttar Pradesh', 374945);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1095, 'Ulhasnagar', 'IND', 'Maharashtra', 369077);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1096, 'Salem', 'IND', 'Tamil Nadu', 366712);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1097, 'Ujjain', 'IND', 'Madhya Pradesh', 362266);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1098, 'Malegaon', 'IND', 'Maharashtra', 342595);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1099, 'Jamnagar', 'IND', 'Gujarat', 341637);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1100, 'Bokaro Steel City', 'IND', 'Jharkhand', 333683);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1101, 'Akola', 'IND', 'Maharashtra', 328034);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1102, 'Belgaum', 'IND', 'Karnataka', 326399);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1103, 'Rajahmundry', 'IND', 'Andhra Pradesh', 324851);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1104, 'Nellore', 'IND', 'Andhra Pradesh', 316606);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1105, 'Udaipur', 'IND', 'Rajasthan', 308571);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1106, 'New Bombay', 'IND', 'Maharashtra', 307297);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1107, 'Bhatpara', 'IND', 'West Bengali', 304952);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1108, 'Gulbarga', 'IND', 'Karnataka', 304099);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1109, 'New Delhi', 'IND', 'Delhi', 301297);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1110, 'Jhansi', 'IND', 'Uttar Pradesh', 300850);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1111, 'Gaya', 'IND', 'Bihar', 291675);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1112, 'Kakinada', 'IND', 'Andhra Pradesh', 279980);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1113, 'Dhule (Dhulia)', 'IND', 'Maharashtra', 278317);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1114, 'Panihati', 'IND', 'West Bengali', 275990);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1115, 'Nanded (Nander)', 'IND', 'Maharashtra', 275083);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1116, 'Mangalore', 'IND', 'Karnataka', 273304);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1117, 'Dehra Dun', 'IND', 'Uttaranchal', 270159);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1118, 'Kamarhati', 'IND', 'West Bengali', 266889);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1119, 'Davangere', 'IND', 'Karnataka', 266082);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1120, 'Asansol', 'IND', 'West Bengali', 262188);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1121, 'Bhagalpur', 'IND', 'Bihar', 253225);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1122, 'Bellary', 'IND', 'Karnataka', 245391);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1123, 'Barddhaman (Burdwan)', 'IND', 'West Bengali', 245079);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1124, 'Rampur', 'IND', 'Uttar Pradesh', 243742);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1125, 'Jalgaon', 'IND', 'Maharashtra', 242193);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1126, 'Muzaffarpur', 'IND', 'Bihar', 241107);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1127, 'Nizamabad', 'IND', 'Andhra Pradesh', 241034);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1128, 'Muzaffarnagar', 'IND', 'Uttar Pradesh', 240609);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1129, 'Patiala', 'IND', 'Punjab', 238368);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1130, 'Shahjahanpur', 'IND', 'Uttar Pradesh', 237713);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1131, 'Kurnool', 'IND', 'Andhra Pradesh', 236800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1132, 'Tiruppur (Tirupper)', 'IND', 'Tamil Nadu', 235661);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1133, 'Rohtak', 'IND', 'Haryana', 233400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1134, 'South Dum Dum', 'IND', 'West Bengali', 232811);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1135, 'Mathura', 'IND', 'Uttar Pradesh', 226691);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1136, 'Chandrapur', 'IND', 'Maharashtra', 226105);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1137, 'Barahanagar (Baranagar)', 'IND', 'West Bengali', 224821);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1138, 'Darbhanga', 'IND', 'Bihar', 218391);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1139, 'Siliguri (Shiliguri)', 'IND', 'West Bengali', 216950);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1140, 'Raurkela', 'IND', 'Orissa', 215489);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1141, 'Ambattur', 'IND', 'Tamil Nadu', 215424);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1142, 'Panipat', 'IND', 'Haryana', 215218);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1143, 'Firozabad', 'IND', 'Uttar Pradesh', 215128);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1144, 'Ichalkaranji', 'IND', 'Maharashtra', 214950);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1145, 'Jammu', 'IND', 'Jammu and Kashmir', 214737);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1146, 'Ramagundam', 'IND', 'Andhra Pradesh', 214384);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1147, 'Eluru', 'IND', 'Andhra Pradesh', 212866);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1148, 'Brahmapur', 'IND', 'Orissa', 210418);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1149, 'Alwar', 'IND', 'Rajasthan', 205086);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1150, 'Pondicherry', 'IND', 'Pondicherry', 203065);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1151, 'Thanjavur', 'IND', 'Tamil Nadu', 202013);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1152, 'Bihar Sharif', 'IND', 'Bihar', 201323);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1153, 'Tuticorin', 'IND', 'Tamil Nadu', 199854);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1154, 'Imphal', 'IND', 'Manipur', 198535);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1155, 'Latur', 'IND', 'Maharashtra', 197408);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1156, 'Sagar', 'IND', 'Madhya Pradesh', 195346);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1157, 'Farrukhabad-cum-Fatehgarh', 'IND', 'Uttar Pradesh', 194567);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1158, 'Sangli', 'IND', 'Maharashtra', 193197);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1159, 'Parbhani', 'IND', 'Maharashtra', 190255);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1160, 'Nagar Coil', 'IND', 'Tamil Nadu', 190084);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1161, 'Bijapur', 'IND', 'Karnataka', 186939);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1162, 'Kukatpalle', 'IND', 'Andhra Pradesh', 185378);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1163, 'Bally', 'IND', 'West Bengali', 184474);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1164, 'Bhilwara', 'IND', 'Rajasthan', 183965);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1165, 'Ratlam', 'IND', 'Madhya Pradesh', 183375);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1166, 'Avadi', 'IND', 'Tamil Nadu', 183215);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1167, 'Dindigul', 'IND', 'Tamil Nadu', 182477);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1168, 'Ahmadnagar', 'IND', 'Maharashtra', 181339);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1169, 'Bilaspur', 'IND', 'Chhatisgarh', 179833);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1170, 'Shimoga', 'IND', 'Karnataka', 179258);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1171, 'Kharagpur', 'IND', 'West Bengali', 177989);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1172, 'Mira Bhayandar', 'IND', 'Maharashtra', 175372);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1173, 'Vellore', 'IND', 'Tamil Nadu', 175061);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1174, 'Jalna', 'IND', 'Maharashtra', 174985);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1175, 'Burnpur', 'IND', 'West Bengali', 174933);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1176, 'Anantapur', 'IND', 'Andhra Pradesh', 174924);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1177, 'Allappuzha (Alleppey)', 'IND', 'Kerala', 174666);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1178, 'Tirupati', 'IND', 'Andhra Pradesh', 174369);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1179, 'Karnal', 'IND', 'Haryana', 173751);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1180, 'Burhanpur', 'IND', 'Madhya Pradesh', 172710);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1181, 'Hisar (Hissar)', 'IND', 'Haryana', 172677);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1182, 'Tiruvottiyur', 'IND', 'Tamil Nadu', 172562);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1183, 'Mirzapur-cum-Vindhyachal', 'IND', 'Uttar Pradesh', 169336);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1184, 'Secunderabad', 'IND', 'Andhra Pradesh', 167461);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1185, 'Nadiad', 'IND', 'Gujarat', 167051);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1186, 'Dewas', 'IND', 'Madhya Pradesh', 164364);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1187, 'Murwara (Katni)', 'IND', 'Madhya Pradesh', 163431);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1188, 'Ganganagar', 'IND', 'Rajasthan', 161482);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1189, 'Vizianagaram', 'IND', 'Andhra Pradesh', 160359);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1190, 'Erode', 'IND', 'Tamil Nadu', 159232);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1191, 'Machilipatnam (Masulipatam)', 'IND', 'Andhra Pradesh', 159110);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1192, 'Bhatinda (Bathinda)', 'IND', 'Punjab', 159042);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1193, 'Raichur', 'IND', 'Karnataka', 157551);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1194, 'Agartala', 'IND', 'Tripura', 157358);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1195, 'Arrah (Ara)', 'IND', 'Bihar', 157082);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1196, 'Satna', 'IND', 'Madhya Pradesh', 156630);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1197, 'Lalbahadur Nagar', 'IND', 'Andhra Pradesh', 155500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1198, 'Aizawl', 'IND', 'Mizoram', 155240);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1199, 'Uluberia', 'IND', 'West Bengali', 155172);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1200, 'Katihar', 'IND', 'Bihar', 154367);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1201, 'Cuddalore', 'IND', 'Tamil Nadu', 153086);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1202, 'Hugli-Chinsurah', 'IND', 'West Bengali', 151806);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1203, 'Dhanbad', 'IND', 'Jharkhand', 151789);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1204, 'Raiganj', 'IND', 'West Bengali', 151045);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1205, 'Sambhal', 'IND', 'Uttar Pradesh', 150869);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1206, 'Durg', 'IND', 'Chhatisgarh', 150645);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1207, 'Munger (Monghyr)', 'IND', 'Bihar', 150112);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1208, 'Kanchipuram', 'IND', 'Tamil Nadu', 150100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1209, 'North Dum Dum', 'IND', 'West Bengali', 149965);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1210, 'Karimnagar', 'IND', 'Andhra Pradesh', 148583);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1211, 'Bharatpur', 'IND', 'Rajasthan', 148519);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1212, 'Sikar', 'IND', 'Rajasthan', 148272);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1213, 'Hardwar (Haridwar)', 'IND', 'Uttaranchal', 147305);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1214, 'Dabgram', 'IND', 'West Bengali', 147217);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1215, 'Morena', 'IND', 'Madhya Pradesh', 147124);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1216, 'Noida', 'IND', 'Uttar Pradesh', 146514);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1217, 'Hapur', 'IND', 'Uttar Pradesh', 146262);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1218, 'Bhusawal', 'IND', 'Maharashtra', 145143);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1219, 'Khandwa', 'IND', 'Madhya Pradesh', 145133);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1220, 'Yamuna Nagar', 'IND', 'Haryana', 144346);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1221, 'Sonipat (Sonepat)', 'IND', 'Haryana', 143922);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1222, 'Tenali', 'IND', 'Andhra Pradesh', 143726);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1223, 'Raurkela Civil Township', 'IND', 'Orissa', 140408);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1224, 'Kollam (Quilon)', 'IND', 'Kerala', 139852);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1225, 'Kumbakonam', 'IND', 'Tamil Nadu', 139483);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1226, 'Ingraj Bazar (English Bazar)', 'IND', 'West Bengali', 139204);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1227, 'Timkur', 'IND', 'Karnataka', 138903);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1228, 'Amroha', 'IND', 'Uttar Pradesh', 137061);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1229, 'Serampore', 'IND', 'West Bengali', 137028);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1230, 'Chapra', 'IND', 'Bihar', 136877);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1231, 'Pali', 'IND', 'Rajasthan', 136842);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1232, 'Maunath Bhanjan', 'IND', 'Uttar Pradesh', 136697);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1233, 'Adoni', 'IND', 'Andhra Pradesh', 136182);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1234, 'Jaunpur', 'IND', 'Uttar Pradesh', 136062);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1235, 'Tirunelveli', 'IND', 'Tamil Nadu', 135825);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1236, 'Bahraich', 'IND', 'Uttar Pradesh', 135400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1237, 'Gadag Betigeri', 'IND', 'Karnataka', 134051);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1238, 'Proddatur', 'IND', 'Andhra Pradesh', 133914);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1239, 'Chittoor', 'IND', 'Andhra Pradesh', 133462);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1240, 'Barrackpur', 'IND', 'West Bengali', 133265);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1241, 'Bharuch (Broach)', 'IND', 'Gujarat', 133102);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1242, 'Naihati', 'IND', 'West Bengali', 132701);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1243, 'Shillong', 'IND', 'Meghalaya', 131719);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1244, 'Sambalpur', 'IND', 'Orissa', 131138);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1245, 'Junagadh', 'IND', 'Gujarat', 130484);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1246, 'Rae Bareli', 'IND', 'Uttar Pradesh', 129904);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1247, 'Rewa', 'IND', 'Madhya Pradesh', 128981);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1248, 'Gurgaon', 'IND', 'Haryana', 128608);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1249, 'Khammam', 'IND', 'Andhra Pradesh', 127992);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1250, 'Bulandshahr', 'IND', 'Uttar Pradesh', 127201);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1251, 'Navsari', 'IND', 'Gujarat', 126089);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1252, 'Malkajgiri', 'IND', 'Andhra Pradesh', 126066);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1253, 'Midnapore (Medinipur)', 'IND', 'West Bengali', 125498);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1254, 'Miraj', 'IND', 'Maharashtra', 125407);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1255, 'Raj Nandgaon', 'IND', 'Chhatisgarh', 125371);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1256, 'Alandur', 'IND', 'Tamil Nadu', 125244);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1257, 'Puri', 'IND', 'Orissa', 125199);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1258, 'Navadwip', 'IND', 'West Bengali', 125037);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1259, 'Sirsa', 'IND', 'Haryana', 125000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1260, 'Korba', 'IND', 'Chhatisgarh', 124501);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1261, 'Faizabad', 'IND', 'Uttar Pradesh', 124437);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1262, 'Etawah', 'IND', 'Uttar Pradesh', 124072);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1263, 'Pathankot', 'IND', 'Punjab', 123930);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1264, 'Gandhinagar', 'IND', 'Gujarat', 123359);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1265, 'Palghat (Palakkad)', 'IND', 'Kerala', 123289);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1266, 'Veraval', 'IND', 'Gujarat', 123000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1267, 'Hoshiarpur', 'IND', 'Punjab', 122705);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1268, 'Ambala', 'IND', 'Haryana', 122596);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1269, 'Sitapur', 'IND', 'Uttar Pradesh', 121842);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1270, 'Bhiwani', 'IND', 'Haryana', 121629);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1271, 'Cuddapah', 'IND', 'Andhra Pradesh', 121463);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1272, 'Bhimavaram', 'IND', 'Andhra Pradesh', 121314);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1273, 'Krishnanagar', 'IND', 'West Bengali', 121110);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1274, 'Chandannagar', 'IND', 'West Bengali', 120378);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1275, 'Mandya', 'IND', 'Karnataka', 120265);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1276, 'Dibrugarh', 'IND', 'Assam', 120127);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1277, 'Nandyal', 'IND', 'Andhra Pradesh', 119813);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1278, 'Balurghat', 'IND', 'West Bengali', 119796);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1279, 'Neyveli', 'IND', 'Tamil Nadu', 118080);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1280, 'Fatehpur', 'IND', 'Uttar Pradesh', 117675);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1281, 'Mahbubnagar', 'IND', 'Andhra Pradesh', 116833);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1282, 'Budaun', 'IND', 'Uttar Pradesh', 116695);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1283, 'Porbandar', 'IND', 'Gujarat', 116671);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1284, 'Silchar', 'IND', 'Assam', 115483);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1285, 'Berhampore (Baharampur)', 'IND', 'West Bengali', 115144);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1286, 'Purnea (Purnia)', 'IND', 'Jharkhand', 114912);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1287, 'Bankura', 'IND', 'West Bengali', 114876);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1288, 'Rajapalaiyam', 'IND', 'Tamil Nadu', 114202);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1289, 'Titagarh', 'IND', 'West Bengali', 114085);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1290, 'Halisahar', 'IND', 'West Bengali', 114028);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1291, 'Hathras', 'IND', 'Uttar Pradesh', 113285);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1292, 'Bhir (Bid)', 'IND', 'Maharashtra', 112434);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1293, 'Pallavaram', 'IND', 'Tamil Nadu', 111866);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1294, 'Anand', 'IND', 'Gujarat', 110266);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1295, 'Mango', 'IND', 'Jharkhand', 110024);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1296, 'Santipur', 'IND', 'West Bengali', 109956);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1297, 'Bhind', 'IND', 'Madhya Pradesh', 109755);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1298, 'Gondiya', 'IND', 'Maharashtra', 109470);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1299, 'Tiruvannamalai', 'IND', 'Tamil Nadu', 109196);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1300, 'Yeotmal (Yavatmal)', 'IND', 'Maharashtra', 108578);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1301, 'Kulti-Barakar', 'IND', 'West Bengali', 108518);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1302, 'Moga', 'IND', 'Punjab', 108304);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1303, 'Shivapuri', 'IND', 'Madhya Pradesh', 108277);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1304, 'Bidar', 'IND', 'Karnataka', 108016);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1305, 'Guntakal', 'IND', 'Andhra Pradesh', 107592);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1306, 'Unnao', 'IND', 'Uttar Pradesh', 107425);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1307, 'Barasat', 'IND', 'West Bengali', 107365);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1308, 'Tambaram', 'IND', 'Tamil Nadu', 107187);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1309, 'Abohar', 'IND', 'Punjab', 107163);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1310, 'Pilibhit', 'IND', 'Uttar Pradesh', 106605);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1311, 'Valparai', 'IND', 'Tamil Nadu', 106523);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1312, 'Gonda', 'IND', 'Uttar Pradesh', 106078);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1313, 'Surendranagar', 'IND', 'Gujarat', 105973);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1314, 'Qutubullapur', 'IND', 'Andhra Pradesh', 105380);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1315, 'Beawar', 'IND', 'Rajasthan', 105363);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1316, 'Hindupur', 'IND', 'Andhra Pradesh', 104651);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1317, 'Gandhidham', 'IND', 'Gujarat', 104585);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1318, 'Haldwani-cum-Kathgodam', 'IND', 'Uttaranchal', 104195);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1319, 'Tellicherry (Thalassery)', 'IND', 'Kerala', 103579);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1320, 'Wardha', 'IND', 'Maharashtra', 102985);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1321, 'Rishra', 'IND', 'West Bengali', 102649);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1322, 'Bhuj', 'IND', 'Gujarat', 102176);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1323, 'Modinagar', 'IND', 'Uttar Pradesh', 101660);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1324, 'Gudivada', 'IND', 'Andhra Pradesh', 101656);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1325, 'Basirhat', 'IND', 'West Bengali', 101409);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1326, 'Uttarpara-Kotrung', 'IND', 'West Bengali', 100867);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1327, 'Ongole', 'IND', 'Andhra Pradesh', 100836);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1328, 'North Barrackpur', 'IND', 'West Bengali', 100513);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1329, 'Guna', 'IND', 'Madhya Pradesh', 100490);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1330, 'Haldia', 'IND', 'West Bengali', 100347);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1331, 'Habra', 'IND', 'West Bengali', 100223);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1332, 'Kanchrapara', 'IND', 'West Bengali', 100194);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1333, 'Tonk', 'IND', 'Rajasthan', 100079);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1334, 'Champdani', 'IND', 'West Bengali', 98818);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1335, 'Orai', 'IND', 'Uttar Pradesh', 98640);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1336, 'Pudukkottai', 'IND', 'Tamil Nadu', 98619);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1337, 'Sasaram', 'IND', 'Bihar', 98220);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1338, 'Hazaribag', 'IND', 'Jharkhand', 97712);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1339, 'Palayankottai', 'IND', 'Tamil Nadu', 97662);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1340, 'Banda', 'IND', 'Uttar Pradesh', 97227);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1341, 'Godhra', 'IND', 'Gujarat', 96813);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1342, 'Hospet', 'IND', 'Karnataka', 96322);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1343, 'Ashoknagar-Kalyangarh', 'IND', 'West Bengali', 96315);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1344, 'Achalpur', 'IND', 'Maharashtra', 96216);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1345, 'Patan', 'IND', 'Gujarat', 96109);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1346, 'Mandasor', 'IND', 'Madhya Pradesh', 95758);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1347, 'Damoh', 'IND', 'Madhya Pradesh', 95661);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1348, 'Satara', 'IND', 'Maharashtra', 95133);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1349, 'Meerut Cantonment', 'IND', 'Uttar Pradesh', 94876);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1350, 'Dehri', 'IND', 'Bihar', 94526);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1351, 'Delhi Cantonment', 'IND', 'Delhi', 94326);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1352, 'Chhindwara', 'IND', 'Madhya Pradesh', 93731);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1353, 'Bansberia', 'IND', 'West Bengali', 93447);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1354, 'Nagaon', 'IND', 'Assam', 93350);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1355, 'Kanpur Cantonment', 'IND', 'Uttar Pradesh', 93109);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1356, 'Vidisha', 'IND', 'Madhya Pradesh', 92917);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1357, 'Bettiah', 'IND', 'Bihar', 92583);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1358, 'Purulia', 'IND', 'Jharkhand', 92574);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1359, 'Hassan', 'IND', 'Karnataka', 90803);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1360, 'Ambala Sadar', 'IND', 'Haryana', 90712);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1361, 'Baidyabati', 'IND', 'West Bengali', 90601);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1362, 'Morvi', 'IND', 'Gujarat', 90357);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1363, 'Raigarh', 'IND', 'Chhatisgarh', 89166);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1364, 'Vejalpur', 'IND', 'Gujarat', 89053);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1365, 'Baghdad', 'IRQ', 'Baghdad', 4336000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1366, 'Mosul', 'IRQ', 'Ninawa', 879000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1367, 'Irbil', 'IRQ', 'Irbil', 485968);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1368, 'Kirkuk', 'IRQ', 'al-Tamim', 418624);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1369, 'Basra', 'IRQ', 'Basra', 406296);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1370, 'al-Sulaymaniya', 'IRQ', 'al-Sulaymaniya', 364096);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1371, 'al-Najaf', 'IRQ', 'al-Najaf', 309010);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1372, 'Karbala', 'IRQ', 'Karbala', 296705);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1373, 'al-Hilla', 'IRQ', 'Babil', 268834);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1374, 'al-Nasiriya', 'IRQ', 'DhiQar', 265937);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1375, 'al-Amara', 'IRQ', 'Maysan', 208797);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1376, 'al-Diwaniya', 'IRQ', 'al-Qadisiya', 196519);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1377, 'al-Ramadi', 'IRQ', 'al-Anbar', 192556);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1378, 'al-Kut', 'IRQ', 'Wasit', 183183);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1379, 'Baquba', 'IRQ', 'Diyala', 114516);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1380, 'Teheran', 'IRN', 'Teheran', 6758845);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1381, 'Mashhad', 'IRN', 'Khorasan', 1887405);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1382, 'Esfahan', 'IRN', 'Esfahan', 1266072);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1383, 'Tabriz', 'IRN', 'East Azerbaidzan', 1191043);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1384, 'Shiraz', 'IRN', 'Fars', 1053025);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1385, 'Karaj', 'IRN', 'Teheran', 940968);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1386, 'Ahvaz', 'IRN', 'Khuzestan', 804980);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1387, 'Qom', 'IRN', 'Qom', 777677);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1388, 'Kermanshah', 'IRN', 'Kermanshah', 692986);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1389, 'Urmia', 'IRN', 'West Azerbaidzan', 435200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1390, 'Zahedan', 'IRN', 'Sistan va Baluchesta', 419518);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1391, 'Rasht', 'IRN', 'Gilan', 417748);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1392, 'Hamadan', 'IRN', 'Hamadan', 401281);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1393, 'Kerman', 'IRN', 'Kerman', 384991);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1394, 'Arak', 'IRN', 'Markazi', 380755);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1395, 'Ardebil', 'IRN', 'Ardebil', 340386);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1396, 'Yazd', 'IRN', 'Yazd', 326776);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1397, 'Qazvin', 'IRN', 'Qazvin', 291117);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1398, 'Zanjan', 'IRN', 'Zanjan', 286295);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1399, 'Sanandaj', 'IRN', 'Kordestan', 277808);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1400, 'Bandar-e-Abbas', 'IRN', 'Hormozgan', 273578);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1401, 'Khorramabad', 'IRN', 'Lorestan', 272815);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1402, 'Eslamshahr', 'IRN', 'Teheran', 265450);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1403, 'Borujerd', 'IRN', 'Lorestan', 217804);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1404, 'Abadan', 'IRN', 'Khuzestan', 206073);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1405, 'Dezful', 'IRN', 'Khuzestan', 202639);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1406, 'Kashan', 'IRN', 'Esfahan', 201372);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1407, 'Sari', 'IRN', 'Mazandaran', 195882);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1408, 'Gorgan', 'IRN', 'Golestan', 188710);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1409, 'Najafabad', 'IRN', 'Esfahan', 178498);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1410, 'Sabzevar', 'IRN', 'Khorasan', 170738);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1411, 'Khomeynishahr', 'IRN', 'Esfahan', 165888);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1412, 'Amol', 'IRN', 'Mazandaran', 159092);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1413, 'Neyshabur', 'IRN', 'Khorasan', 158847);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1414, 'Babol', 'IRN', 'Mazandaran', 158346);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1415, 'Khoy', 'IRN', 'West Azerbaidzan', 148944);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1416, 'Malayer', 'IRN', 'Hamadan', 144373);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1417, 'Bushehr', 'IRN', 'Bushehr', 143641);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1418, 'Qaemshahr', 'IRN', 'Mazandaran', 143286);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1419, 'Qarchak', 'IRN', 'Teheran', 142690);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1420, 'Qods', 'IRN', 'Teheran', 138278);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1421, 'Sirjan', 'IRN', 'Kerman', 135024);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1422, 'Bojnurd', 'IRN', 'Khorasan', 134835);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1423, 'Maragheh', 'IRN', 'East Azerbaidzan', 132318);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1424, 'Birjand', 'IRN', 'Khorasan', 127608);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1425, 'Ilam', 'IRN', 'Ilam', 126346);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1426, 'Bukan', 'IRN', 'West Azerbaidzan', 120020);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1427, 'Masjed-e-Soleyman', 'IRN', 'Khuzestan', 116883);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1428, 'Saqqez', 'IRN', 'Kordestan', 115394);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1429, 'Gonbad-e Qabus', 'IRN', 'Mazandaran', 111253);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1430, 'Saveh', 'IRN', 'Qom', 111245);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1431, 'Mahabad', 'IRN', 'West Azerbaidzan', 107799);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1432, 'Varamin', 'IRN', 'Teheran', 107233);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1433, 'Andimeshk', 'IRN', 'Khuzestan', 106923);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1434, 'Khorramshahr', 'IRN', 'Khuzestan', 105636);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1435, 'Shahrud', 'IRN', 'Semnan', 104765);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1436, 'Marv Dasht', 'IRN', 'Fars', 103579);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1437, 'Zabol', 'IRN', 'Sistan va Baluchesta', 100887);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1438, 'Shahr-e Kord', 'IRN', 'Chaharmahal va Bakht', 100477);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1439, 'Bandar-e Anzali', 'IRN', 'Gilan', 98500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1440, 'Rafsanjan', 'IRN', 'Kerman', 98300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1441, 'Marand', 'IRN', 'East Azerbaidzan', 96400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1442, 'Torbat-e Heydariyeh', 'IRN', 'Khorasan', 94600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1443, 'Jahrom', 'IRN', 'Fars', 94200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1444, 'Semnan', 'IRN', 'Semnan', 91045);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1445, 'Miandoab', 'IRN', 'West Azerbaidzan', 90100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1446, 'Qomsheh', 'IRN', 'Esfahan', 89800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1447, 'Dublin', 'IRL', 'Leinster', 481854);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1448, 'Cork', 'IRL', 'Munster', 127187);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1449, 'ReykjavÃ­k', 'ISL', 'HÃ¶fuÃ°borgarsvÃ¦Ã°i', 109184);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1450, 'Jerusalem', 'ISR', 'Jerusalem', 633700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1451, 'Tel Aviv-Jaffa', 'ISR', 'Tel Aviv', 348100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1452, 'Haifa', 'ISR', 'Haifa', 265700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1453, 'Rishon Le Ziyyon', 'ISR', 'Ha Merkaz', 188200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1454, 'Beerseba', 'ISR', 'Ha Darom', 163700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1455, 'Holon', 'ISR', 'Tel Aviv', 163100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1456, 'Petah Tiqwa', 'ISR', 'Ha Merkaz', 159400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1457, 'Ashdod', 'ISR', 'Ha Darom', 155800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1458, 'Netanya', 'ISR', 'Ha Merkaz', 154900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1459, 'Bat Yam', 'ISR', 'Tel Aviv', 137000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1460, 'Bene Beraq', 'ISR', 'Tel Aviv', 133900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1461, 'Ramat Gan', 'ISR', 'Tel Aviv', 126900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1462, 'Ashqelon', 'ISR', 'Ha Darom', 92300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1463, 'Rehovot', 'ISR', 'Ha Merkaz', 90300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1464, 'Roma', 'ITA', 'Latium', 2643581);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1465, 'Milano', 'ITA', 'Lombardia', 1300977);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1466, 'Napoli', 'ITA', 'Campania', 1002619);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1467, 'Torino', 'ITA', 'Piemonte', 903705);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1468, 'Palermo', 'ITA', 'Sisilia', 683794);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1469, 'Genova', 'ITA', 'Liguria', 636104);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1470, 'Bologna', 'ITA', 'Emilia-Romagna', 381161);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1471, 'Firenze', 'ITA', 'Toscana', 376662);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1472, 'Catania', 'ITA', 'Sisilia', 337862);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1473, 'Bari', 'ITA', 'Apulia', 331848);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1474, 'Venezia', 'ITA', 'Veneto', 277305);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1475, 'Messina', 'ITA', 'Sisilia', 259156);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1476, 'Verona', 'ITA', 'Veneto', 255268);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1477, 'Trieste', 'ITA', 'Friuli-Venezia Giuli', 216459);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1478, 'Padova', 'ITA', 'Veneto', 211391);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1479, 'Taranto', 'ITA', 'Apulia', 208214);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1480, 'Brescia', 'ITA', 'Lombardia', 191317);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1481, 'Reggio di Calabria', 'ITA', 'Calabria', 179617);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1482, 'Modena', 'ITA', 'Emilia-Romagna', 176022);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1483, 'Prato', 'ITA', 'Toscana', 172473);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1484, 'Parma', 'ITA', 'Emilia-Romagna', 168717);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1485, 'Cagliari', 'ITA', 'Sardinia', 165926);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1486, 'Livorno', 'ITA', 'Toscana', 161673);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1487, 'Perugia', 'ITA', 'Umbria', 156673);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1488, 'Foggia', 'ITA', 'Apulia', 154891);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1489, 'Reggio nellÂ´ Emilia', 'ITA', 'Emilia-Romagna', 143664);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1490, 'Salerno', 'ITA', 'Campania', 142055);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1491, 'Ravenna', 'ITA', 'Emilia-Romagna', 138418);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1492, 'Ferrara', 'ITA', 'Emilia-Romagna', 132127);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1493, 'Rimini', 'ITA', 'Emilia-Romagna', 131062);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1494, 'Syrakusa', 'ITA', 'Sisilia', 126282);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1495, 'Sassari', 'ITA', 'Sardinia', 120803);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1496, 'Monza', 'ITA', 'Lombardia', 119516);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1497, 'Bergamo', 'ITA', 'Lombardia', 117837);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1498, 'Pescara', 'ITA', 'Abruzzit', 115698);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1499, 'Latina', 'ITA', 'Latium', 114099);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1500, 'Vicenza', 'ITA', 'Veneto', 109738);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1501, 'Terni', 'ITA', 'Umbria', 107770);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1502, 'ForlÃ¬', 'ITA', 'Emilia-Romagna', 107475);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1503, 'Trento', 'ITA', 'Trentino-Alto Adige', 104906);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1504, 'Novara', 'ITA', 'Piemonte', 102037);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1505, 'Piacenza', 'ITA', 'Emilia-Romagna', 98384);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1506, 'Ancona', 'ITA', 'Marche', 98329);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1507, 'Lecce', 'ITA', 'Apulia', 98208);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1508, 'Bolzano', 'ITA', 'Trentino-Alto Adige', 97232);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1509, 'Catanzaro', 'ITA', 'Calabria', 96700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1510, 'La Spezia', 'ITA', 'Liguria', 95504);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1511, 'Udine', 'ITA', 'Friuli-Venezia Giuli', 94932);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1512, 'Torre del Greco', 'ITA', 'Campania', 94505);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1513, 'Andria', 'ITA', 'Apulia', 94443);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1514, 'Brindisi', 'ITA', 'Apulia', 93454);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1515, 'Giugliano in Campania', 'ITA', 'Campania', 93286);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1516, 'Pisa', 'ITA', 'Toscana', 92379);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1517, 'Barletta', 'ITA', 'Apulia', 91904);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1518, 'Arezzo', 'ITA', 'Toscana', 91729);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1519, 'Alessandria', 'ITA', 'Piemonte', 90289);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1520, 'Cesena', 'ITA', 'Emilia-Romagna', 89852);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1521, 'Pesaro', 'ITA', 'Marche', 88987);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1522, 'Dili', 'TMP', 'Dili', 47900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1523, 'Wien', 'AUT', 'Wien', 1608144);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1524, 'Graz', 'AUT', 'Steiermark', 240967);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1525, 'Linz', 'AUT', 'North Austria', 188022);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1526, 'Salzburg', 'AUT', 'Salzburg', 144247);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1527, 'Innsbruck', 'AUT', 'Tiroli', 111752);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1528, 'Klagenfurt', 'AUT', 'KÃ¤rnten', 91141);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1529, 'Spanish Town', 'JAM', 'St. Catherine', 110379);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1530, 'Kingston', 'JAM', 'St. Andrew', 103962);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1531, 'Portmore', 'JAM', 'St. Andrew', 99799);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1532, 'Tokyo', 'JPN', 'Tokyo-to', 7980230);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1533, 'Jokohama [Yokohama]', 'JPN', 'Kanagawa', 3339594);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1534, 'Osaka', 'JPN', 'Osaka', 2595674);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1535, 'Nagoya', 'JPN', 'Aichi', 2154376);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1536, 'Sapporo', 'JPN', 'Hokkaido', 1790886);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1537, 'Kioto', 'JPN', 'Kyoto', 1461974);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1538, 'Kobe', 'JPN', 'Hyogo', 1425139);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1539, 'Fukuoka', 'JPN', 'Fukuoka', 1308379);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1540, 'Kawasaki', 'JPN', 'Kanagawa', 1217359);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1541, 'Hiroshima', 'JPN', 'Hiroshima', 1119117);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1542, 'Kitakyushu', 'JPN', 'Fukuoka', 1016264);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1543, 'Sendai', 'JPN', 'Miyagi', 989975);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1544, 'Chiba', 'JPN', 'Chiba', 863930);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1545, 'Sakai', 'JPN', 'Osaka', 797735);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1546, 'Kumamoto', 'JPN', 'Kumamoto', 656734);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1547, 'Okayama', 'JPN', 'Okayama', 624269);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1548, 'Sagamihara', 'JPN', 'Kanagawa', 586300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1549, 'Hamamatsu', 'JPN', 'Shizuoka', 568796);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1550, 'Kagoshima', 'JPN', 'Kagoshima', 549977);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1551, 'Funabashi', 'JPN', 'Chiba', 545299);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1552, 'Higashiosaka', 'JPN', 'Osaka', 517785);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1553, 'Hachioji', 'JPN', 'Tokyo-to', 513451);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1554, 'Niigata', 'JPN', 'Niigata', 497464);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1555, 'Amagasaki', 'JPN', 'Hyogo', 481434);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1556, 'Himeji', 'JPN', 'Hyogo', 475167);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1557, 'Shizuoka', 'JPN', 'Shizuoka', 473854);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1558, 'Urawa', 'JPN', 'Saitama', 469675);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1559, 'Matsuyama', 'JPN', 'Ehime', 466133);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1560, 'Matsudo', 'JPN', 'Chiba', 461126);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1561, 'Kanazawa', 'JPN', 'Ishikawa', 455386);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1562, 'Kawaguchi', 'JPN', 'Saitama', 452155);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1563, 'Ichikawa', 'JPN', 'Chiba', 441893);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1564, 'Omiya', 'JPN', 'Saitama', 441649);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1565, 'Utsunomiya', 'JPN', 'Tochigi', 440353);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1566, 'Oita', 'JPN', 'Oita', 433401);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1567, 'Nagasaki', 'JPN', 'Nagasaki', 432759);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1568, 'Yokosuka', 'JPN', 'Kanagawa', 430200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1569, 'Kurashiki', 'JPN', 'Okayama', 425103);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1570, 'Gifu', 'JPN', 'Gifu', 408007);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1571, 'Hirakata', 'JPN', 'Osaka', 403151);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1572, 'Nishinomiya', 'JPN', 'Hyogo', 397618);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1573, 'Toyonaka', 'JPN', 'Osaka', 396689);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1574, 'Wakayama', 'JPN', 'Wakayama', 391233);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1575, 'Fukuyama', 'JPN', 'Hiroshima', 376921);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1576, 'Fujisawa', 'JPN', 'Kanagawa', 372840);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1577, 'Asahikawa', 'JPN', 'Hokkaido', 364813);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1578, 'Machida', 'JPN', 'Tokyo-to', 364197);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1579, 'Nara', 'JPN', 'Nara', 362812);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1580, 'Takatsuki', 'JPN', 'Osaka', 361747);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1581, 'Iwaki', 'JPN', 'Fukushima', 361737);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1582, 'Nagano', 'JPN', 'Nagano', 361391);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1583, 'Toyohashi', 'JPN', 'Aichi', 360066);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1584, 'Toyota', 'JPN', 'Aichi', 346090);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1585, 'Suita', 'JPN', 'Osaka', 345750);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1586, 'Takamatsu', 'JPN', 'Kagawa', 332471);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1587, 'Koriyama', 'JPN', 'Fukushima', 330335);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1588, 'Okazaki', 'JPN', 'Aichi', 328711);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1589, 'Kawagoe', 'JPN', 'Saitama', 327211);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1590, 'Tokorozawa', 'JPN', 'Saitama', 325809);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1591, 'Toyama', 'JPN', 'Toyama', 325790);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1592, 'Kochi', 'JPN', 'Kochi', 324710);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1593, 'Kashiwa', 'JPN', 'Chiba', 320296);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1594, 'Akita', 'JPN', 'Akita', 314440);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1595, 'Miyazaki', 'JPN', 'Miyazaki', 303784);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1596, 'Koshigaya', 'JPN', 'Saitama', 301446);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1597, 'Naha', 'JPN', 'Okinawa', 299851);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1598, 'Aomori', 'JPN', 'Aomori', 295969);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1599, 'Hakodate', 'JPN', 'Hokkaido', 294788);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1600, 'Akashi', 'JPN', 'Hyogo', 292253);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1601, 'Yokkaichi', 'JPN', 'Mie', 288173);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1602, 'Fukushima', 'JPN', 'Fukushima', 287525);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1603, 'Morioka', 'JPN', 'Iwate', 287353);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1604, 'Maebashi', 'JPN', 'Gumma', 284473);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1605, 'Kasugai', 'JPN', 'Aichi', 282348);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1606, 'Otsu', 'JPN', 'Shiga', 282070);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1607, 'Ichihara', 'JPN', 'Chiba', 279280);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1608, 'Yao', 'JPN', 'Osaka', 276421);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1609, 'Ichinomiya', 'JPN', 'Aichi', 270828);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1610, 'Tokushima', 'JPN', 'Tokushima', 269649);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1611, 'Kakogawa', 'JPN', 'Hyogo', 266281);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1612, 'Ibaraki', 'JPN', 'Osaka', 261020);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1613, 'Neyagawa', 'JPN', 'Osaka', 257315);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1614, 'Shimonoseki', 'JPN', 'Yamaguchi', 257263);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1615, 'Yamagata', 'JPN', 'Yamagata', 255617);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1616, 'Fukui', 'JPN', 'Fukui', 254818);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1617, 'Hiratsuka', 'JPN', 'Kanagawa', 254207);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1618, 'Mito', 'JPN', 'Ibaragi', 246559);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1619, 'Sasebo', 'JPN', 'Nagasaki', 244240);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1620, 'Hachinohe', 'JPN', 'Aomori', 242979);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1621, 'Takasaki', 'JPN', 'Gumma', 239124);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1622, 'Shimizu', 'JPN', 'Shizuoka', 239123);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1623, 'Kurume', 'JPN', 'Fukuoka', 235611);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1624, 'Fuji', 'JPN', 'Shizuoka', 231527);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1625, 'Soka', 'JPN', 'Saitama', 222768);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1626, 'Fuchu', 'JPN', 'Tokyo-to', 220576);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1627, 'Chigasaki', 'JPN', 'Kanagawa', 216015);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1628, 'Atsugi', 'JPN', 'Kanagawa', 212407);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1629, 'Numazu', 'JPN', 'Shizuoka', 211382);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1630, 'Ageo', 'JPN', 'Saitama', 209442);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1631, 'Yamato', 'JPN', 'Kanagawa', 208234);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1632, 'Matsumoto', 'JPN', 'Nagano', 206801);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1633, 'Kure', 'JPN', 'Hiroshima', 206504);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1634, 'Takarazuka', 'JPN', 'Hyogo', 205993);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1635, 'Kasukabe', 'JPN', 'Saitama', 201838);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1636, 'Chofu', 'JPN', 'Tokyo-to', 201585);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1637, 'Odawara', 'JPN', 'Kanagawa', 200171);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1638, 'Kofu', 'JPN', 'Yamanashi', 199753);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1639, 'Kushiro', 'JPN', 'Hokkaido', 197608);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1640, 'Kishiwada', 'JPN', 'Osaka', 197276);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1641, 'Hitachi', 'JPN', 'Ibaragi', 196622);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1642, 'Nagaoka', 'JPN', 'Niigata', 192407);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1643, 'Itami', 'JPN', 'Hyogo', 190886);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1644, 'Uji', 'JPN', 'Kyoto', 188735);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1645, 'Suzuka', 'JPN', 'Mie', 184061);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1646, 'Hirosaki', 'JPN', 'Aomori', 177522);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1647, 'Ube', 'JPN', 'Yamaguchi', 175206);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1648, 'Kodaira', 'JPN', 'Tokyo-to', 174984);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1649, 'Takaoka', 'JPN', 'Toyama', 174380);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1650, 'Obihiro', 'JPN', 'Hokkaido', 173685);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1651, 'Tomakomai', 'JPN', 'Hokkaido', 171958);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1652, 'Saga', 'JPN', 'Saga', 170034);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1653, 'Sakura', 'JPN', 'Chiba', 168072);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1654, 'Kamakura', 'JPN', 'Kanagawa', 167661);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1655, 'Mitaka', 'JPN', 'Tokyo-to', 167268);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1656, 'Izumi', 'JPN', 'Osaka', 166979);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1657, 'Hino', 'JPN', 'Tokyo-to', 166770);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1658, 'Hadano', 'JPN', 'Kanagawa', 166512);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1659, 'Ashikaga', 'JPN', 'Tochigi', 165243);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1660, 'Tsu', 'JPN', 'Mie', 164543);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1661, 'Sayama', 'JPN', 'Saitama', 162472);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1662, 'Yachiyo', 'JPN', 'Chiba', 161222);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1663, 'Tsukuba', 'JPN', 'Ibaragi', 160768);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1664, 'Tachikawa', 'JPN', 'Tokyo-to', 159430);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1665, 'Kumagaya', 'JPN', 'Saitama', 157171);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1666, 'Moriguchi', 'JPN', 'Osaka', 155941);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1667, 'Otaru', 'JPN', 'Hokkaido', 155784);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1668, 'Anjo', 'JPN', 'Aichi', 153823);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1669, 'Narashino', 'JPN', 'Chiba', 152849);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1670, 'Oyama', 'JPN', 'Tochigi', 152820);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1671, 'Ogaki', 'JPN', 'Gifu', 151758);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1672, 'Matsue', 'JPN', 'Shimane', 149821);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1673, 'Kawanishi', 'JPN', 'Hyogo', 149794);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1674, 'Hitachinaka', 'JPN', 'Tokyo-to', 148006);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1675, 'Niiza', 'JPN', 'Saitama', 147744);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1676, 'Nagareyama', 'JPN', 'Chiba', 147738);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1677, 'Tottori', 'JPN', 'Tottori', 147523);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1678, 'Tama', 'JPN', 'Ibaragi', 146712);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1679, 'Iruma', 'JPN', 'Saitama', 145922);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1680, 'Ota', 'JPN', 'Gumma', 145317);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1681, 'Omuta', 'JPN', 'Fukuoka', 142889);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1682, 'Komaki', 'JPN', 'Aichi', 139827);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1683, 'Ome', 'JPN', 'Tokyo-to', 139216);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1684, 'Kadoma', 'JPN', 'Osaka', 138953);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1685, 'Yamaguchi', 'JPN', 'Yamaguchi', 138210);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1686, 'Higashimurayama', 'JPN', 'Tokyo-to', 136970);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1687, 'Yonago', 'JPN', 'Tottori', 136461);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1688, 'Matsubara', 'JPN', 'Osaka', 135010);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1689, 'Musashino', 'JPN', 'Tokyo-to', 134426);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1690, 'Tsuchiura', 'JPN', 'Ibaragi', 134072);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1691, 'Joetsu', 'JPN', 'Niigata', 133505);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1692, 'Miyakonojo', 'JPN', 'Miyazaki', 133183);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1693, 'Misato', 'JPN', 'Saitama', 132957);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1694, 'Kakamigahara', 'JPN', 'Gifu', 131831);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1695, 'Daito', 'JPN', 'Osaka', 130594);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1696, 'Seto', 'JPN', 'Aichi', 130470);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1697, 'Kariya', 'JPN', 'Aichi', 127969);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1698, 'Urayasu', 'JPN', 'Chiba', 127550);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1699, 'Beppu', 'JPN', 'Oita', 127486);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1700, 'Niihama', 'JPN', 'Ehime', 127207);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1701, 'Minoo', 'JPN', 'Osaka', 127026);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1702, 'Fujieda', 'JPN', 'Shizuoka', 126897);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1703, 'Abiko', 'JPN', 'Chiba', 126670);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1704, 'Nobeoka', 'JPN', 'Miyazaki', 125547);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1705, 'Tondabayashi', 'JPN', 'Osaka', 125094);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1706, 'Ueda', 'JPN', 'Nagano', 124217);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1707, 'Kashihara', 'JPN', 'Nara', 124013);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1708, 'Matsusaka', 'JPN', 'Mie', 123582);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1709, 'Isesaki', 'JPN', 'Gumma', 123285);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1710, 'Zama', 'JPN', 'Kanagawa', 122046);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1711, 'Kisarazu', 'JPN', 'Chiba', 121967);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1712, 'Noda', 'JPN', 'Chiba', 121030);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1713, 'Ishinomaki', 'JPN', 'Miyagi', 120963);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1714, 'Fujinomiya', 'JPN', 'Shizuoka', 119714);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1715, 'Kawachinagano', 'JPN', 'Osaka', 119666);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1716, 'Imabari', 'JPN', 'Ehime', 119357);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1717, 'Aizuwakamatsu', 'JPN', 'Fukushima', 119287);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1718, 'Higashihiroshima', 'JPN', 'Hiroshima', 119166);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1719, 'Habikino', 'JPN', 'Osaka', 118968);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1720, 'Ebetsu', 'JPN', 'Hokkaido', 118805);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1721, 'Hofu', 'JPN', 'Yamaguchi', 118751);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1722, 'Kiryu', 'JPN', 'Gumma', 118326);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1723, 'Okinawa', 'JPN', 'Okinawa', 117748);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1724, 'Yaizu', 'JPN', 'Shizuoka', 117258);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1725, 'Toyokawa', 'JPN', 'Aichi', 115781);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1726, 'Ebina', 'JPN', 'Kanagawa', 115571);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1727, 'Asaka', 'JPN', 'Saitama', 114815);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1728, 'Higashikurume', 'JPN', 'Tokyo-to', 111666);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1729, 'Ikoma', 'JPN', 'Nara', 111645);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1730, 'Kitami', 'JPN', 'Hokkaido', 111295);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1731, 'Koganei', 'JPN', 'Tokyo-to', 110969);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1732, 'Iwatsuki', 'JPN', 'Saitama', 110034);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1733, 'Mishima', 'JPN', 'Shizuoka', 109699);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1734, 'Handa', 'JPN', 'Aichi', 108600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1735, 'Muroran', 'JPN', 'Hokkaido', 108275);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1736, 'Komatsu', 'JPN', 'Ishikawa', 107937);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1737, 'Yatsushiro', 'JPN', 'Kumamoto', 107661);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1738, 'Iida', 'JPN', 'Nagano', 107583);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1739, 'Tokuyama', 'JPN', 'Yamaguchi', 107078);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1740, 'Kokubunji', 'JPN', 'Tokyo-to', 106996);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1741, 'Akishima', 'JPN', 'Tokyo-to', 106914);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1742, 'Iwakuni', 'JPN', 'Yamaguchi', 106647);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1743, 'Kusatsu', 'JPN', 'Shiga', 106232);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1744, 'Kuwana', 'JPN', 'Mie', 106121);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1745, 'Sanda', 'JPN', 'Hyogo', 105643);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1746, 'Hikone', 'JPN', 'Shiga', 105508);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1747, 'Toda', 'JPN', 'Saitama', 103969);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1748, 'Tajimi', 'JPN', 'Gifu', 103171);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1749, 'Ikeda', 'JPN', 'Osaka', 102710);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1750, 'Fukaya', 'JPN', 'Saitama', 102156);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1751, 'Ise', 'JPN', 'Mie', 101732);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1752, 'Sakata', 'JPN', 'Yamagata', 101651);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1753, 'Kasuga', 'JPN', 'Fukuoka', 101344);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1754, 'Kamagaya', 'JPN', 'Chiba', 100821);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1755, 'Tsuruoka', 'JPN', 'Yamagata', 100713);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1756, 'Hoya', 'JPN', 'Tokyo-to', 100313);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1757, 'Nishio', 'JPN', 'Chiba', 100032);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1758, 'Tokai', 'JPN', 'Aichi', 99738);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1759, 'Inazawa', 'JPN', 'Aichi', 98746);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1760, 'Sakado', 'JPN', 'Saitama', 98221);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1761, 'Isehara', 'JPN', 'Kanagawa', 98123);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1762, 'Takasago', 'JPN', 'Hyogo', 97632);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1763, 'Fujimi', 'JPN', 'Saitama', 96972);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1764, 'Urasoe', 'JPN', 'Okinawa', 96002);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1765, 'Yonezawa', 'JPN', 'Yamagata', 95592);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1766, 'Konan', 'JPN', 'Aichi', 95521);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1767, 'Yamatokoriyama', 'JPN', 'Nara', 95165);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1768, 'Maizuru', 'JPN', 'Kyoto', 94784);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1769, 'Onomichi', 'JPN', 'Hiroshima', 93756);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1770, 'Higashimatsuyama', 'JPN', 'Saitama', 93342);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1771, 'Kimitsu', 'JPN', 'Chiba', 93216);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1772, 'Isahaya', 'JPN', 'Nagasaki', 93058);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1773, 'Kanuma', 'JPN', 'Tochigi', 93053);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1774, 'Izumisano', 'JPN', 'Osaka', 92583);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1775, 'Kameoka', 'JPN', 'Kyoto', 92398);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1776, 'Mobara', 'JPN', 'Chiba', 91664);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1777, 'Narita', 'JPN', 'Chiba', 91470);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1778, 'Kashiwazaki', 'JPN', 'Niigata', 91229);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1779, 'Tsuyama', 'JPN', 'Okayama', 91170);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1780, 'Sanaa', 'YEM', 'Sanaa', 503600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1781, 'Aden', 'YEM', 'Aden', 398300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1782, 'Taizz', 'YEM', 'Taizz', 317600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1783, 'Hodeida', 'YEM', 'Hodeida', 298500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1784, 'al-Mukalla', 'YEM', 'Hadramawt', 122400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1785, 'Ibb', 'YEM', 'Ibb', 103300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1786, 'Amman', 'JOR', 'Amman', 1000000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1787, 'al-Zarqa', 'JOR', 'al-Zarqa', 389815);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1788, 'Irbid', 'JOR', 'Irbid', 231511);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1789, 'al-Rusayfa', 'JOR', 'al-Zarqa', 137247);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1790, 'Wadi al-Sir', 'JOR', 'Amman', 89104);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1791, 'Flying Fish Cove', 'CXR', 'Â–', 700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1792, 'Beograd', 'YUG', 'Central Serbia', 1204000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1793, 'Novi Sad', 'YUG', 'Vojvodina', 179626);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1794, 'NiÂš', 'YUG', 'Central Serbia', 175391);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1795, 'PriÂština', 'YUG', 'Kosovo and Metohija', 155496);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1796, 'Kragujevac', 'YUG', 'Central Serbia', 147305);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1797, 'Podgorica', 'YUG', 'Montenegro', 135000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1798, 'Subotica', 'YUG', 'Vojvodina', 100386);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1799, 'Prizren', 'YUG', 'Kosovo and Metohija', 92303);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1800, 'Phnom Penh', 'KHM', 'Phnom Penh', 570155);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1801, 'Battambang', 'KHM', 'Battambang', 129800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1802, 'Siem Reap', 'KHM', 'Siem Reap', 105100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1803, 'Douala', 'CMR', 'Littoral', 1448300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1804, 'YaoundÃ©', 'CMR', 'Centre', 1372800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1805, 'Garoua', 'CMR', 'Nord', 177000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1806, 'Maroua', 'CMR', 'ExtrÃªme-Nord', 143000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1807, 'Bamenda', 'CMR', 'Nord-Ouest', 138000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1808, 'Bafoussam', 'CMR', 'Ouest', 131000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1809, 'Nkongsamba', 'CMR', 'Littoral', 112454);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1810, 'MontrÃ©al', 'CAN', 'QuÃ©bec', 1016376);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1811, 'Calgary', 'CAN', 'Alberta', 768082);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1812, 'Toronto', 'CAN', 'Ontario', 688275);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1813, 'North York', 'CAN', 'Ontario', 622632);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1814, 'Winnipeg', 'CAN', 'Manitoba', 618477);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1815, 'Edmonton', 'CAN', 'Alberta', 616306);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1816, 'Mississauga', 'CAN', 'Ontario', 608072);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1817, 'Scarborough', 'CAN', 'Ontario', 594501);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1818, 'Vancouver', 'CAN', 'British Colombia', 514008);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1819, 'Etobicoke', 'CAN', 'Ontario', 348845);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1820, 'London', 'CAN', 'Ontario', 339917);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1821, 'Hamilton', 'CAN', 'Ontario', 335614);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1822, 'Ottawa', 'CAN', 'Ontario', 335277);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1823, 'Laval', 'CAN', 'QuÃ©bec', 330393);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1824, 'Surrey', 'CAN', 'British Colombia', 304477);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1825, 'Brampton', 'CAN', 'Ontario', 296711);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1826, 'Windsor', 'CAN', 'Ontario', 207588);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1827, 'Saskatoon', 'CAN', 'Saskatchewan', 193647);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1828, 'Kitchener', 'CAN', 'Ontario', 189959);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1829, 'Markham', 'CAN', 'Ontario', 189098);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1830, 'Regina', 'CAN', 'Saskatchewan', 180400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1831, 'Burnaby', 'CAN', 'British Colombia', 179209);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1832, 'QuÃ©bec', 'CAN', 'QuÃ©bec', 167264);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1833, 'York', 'CAN', 'Ontario', 154980);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1834, 'Richmond', 'CAN', 'British Colombia', 148867);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1835, 'Vaughan', 'CAN', 'Ontario', 147889);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1836, 'Burlington', 'CAN', 'Ontario', 145150);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1837, 'Oshawa', 'CAN', 'Ontario', 140173);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1838, 'Oakville', 'CAN', 'Ontario', 139192);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1839, 'Saint Catharines', 'CAN', 'Ontario', 136216);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1840, 'Longueuil', 'CAN', 'QuÃ©bec', 127977);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1841, 'Richmond Hill', 'CAN', 'Ontario', 116428);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1842, 'Thunder Bay', 'CAN', 'Ontario', 115913);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1843, 'Nepean', 'CAN', 'Ontario', 115100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1844, 'Cape Breton', 'CAN', 'Nova Scotia', 114733);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1845, 'East York', 'CAN', 'Ontario', 114034);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1846, 'Halifax', 'CAN', 'Nova Scotia', 113910);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1847, 'Cambridge', 'CAN', 'Ontario', 109186);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1848, 'Gloucester', 'CAN', 'Ontario', 107314);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1849, 'Abbotsford', 'CAN', 'British Colombia', 105403);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1850, 'Guelph', 'CAN', 'Ontario', 103593);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1851, 'Saint JohnÂ´s', 'CAN', 'Newfoundland', 101936);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1852, 'Coquitlam', 'CAN', 'British Colombia', 101820);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1853, 'Saanich', 'CAN', 'British Colombia', 101388);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1854, 'Gatineau', 'CAN', 'QuÃ©bec', 100702);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1855, 'Delta', 'CAN', 'British Colombia', 95411);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1856, 'Sudbury', 'CAN', 'Ontario', 92686);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1857, 'Kelowna', 'CAN', 'British Colombia', 89442);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1858, 'Barrie', 'CAN', 'Ontario', 89269);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1859, 'Praia', 'CPV', 'SÃ£o Tiago', 94800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1860, 'Almaty', 'KAZ', 'Almaty Qalasy', 1129400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1861, 'Qaraghandy', 'KAZ', 'Qaraghandy', 436900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1862, 'Shymkent', 'KAZ', 'South Kazakstan', 360100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1863, 'Taraz', 'KAZ', 'Taraz', 330100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1864, 'Astana', 'KAZ', 'Astana', 311200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1865, 'Ã–skemen', 'KAZ', 'East Kazakstan', 311000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1866, 'Pavlodar', 'KAZ', 'Pavlodar', 300500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1867, 'Semey', 'KAZ', 'East Kazakstan', 269600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1868, 'AqtÃ¶be', 'KAZ', 'AqtÃ¶be', 253100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1869, 'Qostanay', 'KAZ', 'Qostanay', 221400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1870, 'Petropavl', 'KAZ', 'North Kazakstan', 203500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1871, 'Oral', 'KAZ', 'West Kazakstan', 195500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1872, 'Temirtau', 'KAZ', 'Qaraghandy', 170500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1873, 'Qyzylorda', 'KAZ', 'Qyzylorda', 157400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1874, 'Aqtau', 'KAZ', 'Mangghystau', 143400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1875, 'Atyrau', 'KAZ', 'Atyrau', 142500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1876, 'Ekibastuz', 'KAZ', 'Pavlodar', 127200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1877, 'KÃ¶kshetau', 'KAZ', 'North Kazakstan', 123400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1878, 'Rudnyy', 'KAZ', 'Qostanay', 109500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1879, 'Taldyqorghan', 'KAZ', 'Almaty', 98000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1880, 'Zhezqazghan', 'KAZ', 'Qaraghandy', 90000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1881, 'Nairobi', 'KEN', 'Nairobi', 2290000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1882, 'Mombasa', 'KEN', 'Coast', 461753);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1883, 'Kisumu', 'KEN', 'Nyanza', 192733);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1884, 'Nakuru', 'KEN', 'Rift Valley', 163927);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1885, 'Machakos', 'KEN', 'Eastern', 116293);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1886, 'Eldoret', 'KEN', 'Rift Valley', 111882);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1887, 'Meru', 'KEN', 'Eastern', 94947);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1888, 'Nyeri', 'KEN', 'Central', 91258);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1889, 'Bangui', 'CAF', 'Bangui', 524000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1890, 'Shanghai', 'CHN', 'Shanghai', 9696300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1891, 'Peking', 'CHN', 'Peking', 7472000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1892, 'Chongqing', 'CHN', 'Chongqing', 6351600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1893, 'Tianjin', 'CHN', 'Tianjin', 5286800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1894, 'Wuhan', 'CHN', 'Hubei', 4344600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1895, 'Harbin', 'CHN', 'Heilongjiang', 4289800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1896, 'Shenyang', 'CHN', 'Liaoning', 4265200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1897, 'Kanton [Guangzhou]', 'CHN', 'Guangdong', 4256300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1898, 'Chengdu', 'CHN', 'Sichuan', 3361500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1899, 'Nanking [Nanjing]', 'CHN', 'Jiangsu', 2870300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1900, 'Changchun', 'CHN', 'Jilin', 2812000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1901, 'XiÂ´an', 'CHN', 'Shaanxi', 2761400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1902, 'Dalian', 'CHN', 'Liaoning', 2697000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1903, 'Qingdao', 'CHN', 'Shandong', 2596000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1904, 'Jinan', 'CHN', 'Shandong', 2278100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1905, 'Hangzhou', 'CHN', 'Zhejiang', 2190500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1906, 'Zhengzhou', 'CHN', 'Henan', 2107200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1907, 'Shijiazhuang', 'CHN', 'Hebei', 2041500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1908, 'Taiyuan', 'CHN', 'Shanxi', 1968400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1909, 'Kunming', 'CHN', 'Yunnan', 1829500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1910, 'Changsha', 'CHN', 'Hunan', 1809800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1911, 'Nanchang', 'CHN', 'Jiangxi', 1691600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1912, 'Fuzhou', 'CHN', 'Fujian', 1593800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1913, 'Lanzhou', 'CHN', 'Gansu', 1565800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1914, 'Guiyang', 'CHN', 'Guizhou', 1465200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1915, 'Ningbo', 'CHN', 'Zhejiang', 1371200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1916, 'Hefei', 'CHN', 'Anhui', 1369100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1917, 'UrumtÂši [ÃœrÃ¼mqi]', 'CHN', 'Xinxiang', 1310100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1918, 'Anshan', 'CHN', 'Liaoning', 1200000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1919, 'Fushun', 'CHN', 'Liaoning', 1200000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1920, 'Nanning', 'CHN', 'Guangxi', 1161800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1921, 'Zibo', 'CHN', 'Shandong', 1140000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1922, 'Qiqihar', 'CHN', 'Heilongjiang', 1070000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1923, 'Jilin', 'CHN', 'Jilin', 1040000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1924, 'Tangshan', 'CHN', 'Hebei', 1040000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1925, 'Baotou', 'CHN', 'Inner Mongolia', 980000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1926, 'Shenzhen', 'CHN', 'Guangdong', 950500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1927, 'Hohhot', 'CHN', 'Inner Mongolia', 916700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1928, 'Handan', 'CHN', 'Hebei', 840000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1929, 'Wuxi', 'CHN', 'Jiangsu', 830000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1930, 'Xuzhou', 'CHN', 'Jiangsu', 810000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1931, 'Datong', 'CHN', 'Shanxi', 800000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1932, 'Yichun', 'CHN', 'Heilongjiang', 800000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1933, 'Benxi', 'CHN', 'Liaoning', 770000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1934, 'Luoyang', 'CHN', 'Henan', 760000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1935, 'Suzhou', 'CHN', 'Jiangsu', 710000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1936, 'Xining', 'CHN', 'Qinghai', 700200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1937, 'Huainan', 'CHN', 'Anhui', 700000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1938, 'Jixi', 'CHN', 'Heilongjiang', 683885);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1939, 'Daqing', 'CHN', 'Heilongjiang', 660000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1940, 'Fuxin', 'CHN', 'Liaoning', 640000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1941, 'Amoy [Xiamen]', 'CHN', 'Fujian', 627500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1942, 'Liuzhou', 'CHN', 'Guangxi', 610000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1943, 'Shantou', 'CHN', 'Guangdong', 580000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1944, 'Jinzhou', 'CHN', 'Liaoning', 570000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1945, 'Mudanjiang', 'CHN', 'Heilongjiang', 570000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1946, 'Yinchuan', 'CHN', 'Ningxia', 544500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1947, 'Changzhou', 'CHN', 'Jiangsu', 530000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1948, 'Zhangjiakou', 'CHN', 'Hebei', 530000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1949, 'Dandong', 'CHN', 'Liaoning', 520000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1950, 'Hegang', 'CHN', 'Heilongjiang', 520000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1951, 'Kaifeng', 'CHN', 'Henan', 510000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1952, 'Jiamusi', 'CHN', 'Heilongjiang', 493409);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1953, 'Liaoyang', 'CHN', 'Liaoning', 492559);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1954, 'Hengyang', 'CHN', 'Hunan', 487148);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1955, 'Baoding', 'CHN', 'Hebei', 483155);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1956, 'Hunjiang', 'CHN', 'Jilin', 482043);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1957, 'Xinxiang', 'CHN', 'Henan', 473762);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1958, 'Huangshi', 'CHN', 'Hubei', 457601);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1959, 'Haikou', 'CHN', 'Hainan', 454300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1960, 'Yantai', 'CHN', 'Shandong', 452127);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1961, 'Bengbu', 'CHN', 'Anhui', 449245);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1962, 'Xiangtan', 'CHN', 'Hunan', 441968);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1963, 'Weifang', 'CHN', 'Shandong', 428522);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1964, 'Wuhu', 'CHN', 'Anhui', 425740);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1965, 'Pingxiang', 'CHN', 'Jiangxi', 425579);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1966, 'Yingkou', 'CHN', 'Liaoning', 421589);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1967, 'Anyang', 'CHN', 'Henan', 420332);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1968, 'Panzhihua', 'CHN', 'Sichuan', 415466);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1969, 'Pingdingshan', 'CHN', 'Henan', 410775);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1970, 'Xiangfan', 'CHN', 'Hubei', 410407);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1971, 'Zhuzhou', 'CHN', 'Hunan', 409924);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1972, 'Jiaozuo', 'CHN', 'Henan', 409100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1973, 'Wenzhou', 'CHN', 'Zhejiang', 401871);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1974, 'Zhangjiang', 'CHN', 'Guangdong', 400997);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1975, 'Zigong', 'CHN', 'Sichuan', 393184);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1976, 'Shuangyashan', 'CHN', 'Heilongjiang', 386081);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1977, 'Zaozhuang', 'CHN', 'Shandong', 380846);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1978, 'Yakeshi', 'CHN', 'Inner Mongolia', 377869);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1979, 'Yichang', 'CHN', 'Hubei', 371601);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1980, 'Zhenjiang', 'CHN', 'Jiangsu', 368316);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1981, 'Huaibei', 'CHN', 'Anhui', 366549);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1982, 'Qinhuangdao', 'CHN', 'Hebei', 364972);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1983, 'Guilin', 'CHN', 'Guangxi', 364130);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1984, 'Liupanshui', 'CHN', 'Guizhou', 363954);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1985, 'Panjin', 'CHN', 'Liaoning', 362773);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1986, 'Yangquan', 'CHN', 'Shanxi', 362268);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1987, 'Jinxi', 'CHN', 'Liaoning', 357052);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1988, 'Liaoyuan', 'CHN', 'Jilin', 354141);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1989, 'Lianyungang', 'CHN', 'Jiangsu', 354139);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1990, 'Xianyang', 'CHN', 'Shaanxi', 352125);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1991, 'TaiÂ´an', 'CHN', 'Shandong', 350696);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1992, 'Chifeng', 'CHN', 'Inner Mongolia', 350077);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1993, 'Shaoguan', 'CHN', 'Guangdong', 350043);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1994, 'Nantong', 'CHN', 'Jiangsu', 343341);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1995, 'Leshan', 'CHN', 'Sichuan', 341128);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1996, 'Baoji', 'CHN', 'Shaanxi', 337765);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1997, 'Linyi', 'CHN', 'Shandong', 324720);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1998, 'Tonghua', 'CHN', 'Jilin', 324600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (1999, 'Siping', 'CHN', 'Jilin', 317223);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2000, 'Changzhi', 'CHN', 'Shanxi', 317144);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2001, 'Tengzhou', 'CHN', 'Shandong', 315083);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2002, 'Chaozhou', 'CHN', 'Guangdong', 313469);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2003, 'Yangzhou', 'CHN', 'Jiangsu', 312892);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2004, 'Dongwan', 'CHN', 'Guangdong', 308669);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2005, 'MaÂ´anshan', 'CHN', 'Anhui', 305421);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2006, 'Foshan', 'CHN', 'Guangdong', 303160);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2007, 'Yueyang', 'CHN', 'Hunan', 302800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2008, 'Xingtai', 'CHN', 'Hebei', 302789);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2009, 'Changde', 'CHN', 'Hunan', 301276);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2010, 'Shihezi', 'CHN', 'Xinxiang', 299676);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2011, 'Yancheng', 'CHN', 'Jiangsu', 296831);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2012, 'Jiujiang', 'CHN', 'Jiangxi', 291187);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2013, 'Dongying', 'CHN', 'Shandong', 281728);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2014, 'Shashi', 'CHN', 'Hubei', 281352);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2015, 'Xintai', 'CHN', 'Shandong', 281248);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2016, 'Jingdezhen', 'CHN', 'Jiangxi', 281183);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2017, 'Tongchuan', 'CHN', 'Shaanxi', 280657);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2018, 'Zhongshan', 'CHN', 'Guangdong', 278829);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2019, 'Shiyan', 'CHN', 'Hubei', 273786);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2020, 'Tieli', 'CHN', 'Heilongjiang', 265683);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2021, 'Jining', 'CHN', 'Shandong', 265248);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2022, 'Wuhai', 'CHN', 'Inner Mongolia', 264081);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2023, 'Mianyang', 'CHN', 'Sichuan', 262947);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2024, 'Luzhou', 'CHN', 'Sichuan', 262892);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2025, 'Zunyi', 'CHN', 'Guizhou', 261862);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2026, 'Shizuishan', 'CHN', 'Ningxia', 257862);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2027, 'Neijiang', 'CHN', 'Sichuan', 256012);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2028, 'Tongliao', 'CHN', 'Inner Mongolia', 255129);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2029, 'Tieling', 'CHN', 'Liaoning', 254842);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2030, 'Wafangdian', 'CHN', 'Liaoning', 251733);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2031, 'Anqing', 'CHN', 'Anhui', 250718);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2032, 'Shaoyang', 'CHN', 'Hunan', 247227);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2033, 'Laiwu', 'CHN', 'Shandong', 246833);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2034, 'Chengde', 'CHN', 'Hebei', 246799);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2035, 'Tianshui', 'CHN', 'Gansu', 244974);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2036, 'Nanyang', 'CHN', 'Henan', 243303);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2037, 'Cangzhou', 'CHN', 'Hebei', 242708);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2038, 'Yibin', 'CHN', 'Sichuan', 241019);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2039, 'Huaiyin', 'CHN', 'Jiangsu', 239675);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2040, 'Dunhua', 'CHN', 'Jilin', 235100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2041, 'Yanji', 'CHN', 'Jilin', 230892);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2042, 'Jiangmen', 'CHN', 'Guangdong', 230587);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2043, 'Tongling', 'CHN', 'Anhui', 228017);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2044, 'Suihua', 'CHN', 'Heilongjiang', 227881);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2045, 'Gongziling', 'CHN', 'Jilin', 226569);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2046, 'Xiantao', 'CHN', 'Hubei', 222884);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2047, 'Chaoyang', 'CHN', 'Liaoning', 222394);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2048, 'Ganzhou', 'CHN', 'Jiangxi', 220129);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2049, 'Huzhou', 'CHN', 'Zhejiang', 218071);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2050, 'Baicheng', 'CHN', 'Jilin', 217987);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2051, 'Shangzi', 'CHN', 'Heilongjiang', 215373);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2052, 'Yangjiang', 'CHN', 'Guangdong', 215196);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2053, 'Qitaihe', 'CHN', 'Heilongjiang', 214957);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2054, 'Gejiu', 'CHN', 'Yunnan', 214294);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2055, 'Jiangyin', 'CHN', 'Jiangsu', 213659);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2056, 'Hebi', 'CHN', 'Henan', 212976);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2057, 'Jiaxing', 'CHN', 'Zhejiang', 211526);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2058, 'Wuzhou', 'CHN', 'Guangxi', 210452);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2059, 'Meihekou', 'CHN', 'Jilin', 209038);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2060, 'Xuchang', 'CHN', 'Henan', 208815);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2061, 'Liaocheng', 'CHN', 'Shandong', 207844);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2062, 'Haicheng', 'CHN', 'Liaoning', 205560);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2063, 'Qianjiang', 'CHN', 'Hubei', 205504);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2064, 'Baiyin', 'CHN', 'Gansu', 204970);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2065, 'BeiÂ´an', 'CHN', 'Heilongjiang', 204899);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2066, 'Yixing', 'CHN', 'Jiangsu', 200824);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2067, 'Laizhou', 'CHN', 'Shandong', 198664);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2068, 'Qaramay', 'CHN', 'Xinxiang', 197602);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2069, 'Acheng', 'CHN', 'Heilongjiang', 197595);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2070, 'Dezhou', 'CHN', 'Shandong', 195485);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2071, 'Nanping', 'CHN', 'Fujian', 195064);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2072, 'Zhaoqing', 'CHN', 'Guangdong', 194784);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2073, 'Beipiao', 'CHN', 'Liaoning', 194301);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2074, 'Fengcheng', 'CHN', 'Jiangxi', 193784);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2075, 'Fuyu', 'CHN', 'Jilin', 192981);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2076, 'Xinyang', 'CHN', 'Henan', 192509);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2077, 'Dongtai', 'CHN', 'Jiangsu', 192247);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2078, 'Yuci', 'CHN', 'Shanxi', 191356);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2079, 'Honghu', 'CHN', 'Hubei', 190772);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2080, 'Ezhou', 'CHN', 'Hubei', 190123);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2081, 'Heze', 'CHN', 'Shandong', 189293);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2082, 'Daxian', 'CHN', 'Sichuan', 188101);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2083, 'Linfen', 'CHN', 'Shanxi', 187309);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2084, 'Tianmen', 'CHN', 'Hubei', 186332);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2085, 'Yiyang', 'CHN', 'Hunan', 185818);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2086, 'Quanzhou', 'CHN', 'Fujian', 185154);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2087, 'Rizhao', 'CHN', 'Shandong', 185048);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2088, 'Deyang', 'CHN', 'Sichuan', 182488);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2089, 'Guangyuan', 'CHN', 'Sichuan', 182241);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2090, 'Changshu', 'CHN', 'Jiangsu', 181805);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2091, 'Zhangzhou', 'CHN', 'Fujian', 181424);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2092, 'Hailar', 'CHN', 'Inner Mongolia', 180650);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2093, 'Nanchong', 'CHN', 'Sichuan', 180273);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2094, 'Jiutai', 'CHN', 'Jilin', 180130);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2095, 'Zhaodong', 'CHN', 'Heilongjiang', 179976);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2096, 'Shaoxing', 'CHN', 'Zhejiang', 179818);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2097, 'Fuyang', 'CHN', 'Anhui', 179572);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2098, 'Maoming', 'CHN', 'Guangdong', 178683);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2099, 'Qujing', 'CHN', 'Yunnan', 178669);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2100, 'Ghulja', 'CHN', 'Xinxiang', 177193);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2101, 'Jiaohe', 'CHN', 'Jilin', 176367);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2102, 'Puyang', 'CHN', 'Henan', 175988);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2103, 'Huadian', 'CHN', 'Jilin', 175873);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2104, 'Jiangyou', 'CHN', 'Sichuan', 175753);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2105, 'Qashqar', 'CHN', 'Xinxiang', 174570);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2106, 'Anshun', 'CHN', 'Guizhou', 174142);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2107, 'Fuling', 'CHN', 'Sichuan', 173878);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2108, 'Xinyu', 'CHN', 'Jiangxi', 173524);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2109, 'Hanzhong', 'CHN', 'Shaanxi', 169930);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2110, 'Danyang', 'CHN', 'Jiangsu', 169603);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2111, 'Chenzhou', 'CHN', 'Hunan', 169400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2112, 'Xiaogan', 'CHN', 'Hubei', 166280);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2113, 'Shangqiu', 'CHN', 'Henan', 164880);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2114, 'Zhuhai', 'CHN', 'Guangdong', 164747);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2115, 'Qingyuan', 'CHN', 'Guangdong', 164641);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2116, 'Aqsu', 'CHN', 'Xinxiang', 164092);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2117, 'Jining', 'CHN', 'Inner Mongolia', 163552);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2118, 'Xiaoshan', 'CHN', 'Zhejiang', 162930);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2119, 'Zaoyang', 'CHN', 'Hubei', 162198);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2120, 'Xinghua', 'CHN', 'Jiangsu', 161910);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2121, 'Hami', 'CHN', 'Xinxiang', 161315);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2122, 'Huizhou', 'CHN', 'Guangdong', 161023);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2123, 'Jinmen', 'CHN', 'Hubei', 160794);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2124, 'Sanming', 'CHN', 'Fujian', 160691);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2125, 'Ulanhot', 'CHN', 'Inner Mongolia', 159538);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2126, 'Korla', 'CHN', 'Xinxiang', 159344);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2127, 'Wanxian', 'CHN', 'Sichuan', 156823);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2128, 'RuiÂ´an', 'CHN', 'Zhejiang', 156468);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2129, 'Zhoushan', 'CHN', 'Zhejiang', 156317);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2130, 'Liangcheng', 'CHN', 'Shandong', 156307);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2131, 'Jiaozhou', 'CHN', 'Shandong', 153364);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2132, 'Taizhou', 'CHN', 'Jiangsu', 152442);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2133, 'Suzhou', 'CHN', 'Anhui', 151862);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2134, 'Yichun', 'CHN', 'Jiangxi', 151585);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2135, 'Taonan', 'CHN', 'Jilin', 150168);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2136, 'Pingdu', 'CHN', 'Shandong', 150123);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2137, 'JiÂ´an', 'CHN', 'Jiangxi', 148583);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2138, 'Longkou', 'CHN', 'Shandong', 148362);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2139, 'Langfang', 'CHN', 'Hebei', 148105);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2140, 'Zhoukou', 'CHN', 'Henan', 146288);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2141, 'Suining', 'CHN', 'Sichuan', 146086);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2142, 'Yulin', 'CHN', 'Guangxi', 144467);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2143, 'Jinhua', 'CHN', 'Zhejiang', 144280);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2144, 'LiuÂ´an', 'CHN', 'Anhui', 144248);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2145, 'Shuangcheng', 'CHN', 'Heilongjiang', 142659);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2146, 'Suizhou', 'CHN', 'Hubei', 142302);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2147, 'Ankang', 'CHN', 'Shaanxi', 142170);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2148, 'Weinan', 'CHN', 'Shaanxi', 140169);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2149, 'Longjing', 'CHN', 'Jilin', 139417);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2150, 'DaÂ´an', 'CHN', 'Jilin', 138963);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2151, 'Lengshuijiang', 'CHN', 'Hunan', 137994);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2152, 'Laiyang', 'CHN', 'Shandong', 137080);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2153, 'Xianning', 'CHN', 'Hubei', 136811);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2154, 'Dali', 'CHN', 'Yunnan', 136554);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2155, 'Anda', 'CHN', 'Heilongjiang', 136446);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2156, 'Jincheng', 'CHN', 'Shanxi', 136396);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2157, 'Longyan', 'CHN', 'Fujian', 134481);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2158, 'Xichang', 'CHN', 'Sichuan', 134419);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2159, 'Wendeng', 'CHN', 'Shandong', 133910);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2160, 'Hailun', 'CHN', 'Heilongjiang', 133565);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2161, 'Binzhou', 'CHN', 'Shandong', 133555);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2162, 'Linhe', 'CHN', 'Inner Mongolia', 133183);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2163, 'Wuwei', 'CHN', 'Gansu', 133101);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2164, 'Duyun', 'CHN', 'Guizhou', 132971);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2165, 'Mishan', 'CHN', 'Heilongjiang', 132744);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2166, 'Shangrao', 'CHN', 'Jiangxi', 132455);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2167, 'Changji', 'CHN', 'Xinxiang', 132260);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2168, 'Meixian', 'CHN', 'Guangdong', 132156);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2169, 'Yushu', 'CHN', 'Jilin', 131861);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2170, 'Tiefa', 'CHN', 'Liaoning', 131807);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2171, 'HuaiÂ´an', 'CHN', 'Jiangsu', 131149);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2172, 'Leiyang', 'CHN', 'Hunan', 130115);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2173, 'Zalantun', 'CHN', 'Inner Mongolia', 130031);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2174, 'Weihai', 'CHN', 'Shandong', 128888);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2175, 'Loudi', 'CHN', 'Hunan', 128418);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2176, 'Qingzhou', 'CHN', 'Shandong', 128258);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2177, 'Qidong', 'CHN', 'Jiangsu', 126872);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2178, 'Huaihua', 'CHN', 'Hunan', 126785);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2179, 'Luohe', 'CHN', 'Henan', 126438);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2180, 'Chuzhou', 'CHN', 'Anhui', 125341);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2181, 'Kaiyuan', 'CHN', 'Liaoning', 124219);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2182, 'Linqing', 'CHN', 'Shandong', 123958);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2183, 'Chaohu', 'CHN', 'Anhui', 123676);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2184, 'Laohekou', 'CHN', 'Hubei', 123366);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2185, 'Dujiangyan', 'CHN', 'Sichuan', 123357);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2186, 'Zhumadian', 'CHN', 'Henan', 123232);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2187, 'Linchuan', 'CHN', 'Jiangxi', 121949);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2188, 'Jiaonan', 'CHN', 'Shandong', 121397);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2189, 'Sanmenxia', 'CHN', 'Henan', 120523);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2190, 'Heyuan', 'CHN', 'Guangdong', 120101);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2191, 'Manzhouli', 'CHN', 'Inner Mongolia', 120023);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2192, 'Lhasa', 'CHN', 'Tibet', 120000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2193, 'Lianyuan', 'CHN', 'Hunan', 118858);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2194, 'Kuytun', 'CHN', 'Xinxiang', 118553);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2195, 'Puqi', 'CHN', 'Hubei', 117264);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2196, 'Hongjiang', 'CHN', 'Hunan', 116188);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2197, 'Qinzhou', 'CHN', 'Guangxi', 114586);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2198, 'Renqiu', 'CHN', 'Hebei', 114256);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2199, 'Yuyao', 'CHN', 'Zhejiang', 114065);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2200, 'Guigang', 'CHN', 'Guangxi', 114025);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2201, 'Kaili', 'CHN', 'Guizhou', 113958);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2202, 'YanÂ´an', 'CHN', 'Shaanxi', 113277);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2203, 'Beihai', 'CHN', 'Guangxi', 112673);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2204, 'Xuangzhou', 'CHN', 'Anhui', 112673);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2205, 'Quzhou', 'CHN', 'Zhejiang', 112373);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2206, 'YongÂ´an', 'CHN', 'Fujian', 111762);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2207, 'Zixing', 'CHN', 'Hunan', 110048);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2208, 'Liyang', 'CHN', 'Jiangsu', 109520);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2209, 'Yizheng', 'CHN', 'Jiangsu', 109268);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2210, 'Yumen', 'CHN', 'Gansu', 109234);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2211, 'Liling', 'CHN', 'Hunan', 108504);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2212, 'Yuncheng', 'CHN', 'Shanxi', 108359);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2213, 'Shanwei', 'CHN', 'Guangdong', 107847);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2214, 'Cixi', 'CHN', 'Zhejiang', 107329);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2215, 'Yuanjiang', 'CHN', 'Hunan', 107004);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2216, 'Bozhou', 'CHN', 'Anhui', 106346);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2217, 'Jinchang', 'CHN', 'Gansu', 105287);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2218, 'FuÂ´an', 'CHN', 'Fujian', 105265);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2219, 'Suqian', 'CHN', 'Jiangsu', 105021);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2220, 'Shishou', 'CHN', 'Hubei', 104571);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2221, 'Hengshui', 'CHN', 'Hebei', 104269);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2222, 'Danjiangkou', 'CHN', 'Hubei', 103211);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2223, 'Fujin', 'CHN', 'Heilongjiang', 103104);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2224, 'Sanya', 'CHN', 'Hainan', 102820);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2225, 'Guangshui', 'CHN', 'Hubei', 102770);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2226, 'Huangshan', 'CHN', 'Anhui', 102628);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2227, 'Xingcheng', 'CHN', 'Liaoning', 102384);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2228, 'Zhucheng', 'CHN', 'Shandong', 102134);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2229, 'Kunshan', 'CHN', 'Jiangsu', 102052);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2230, 'Haining', 'CHN', 'Zhejiang', 100478);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2231, 'Pingliang', 'CHN', 'Gansu', 99265);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2232, 'Fuqing', 'CHN', 'Fujian', 99193);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2233, 'Xinzhou', 'CHN', 'Shanxi', 98667);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2234, 'Jieyang', 'CHN', 'Guangdong', 98531);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2235, 'Zhangjiagang', 'CHN', 'Jiangsu', 97994);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2236, 'Tong Xian', 'CHN', 'Peking', 97168);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2237, 'YaÂ´an', 'CHN', 'Sichuan', 95900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2238, 'Jinzhou', 'CHN', 'Liaoning', 95761);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2239, 'Emeishan', 'CHN', 'Sichuan', 94000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2240, 'Enshi', 'CHN', 'Hubei', 93056);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2241, 'Bose', 'CHN', 'Guangxi', 93009);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2242, 'Yuzhou', 'CHN', 'Henan', 92889);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2243, 'Kaiyuan', 'CHN', 'Yunnan', 91999);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2244, 'Tumen', 'CHN', 'Jilin', 91471);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2245, 'Putian', 'CHN', 'Fujian', 91030);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2246, 'Linhai', 'CHN', 'Zhejiang', 90870);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2247, 'Xilin Hot', 'CHN', 'Inner Mongolia', 90646);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2248, 'Shaowu', 'CHN', 'Fujian', 90286);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2249, 'Junan', 'CHN', 'Shandong', 90222);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2250, 'Huaying', 'CHN', 'Sichuan', 89400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2251, 'Pingyi', 'CHN', 'Shandong', 89373);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2252, 'Huangyan', 'CHN', 'Zhejiang', 89288);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2253, 'Bishkek', 'KGZ', 'Bishkek shaary', 589400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2254, 'Osh', 'KGZ', 'Osh', 222700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2255, 'Bikenibeu', 'KIR', 'South Tarawa', 5055);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2256, 'Bairiki', 'KIR', 'South Tarawa', 2226);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2257, 'SantafÃ© de BogotÃ¡', 'COL', 'SantafÃ© de BogotÃ¡', 6260862);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2258, 'Cali', 'COL', 'Valle', 2077386);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2259, 'MedellÃ­n', 'COL', 'Antioquia', 1861265);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2260, 'Barranquilla', 'COL', 'AtlÃ¡ntico', 1223260);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2261, 'Cartagena', 'COL', 'BolÃ­var', 805757);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2262, 'CÃºcuta', 'COL', 'Norte de Santander', 606932);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2263, 'Bucaramanga', 'COL', 'Santander', 515555);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2264, 'IbaguÃ©', 'COL', 'Tolima', 393664);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2265, 'Pereira', 'COL', 'Risaralda', 381725);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2266, 'Santa Marta', 'COL', 'Magdalena', 359147);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2267, 'Manizales', 'COL', 'Caldas', 337580);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2268, 'Bello', 'COL', 'Antioquia', 333470);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2269, 'Pasto', 'COL', 'NariÃ±o', 332396);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2270, 'Neiva', 'COL', 'Huila', 300052);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2271, 'Soledad', 'COL', 'AtlÃ¡ntico', 295058);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2272, 'Armenia', 'COL', 'QuindÃ­o', 288977);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2273, 'Villavicencio', 'COL', 'Meta', 273140);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2274, 'Soacha', 'COL', 'Cundinamarca', 272058);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2275, 'Valledupar', 'COL', 'Cesar', 263247);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2276, 'MonterÃ­a', 'COL', 'CÃ³rdoba', 248245);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2277, 'ItagÃ¼Ã­', 'COL', 'Antioquia', 228985);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2278, 'Palmira', 'COL', 'Valle', 226509);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2279, 'Buenaventura', 'COL', 'Valle', 224336);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2280, 'Floridablanca', 'COL', 'Santander', 221913);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2281, 'Sincelejo', 'COL', 'Sucre', 220704);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2282, 'PopayÃ¡n', 'COL', 'Cauca', 200719);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2283, 'Barrancabermeja', 'COL', 'Santander', 178020);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2284, 'Dos Quebradas', 'COL', 'Risaralda', 159363);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2285, 'TuluÃ¡', 'COL', 'Valle', 152488);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2286, 'Envigado', 'COL', 'Antioquia', 135848);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2287, 'Cartago', 'COL', 'Valle', 125884);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2288, 'Girardot', 'COL', 'Cundinamarca', 110963);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2289, 'Buga', 'COL', 'Valle', 110699);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2290, 'Tunja', 'COL', 'BoyacÃ¡', 109740);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2291, 'Florencia', 'COL', 'CaquetÃ¡', 108574);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2292, 'Maicao', 'COL', 'La Guajira', 108053);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2293, 'Sogamoso', 'COL', 'BoyacÃ¡', 107728);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2294, 'Giron', 'COL', 'Santander', 90688);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2295, 'Moroni', 'COM', 'Njazidja', 36000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2296, 'Brazzaville', 'COG', 'Brazzaville', 950000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2297, 'Pointe-Noire', 'COG', 'Kouilou', 500000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2298, 'Kinshasa', 'COD', 'Kinshasa', 5064000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2299, 'Lubumbashi', 'COD', 'Shaba', 851381);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2300, 'Mbuji-Mayi', 'COD', 'East Kasai', 806475);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2301, 'Kolwezi', 'COD', 'Shaba', 417810);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2302, 'Kisangani', 'COD', 'Haute-ZaÃ¯re', 417517);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2303, 'Kananga', 'COD', 'West Kasai', 393030);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2304, 'Likasi', 'COD', 'Shaba', 299118);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2305, 'Bukavu', 'COD', 'South Kivu', 201569);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2306, 'Kikwit', 'COD', 'Bandundu', 182142);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2307, 'Tshikapa', 'COD', 'West Kasai', 180860);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2308, 'Matadi', 'COD', 'Bas-ZaÃ¯re', 172730);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2309, 'Mbandaka', 'COD', 'Equateur', 169841);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2310, 'Mwene-Ditu', 'COD', 'East Kasai', 137459);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2311, 'Boma', 'COD', 'Bas-ZaÃ¯re', 135284);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2312, 'Uvira', 'COD', 'South Kivu', 115590);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2313, 'Butembo', 'COD', 'North Kivu', 109406);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2314, 'Goma', 'COD', 'North Kivu', 109094);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2315, 'Kalemie', 'COD', 'Shaba', 101309);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2316, 'Bantam', 'CCK', 'Home Island', 503);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2317, 'West Island', 'CCK', 'West Island', 167);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2318, 'Pyongyang', 'PRK', 'Pyongyang-si', 2484000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2319, 'Hamhung', 'PRK', 'Hamgyong N', 709730);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2320, 'Chongjin', 'PRK', 'Hamgyong P', 582480);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2321, 'Nampo', 'PRK', 'Nampo-si', 566200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2322, 'Sinuiju', 'PRK', 'Pyongan P', 326011);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2323, 'Wonsan', 'PRK', 'Kangwon', 300148);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2324, 'Phyongsong', 'PRK', 'Pyongan N', 272934);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2325, 'Sariwon', 'PRK', 'Hwanghae P', 254146);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2326, 'Haeju', 'PRK', 'Hwanghae N', 229172);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2327, 'Kanggye', 'PRK', 'Chagang', 223410);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2328, 'Kimchaek', 'PRK', 'Hamgyong P', 179000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2329, 'Hyesan', 'PRK', 'Yanggang', 178020);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2330, 'Kaesong', 'PRK', 'Kaesong-si', 171500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2331, 'Seoul', 'KOR', 'Seoul', 9981619);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2332, 'Pusan', 'KOR', 'Pusan', 3804522);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2333, 'Inchon', 'KOR', 'Inchon', 2559424);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2334, 'Taegu', 'KOR', 'Taegu', 2548568);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2335, 'Taejon', 'KOR', 'Taejon', 1425835);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2336, 'Kwangju', 'KOR', 'Kwangju', 1368341);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2337, 'Ulsan', 'KOR', 'Kyongsangnam', 1084891);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2338, 'Songnam', 'KOR', 'Kyonggi', 869094);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2339, 'Puchon', 'KOR', 'Kyonggi', 779412);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2340, 'Suwon', 'KOR', 'Kyonggi', 755550);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2341, 'Anyang', 'KOR', 'Kyonggi', 591106);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2342, 'Chonju', 'KOR', 'Chollabuk', 563153);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2343, 'Chongju', 'KOR', 'Chungchongbuk', 531376);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2344, 'Koyang', 'KOR', 'Kyonggi', 518282);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2345, 'Ansan', 'KOR', 'Kyonggi', 510314);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2346, 'Pohang', 'KOR', 'Kyongsangbuk', 508899);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2347, 'Chang-won', 'KOR', 'Kyongsangnam', 481694);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2348, 'Masan', 'KOR', 'Kyongsangnam', 441242);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2349, 'Kwangmyong', 'KOR', 'Kyonggi', 350914);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2350, 'Chonan', 'KOR', 'Chungchongnam', 330259);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2351, 'Chinju', 'KOR', 'Kyongsangnam', 329886);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2352, 'Iksan', 'KOR', 'Chollabuk', 322685);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2353, 'Pyongtaek', 'KOR', 'Kyonggi', 312927);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2354, 'Kumi', 'KOR', 'Kyongsangbuk', 311431);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2355, 'Uijongbu', 'KOR', 'Kyonggi', 276111);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2356, 'Kyongju', 'KOR', 'Kyongsangbuk', 272968);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2357, 'Kunsan', 'KOR', 'Chollabuk', 266569);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2358, 'Cheju', 'KOR', 'Cheju', 258511);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2359, 'Kimhae', 'KOR', 'Kyongsangnam', 256370);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2360, 'Sunchon', 'KOR', 'Chollanam', 249263);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2361, 'Mokpo', 'KOR', 'Chollanam', 247452);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2362, 'Yong-in', 'KOR', 'Kyonggi', 242643);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2363, 'Wonju', 'KOR', 'Kang-won', 237460);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2364, 'Kunpo', 'KOR', 'Kyonggi', 235233);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2365, 'Chunchon', 'KOR', 'Kang-won', 234528);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2366, 'Namyangju', 'KOR', 'Kyonggi', 229060);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2367, 'Kangnung', 'KOR', 'Kang-won', 220403);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2368, 'Chungju', 'KOR', 'Chungchongbuk', 205206);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2369, 'Andong', 'KOR', 'Kyongsangbuk', 188443);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2370, 'Yosu', 'KOR', 'Chollanam', 183596);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2371, 'Kyongsan', 'KOR', 'Kyongsangbuk', 173746);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2372, 'Paju', 'KOR', 'Kyonggi', 163379);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2373, 'Yangsan', 'KOR', 'Kyongsangnam', 163351);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2374, 'Ichon', 'KOR', 'Kyonggi', 155332);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2375, 'Asan', 'KOR', 'Chungchongnam', 154663);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2376, 'Koje', 'KOR', 'Kyongsangnam', 147562);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2377, 'Kimchon', 'KOR', 'Kyongsangbuk', 147027);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2378, 'Nonsan', 'KOR', 'Chungchongnam', 146619);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2379, 'Kuri', 'KOR', 'Kyonggi', 142173);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2380, 'Chong-up', 'KOR', 'Chollabuk', 139111);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2381, 'Chechon', 'KOR', 'Chungchongbuk', 137070);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2382, 'Sosan', 'KOR', 'Chungchongnam', 134746);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2383, 'Shihung', 'KOR', 'Kyonggi', 133443);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2384, 'Tong-yong', 'KOR', 'Kyongsangnam', 131717);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2385, 'Kongju', 'KOR', 'Chungchongnam', 131229);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2386, 'Yongju', 'KOR', 'Kyongsangbuk', 131097);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2387, 'Chinhae', 'KOR', 'Kyongsangnam', 125997);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2388, 'Sangju', 'KOR', 'Kyongsangbuk', 124116);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2389, 'Poryong', 'KOR', 'Chungchongnam', 122604);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2390, 'Kwang-yang', 'KOR', 'Chollanam', 122052);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2391, 'Miryang', 'KOR', 'Kyongsangnam', 121501);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2392, 'Hanam', 'KOR', 'Kyonggi', 115812);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2393, 'Kimje', 'KOR', 'Chollabuk', 115427);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2394, 'Yongchon', 'KOR', 'Kyongsangbuk', 113511);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2395, 'Sachon', 'KOR', 'Kyongsangnam', 113494);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2396, 'Uiwang', 'KOR', 'Kyonggi', 108788);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2397, 'Naju', 'KOR', 'Chollanam', 107831);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2398, 'Namwon', 'KOR', 'Chollabuk', 103544);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2399, 'Tonghae', 'KOR', 'Kang-won', 95472);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2400, 'Mun-gyong', 'KOR', 'Kyongsangbuk', 92239);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2401, 'Athenai', 'GRC', 'Attika', 772072);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2402, 'Thessaloniki', 'GRC', 'Central Macedonia', 383967);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2403, 'Pireus', 'GRC', 'Attika', 182671);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2404, 'Patras', 'GRC', 'West Greece', 153344);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2405, 'Peristerion', 'GRC', 'Attika', 137288);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2406, 'Herakleion', 'GRC', 'Crete', 116178);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2407, 'Kallithea', 'GRC', 'Attika', 114233);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2408, 'Larisa', 'GRC', 'Thessalia', 113090);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2409, 'Zagreb', 'HRV', 'Grad Zagreb', 706770);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2410, 'Split', 'HRV', 'Split-Dalmatia', 189388);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2411, 'Rijeka', 'HRV', 'Primorje-Gorski Kota', 167964);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2412, 'Osijek', 'HRV', 'Osijek-Baranja', 104761);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2413, 'La Habana', 'CUB', 'La Habana', 2256000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2414, 'Santiago de Cuba', 'CUB', 'Santiago de Cuba', 433180);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2415, 'CamagÃ¼ey', 'CUB', 'CamagÃ¼ey', 298726);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2416, 'HolguÃ­n', 'CUB', 'HolguÃ­n', 249492);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2417, 'Santa Clara', 'CUB', 'Villa Clara', 207350);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2418, 'GuantÃ¡namo', 'CUB', 'GuantÃ¡namo', 205078);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2419, 'Pinar del RÃ­o', 'CUB', 'Pinar del RÃ­o', 142100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2420, 'Bayamo', 'CUB', 'Granma', 141000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2421, 'Cienfuegos', 'CUB', 'Cienfuegos', 132770);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2422, 'Victoria de las Tunas', 'CUB', 'Las Tunas', 132350);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2423, 'Matanzas', 'CUB', 'Matanzas', 123273);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2424, 'Manzanillo', 'CUB', 'Granma', 109350);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2425, 'Sancti-SpÃ­ritus', 'CUB', 'Sancti-SpÃ­ritus', 100751);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2426, 'Ciego de Ã�vila', 'CUB', 'Ciego de Ã�vila', 98505);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2427, 'al-Salimiya', 'KWT', 'Hawalli', 130215);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2428, 'Jalib al-Shuyukh', 'KWT', 'Hawalli', 102178);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2429, 'Kuwait', 'KWT', 'al-Asima', 28859);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2430, 'Nicosia', 'CYP', 'Nicosia', 195000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2431, 'Limassol', 'CYP', 'Limassol', 154400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2432, 'Vientiane', 'LAO', 'Viangchan', 531800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2433, 'Savannakhet', 'LAO', 'Savannakhet', 96652);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2434, 'Riga', 'LVA', 'Riika', 764328);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2435, 'Daugavpils', 'LVA', 'Daugavpils', 114829);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2436, 'Liepaja', 'LVA', 'Liepaja', 89439);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2437, 'Maseru', 'LSO', 'Maseru', 297000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2438, 'Beirut', 'LBN', 'Beirut', 1100000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2439, 'Tripoli', 'LBN', 'al-Shamal', 240000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2440, 'Monrovia', 'LBR', 'Montserrado', 850000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2441, 'Tripoli', 'LBY', 'Tripoli', 1682000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2442, 'Bengasi', 'LBY', 'Bengasi', 804000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2443, 'Misrata', 'LBY', 'Misrata', 121669);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2444, 'al-Zawiya', 'LBY', 'al-Zawiya', 89338);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2445, 'Schaan', 'LIE', 'Schaan', 5346);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2446, 'Vaduz', 'LIE', 'Vaduz', 5043);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2447, 'Vilnius', 'LTU', 'Vilna', 577969);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2448, 'Kaunas', 'LTU', 'Kaunas', 412639);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2449, 'Klaipeda', 'LTU', 'Klaipeda', 202451);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2450, 'ÂŠiauliai', 'LTU', 'ÂŠiauliai', 146563);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2451, 'Panevezys', 'LTU', 'Panevezys', 133695);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2452, 'Luxembourg [Luxemburg/LÃ«tzebuerg]', 'LUX', 'Luxembourg', 80700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2453, 'El-AaiÃºn', 'ESH', 'El-AaiÃºn', 169000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2454, 'Macao', 'MAC', 'Macau', 437500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2455, 'Antananarivo', 'MDG', 'Antananarivo', 675669);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2456, 'Toamasina', 'MDG', 'Toamasina', 127441);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2457, 'AntsirabÃ©', 'MDG', 'Antananarivo', 120239);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2458, 'Mahajanga', 'MDG', 'Mahajanga', 100807);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2459, 'Fianarantsoa', 'MDG', 'Fianarantsoa', 99005);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2460, 'Skopje', 'MKD', 'Skopje', 444299);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2461, 'Blantyre', 'MWI', 'Blantyre', 478155);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2462, 'Lilongwe', 'MWI', 'Lilongwe', 435964);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2463, 'Male', 'MDV', 'Maale', 71000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2464, 'Kuala Lumpur', 'MYS', 'Wilayah Persekutuan', 1297526);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2465, 'Ipoh', 'MYS', 'Perak', 382853);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2466, 'Johor Baharu', 'MYS', 'Johor', 328436);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2467, 'Petaling Jaya', 'MYS', 'Selangor', 254350);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2468, 'Kelang', 'MYS', 'Selangor', 243355);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2469, 'Kuala Terengganu', 'MYS', 'Terengganu', 228119);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2470, 'Pinang', 'MYS', 'Pulau Pinang', 219603);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2471, 'Kota Bharu', 'MYS', 'Kelantan', 219582);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2472, 'Kuantan', 'MYS', 'Pahang', 199484);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2473, 'Taiping', 'MYS', 'Perak', 183261);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2474, 'Seremban', 'MYS', 'Negeri Sembilan', 182869);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2475, 'Kuching', 'MYS', 'Sarawak', 148059);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2476, 'Sibu', 'MYS', 'Sarawak', 126381);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2477, 'Sandakan', 'MYS', 'Sabah', 125841);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2478, 'Alor Setar', 'MYS', 'Kedah', 124412);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2479, 'Selayang Baru', 'MYS', 'Selangor', 124228);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2480, 'Sungai Petani', 'MYS', 'Kedah', 114763);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2481, 'Shah Alam', 'MYS', 'Selangor', 102019);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2482, 'Bamako', 'MLI', 'Bamako', 809552);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2483, 'Birkirkara', 'MLT', 'Outer Harbour', 21445);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2484, 'Valletta', 'MLT', 'Inner Harbour', 7073);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2485, 'Casablanca', 'MAR', 'Casablanca', 2940623);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2486, 'Rabat', 'MAR', 'Rabat-SalÃ©-Zammour-Z', 623457);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2487, 'Marrakech', 'MAR', 'Marrakech-Tensift-Al', 621914);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2488, 'FÃ¨s', 'MAR', 'FÃ¨s-Boulemane', 541162);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2489, 'Tanger', 'MAR', 'Tanger-TÃ©touan', 521735);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2490, 'SalÃ©', 'MAR', 'Rabat-SalÃ©-Zammour-Z', 504420);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2491, 'MeknÃ¨s', 'MAR', 'MeknÃ¨s-Tafilalet', 460000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2492, 'Oujda', 'MAR', 'Oriental', 365382);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2493, 'KÃ©nitra', 'MAR', 'Gharb-Chrarda-BÃ©ni H', 292600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2494, 'TÃ©touan', 'MAR', 'Tanger-TÃ©touan', 277516);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2495, 'Safi', 'MAR', 'Doukkala-Abda', 262300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2496, 'Agadir', 'MAR', 'Souss Massa-DraÃ¢', 155244);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2497, 'Mohammedia', 'MAR', 'Casablanca', 154706);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2498, 'Khouribga', 'MAR', 'Chaouia-Ouardigha', 152090);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2499, 'Beni-Mellal', 'MAR', 'Tadla-Azilal', 140212);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2500, 'TÃ©mara', 'MAR', 'Rabat-SalÃ©-Zammour-Z', 126303);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2501, 'El Jadida', 'MAR', 'Doukkala-Abda', 119083);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2502, 'Nador', 'MAR', 'Oriental', 112450);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2503, 'Ksar el Kebir', 'MAR', 'Tanger-TÃ©touan', 107065);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2504, 'Settat', 'MAR', 'Chaouia-Ouardigha', 96200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2505, 'Taza', 'MAR', 'Taza-Al Hoceima-Taou', 92700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2506, 'El Araich', 'MAR', 'Tanger-TÃ©touan', 90400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2507, 'Dalap-Uliga-Darrit', 'MHL', 'Majuro', 28000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2508, 'Fort-de-France', 'MTQ', 'Fort-de-France', 94050);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2509, 'Nouakchott', 'MRT', 'Nouakchott', 667300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2510, 'NouÃ¢dhibou', 'MRT', 'Dakhlet NouÃ¢dhibou', 97600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2511, 'Port-Louis', 'MUS', 'Port-Louis', 138200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2512, 'Beau Bassin-Rose Hill', 'MUS', 'Plaines Wilhelms', 100616);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2513, 'Vacoas-Phoenix', 'MUS', 'Plaines Wilhelms', 98464);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2514, 'Mamoutzou', 'MYT', 'Mamoutzou', 12000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2515, 'Ciudad de MÃ©xico', 'MEX', 'Distrito Federal', 8591309);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2516, 'Guadalajara', 'MEX', 'Jalisco', 1647720);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2517, 'Ecatepec de Morelos', 'MEX', 'MÃ©xico', 1620303);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2518, 'Puebla', 'MEX', 'Puebla', 1346176);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2519, 'NezahualcÃ³yotl', 'MEX', 'MÃ©xico', 1224924);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2520, 'JuÃ¡rez', 'MEX', 'Chihuahua', 1217818);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2521, 'Tijuana', 'MEX', 'Baja California', 1212232);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2522, 'LeÃ³n', 'MEX', 'Guanajuato', 1133576);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2523, 'Monterrey', 'MEX', 'Nuevo LeÃ³n', 1108499);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2524, 'Zapopan', 'MEX', 'Jalisco', 1002239);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2525, 'Naucalpan de JuÃ¡rez', 'MEX', 'MÃ©xico', 857511);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2526, 'Mexicali', 'MEX', 'Baja California', 764902);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2527, 'CuliacÃ¡n', 'MEX', 'Sinaloa', 744859);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2528, 'Acapulco de JuÃ¡rez', 'MEX', 'Guerrero', 721011);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2529, 'Tlalnepantla de Baz', 'MEX', 'MÃ©xico', 720755);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2530, 'MÃ©rida', 'MEX', 'YucatÃ¡n', 703324);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2531, 'Chihuahua', 'MEX', 'Chihuahua', 670208);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2532, 'San Luis PotosÃ­', 'MEX', 'San Luis PotosÃ­', 669353);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2533, 'Guadalupe', 'MEX', 'Nuevo LeÃ³n', 668780);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2534, 'Toluca', 'MEX', 'MÃ©xico', 665617);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2535, 'Aguascalientes', 'MEX', 'Aguascalientes', 643360);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2536, 'QuerÃ©taro', 'MEX', 'QuerÃ©taro de Arteaga', 639839);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2537, 'Morelia', 'MEX', 'MichoacÃ¡n de Ocampo', 619958);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2538, 'Hermosillo', 'MEX', 'Sonora', 608697);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2539, 'Saltillo', 'MEX', 'Coahuila de Zaragoza', 577352);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2540, 'TorreÃ³n', 'MEX', 'Coahuila de Zaragoza', 529093);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2541, 'Centro (Villahermosa)', 'MEX', 'Tabasco', 519873);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2542, 'San NicolÃ¡s de los Garza', 'MEX', 'Nuevo LeÃ³n', 495540);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2543, 'Durango', 'MEX', 'Durango', 490524);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2544, 'ChimalhuacÃ¡n', 'MEX', 'MÃ©xico', 490245);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2545, 'Tlaquepaque', 'MEX', 'Jalisco', 475472);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2546, 'AtizapÃ¡n de Zaragoza', 'MEX', 'MÃ©xico', 467262);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2547, 'Veracruz', 'MEX', 'Veracruz', 457119);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2548, 'CuautitlÃ¡n Izcalli', 'MEX', 'MÃ©xico', 452976);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2549, 'Irapuato', 'MEX', 'Guanajuato', 440039);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2550, 'Tuxtla GutiÃ©rrez', 'MEX', 'Chiapas', 433544);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2551, 'TultitlÃ¡n', 'MEX', 'MÃ©xico', 432411);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2552, 'Reynosa', 'MEX', 'Tamaulipas', 419776);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2553, 'Benito JuÃ¡rez', 'MEX', 'Quintana Roo', 419276);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2554, 'Matamoros', 'MEX', 'Tamaulipas', 416428);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2555, 'Xalapa', 'MEX', 'Veracruz', 390058);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2556, 'Celaya', 'MEX', 'Guanajuato', 382140);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2557, 'MazatlÃ¡n', 'MEX', 'Sinaloa', 380265);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2558, 'Ensenada', 'MEX', 'Baja California', 369573);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2559, 'Ahome', 'MEX', 'Sinaloa', 358663);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2560, 'Cajeme', 'MEX', 'Sonora', 355679);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2561, 'Cuernavaca', 'MEX', 'Morelos', 337966);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2562, 'TonalÃ¡', 'MEX', 'Jalisco', 336109);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2563, 'Valle de Chalco Solidaridad', 'MEX', 'MÃ©xico', 323113);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2564, 'Nuevo Laredo', 'MEX', 'Tamaulipas', 310277);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2565, 'Tepic', 'MEX', 'Nayarit', 305025);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2566, 'Tampico', 'MEX', 'Tamaulipas', 294789);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2567, 'Ixtapaluca', 'MEX', 'MÃ©xico', 293160);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2568, 'Apodaca', 'MEX', 'Nuevo LeÃ³n', 282941);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2569, 'Guasave', 'MEX', 'Sinaloa', 277201);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2570, 'GÃ³mez Palacio', 'MEX', 'Durango', 272806);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2571, 'Tapachula', 'MEX', 'Chiapas', 271141);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2572, 'NicolÃ¡s Romero', 'MEX', 'MÃ©xico', 269393);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2573, 'Coatzacoalcos', 'MEX', 'Veracruz', 267037);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2574, 'Uruapan', 'MEX', 'MichoacÃ¡n de Ocampo', 265211);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2575, 'Victoria', 'MEX', 'Tamaulipas', 262686);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2576, 'Oaxaca de JuÃ¡rez', 'MEX', 'Oaxaca', 256848);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2577, 'Coacalco de BerriozÃ¡bal', 'MEX', 'MÃ©xico', 252270);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2578, 'Pachuca de Soto', 'MEX', 'Hidalgo', 244688);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2579, 'General Escobedo', 'MEX', 'Nuevo LeÃ³n', 232961);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2580, 'Salamanca', 'MEX', 'Guanajuato', 226864);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2581, 'Santa Catarina', 'MEX', 'Nuevo LeÃ³n', 226573);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2582, 'TehuacÃ¡n', 'MEX', 'Puebla', 225943);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2583, 'Chalco', 'MEX', 'MÃ©xico', 222201);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2584, 'CÃ¡rdenas', 'MEX', 'Tabasco', 216903);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2585, 'Campeche', 'MEX', 'Campeche', 216735);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2586, 'La Paz', 'MEX', 'MÃ©xico', 213045);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2587, 'OthÃ³n P. Blanco (Chetumal)', 'MEX', 'Quintana Roo', 208014);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2588, 'Texcoco', 'MEX', 'MÃ©xico', 203681);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2589, 'La Paz', 'MEX', 'Baja California Sur', 196708);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2590, 'Metepec', 'MEX', 'MÃ©xico', 194265);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2591, 'Monclova', 'MEX', 'Coahuila de Zaragoza', 193657);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2592, 'Huixquilucan', 'MEX', 'MÃ©xico', 193156);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2593, 'Chilpancingo de los Bravo', 'MEX', 'Guerrero', 192509);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2594, 'Puerto Vallarta', 'MEX', 'Jalisco', 183741);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2595, 'Fresnillo', 'MEX', 'Zacatecas', 182744);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2596, 'Ciudad Madero', 'MEX', 'Tamaulipas', 182012);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2597, 'Soledad de Graciano SÃ¡nchez', 'MEX', 'San Luis PotosÃ­', 179956);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2598, 'San Juan del RÃ­o', 'MEX', 'QuerÃ©taro', 179300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2599, 'San Felipe del Progreso', 'MEX', 'MÃ©xico', 177330);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2600, 'CÃ³rdoba', 'MEX', 'Veracruz', 176952);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2601, 'TecÃ¡mac', 'MEX', 'MÃ©xico', 172410);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2602, 'Ocosingo', 'MEX', 'Chiapas', 171495);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2603, 'Carmen', 'MEX', 'Campeche', 171367);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2604, 'LÃ¡zaro CÃ¡rdenas', 'MEX', 'MichoacÃ¡n de Ocampo', 170878);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2605, 'Jiutepec', 'MEX', 'Morelos', 170428);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2606, 'Papantla', 'MEX', 'Veracruz', 170123);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2607, 'Comalcalco', 'MEX', 'Tabasco', 164640);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2608, 'Zamora', 'MEX', 'MichoacÃ¡n de Ocampo', 161191);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2609, 'Nogales', 'MEX', 'Sonora', 159103);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2610, 'Huimanguillo', 'MEX', 'Tabasco', 158335);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2611, 'Cuautla', 'MEX', 'Morelos', 153132);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2612, 'MinatitlÃ¡n', 'MEX', 'Veracruz', 152983);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2613, 'Poza Rica de Hidalgo', 'MEX', 'Veracruz', 152678);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2614, 'Ciudad Valles', 'MEX', 'San Luis PotosÃ­', 146411);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2615, 'Navolato', 'MEX', 'Sinaloa', 145396);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2616, 'San Luis RÃ­o Colorado', 'MEX', 'Sonora', 145276);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2617, 'PÃ©njamo', 'MEX', 'Guanajuato', 143927);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2618, 'San AndrÃ©s Tuxtla', 'MEX', 'Veracruz', 142251);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2619, 'Guanajuato', 'MEX', 'Guanajuato', 141215);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2620, 'Navojoa', 'MEX', 'Sonora', 140495);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2621, 'ZitÃ¡cuaro', 'MEX', 'MichoacÃ¡n de Ocampo', 137970);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2622, 'Boca del RÃ­o', 'MEX', 'Veracruz-Llave', 135721);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2623, 'Allende', 'MEX', 'Guanajuato', 134645);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2624, 'Silao', 'MEX', 'Guanajuato', 134037);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2625, 'Macuspana', 'MEX', 'Tabasco', 133795);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2626, 'San Juan Bautista Tuxtepec', 'MEX', 'Oaxaca', 133675);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2627, 'San CristÃ³bal de las Casas', 'MEX', 'Chiapas', 132317);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2628, 'Valle de Santiago', 'MEX', 'Guanajuato', 130557);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2629, 'Guaymas', 'MEX', 'Sonora', 130108);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2630, 'Colima', 'MEX', 'Colima', 129454);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2631, 'Dolores Hidalgo', 'MEX', 'Guanajuato', 128675);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2632, 'Lagos de Moreno', 'MEX', 'Jalisco', 127949);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2633, 'Piedras Negras', 'MEX', 'Coahuila de Zaragoza', 127898);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2634, 'Altamira', 'MEX', 'Tamaulipas', 127490);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2635, 'TÃºxpam', 'MEX', 'Veracruz', 126475);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2636, 'San Pedro Garza GarcÃ­a', 'MEX', 'Nuevo LeÃ³n', 126147);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2637, 'CuauhtÃ©moc', 'MEX', 'Chihuahua', 124279);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2638, 'Manzanillo', 'MEX', 'Colima', 124014);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2639, 'Iguala de la Independencia', 'MEX', 'Guerrero', 123883);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2640, 'Zacatecas', 'MEX', 'Zacatecas', 123700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2641, 'Tlajomulco de ZÃºÃ±iga', 'MEX', 'Jalisco', 123220);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2642, 'Tulancingo de Bravo', 'MEX', 'Hidalgo', 121946);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2643, 'Zinacantepec', 'MEX', 'MÃ©xico', 121715);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2644, 'San MartÃ­n Texmelucan', 'MEX', 'Puebla', 121093);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2645, 'TepatitlÃ¡n de Morelos', 'MEX', 'Jalisco', 118948);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2646, 'MartÃ­nez de la Torre', 'MEX', 'Veracruz', 118815);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2647, 'Orizaba', 'MEX', 'Veracruz', 118488);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2648, 'ApatzingÃ¡n', 'MEX', 'MichoacÃ¡n de Ocampo', 117849);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2649, 'Atlixco', 'MEX', 'Puebla', 117019);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2650, 'Delicias', 'MEX', 'Chihuahua', 116132);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2651, 'Ixtlahuaca', 'MEX', 'MÃ©xico', 115548);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2652, 'El Mante', 'MEX', 'Tamaulipas', 112453);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2653, 'Lerdo', 'MEX', 'Durango', 112272);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2654, 'Almoloya de JuÃ¡rez', 'MEX', 'MÃ©xico', 110550);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2655, 'AcÃ¡mbaro', 'MEX', 'Guanajuato', 110487);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2656, 'AcuÃ±a', 'MEX', 'Coahuila de Zaragoza', 110388);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2657, 'Guadalupe', 'MEX', 'Zacatecas', 108881);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2658, 'Huejutla de Reyes', 'MEX', 'Hidalgo', 108017);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2659, 'Hidalgo', 'MEX', 'MichoacÃ¡n de Ocampo', 106198);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2660, 'Los Cabos', 'MEX', 'Baja California Sur', 105199);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2661, 'ComitÃ¡n de DomÃ­nguez', 'MEX', 'Chiapas', 104986);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2662, 'CunduacÃ¡n', 'MEX', 'Tabasco', 104164);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2663, 'RÃ­o Bravo', 'MEX', 'Tamaulipas', 103901);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2664, 'Temapache', 'MEX', 'Veracruz', 102824);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2665, 'Chilapa de Alvarez', 'MEX', 'Guerrero', 102716);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2666, 'Hidalgo del Parral', 'MEX', 'Chihuahua', 100881);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2667, 'San Francisco del RincÃ³n', 'MEX', 'Guanajuato', 100149);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2668, 'Taxco de AlarcÃ³n', 'MEX', 'Guerrero', 99907);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2669, 'Zumpango', 'MEX', 'MÃ©xico', 99781);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2670, 'San Pedro Cholula', 'MEX', 'Puebla', 99734);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2671, 'Lerma', 'MEX', 'MÃ©xico', 99714);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2672, 'TecomÃ¡n', 'MEX', 'Colima', 99296);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2673, 'Las Margaritas', 'MEX', 'Chiapas', 97389);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2674, 'Cosoleacaque', 'MEX', 'Veracruz', 97199);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2675, 'San Luis de la Paz', 'MEX', 'Guanajuato', 96763);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2676, 'JosÃ© Azueta', 'MEX', 'Guerrero', 95448);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2677, 'Santiago Ixcuintla', 'MEX', 'Nayarit', 95311);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2678, 'San Felipe', 'MEX', 'Guanajuato', 95305);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2679, 'Tejupilco', 'MEX', 'MÃ©xico', 94934);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2680, 'Tantoyuca', 'MEX', 'Veracruz', 94709);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2681, 'Salvatierra', 'MEX', 'Guanajuato', 94322);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2682, 'Tultepec', 'MEX', 'MÃ©xico', 93364);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2683, 'Temixco', 'MEX', 'Morelos', 92686);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2684, 'Matamoros', 'MEX', 'Coahuila de Zaragoza', 91858);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2685, 'PÃ¡nuco', 'MEX', 'Veracruz', 90551);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2686, 'El Fuerte', 'MEX', 'Sinaloa', 89556);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2687, 'Tierra Blanca', 'MEX', 'Veracruz', 89143);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2688, 'Weno', 'FSM', 'Chuuk', 22000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2689, 'Palikir', 'FSM', 'Pohnpei', 8600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2690, 'Chisinau', 'MDA', 'Chisinau', 719900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2691, 'Tiraspol', 'MDA', 'Dnjestria', 194300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2692, 'Balti', 'MDA', 'Balti', 153400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2693, 'Bender (TÃ®ghina)', 'MDA', 'Bender (TÃ®ghina)', 125700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2694, 'Monte-Carlo', 'MCO', 'Â–', 13154);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2695, 'Monaco-Ville', 'MCO', 'Â–', 1234);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2696, 'Ulan Bator', 'MNG', 'Ulaanbaatar', 773700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2697, 'Plymouth', 'MSR', 'Plymouth', 2000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2698, 'Maputo', 'MOZ', 'Maputo', 1018938);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2699, 'Matola', 'MOZ', 'Maputo', 424662);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2700, 'Beira', 'MOZ', 'Sofala', 397368);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2701, 'Nampula', 'MOZ', 'Nampula', 303346);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2702, 'Chimoio', 'MOZ', 'Manica', 171056);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2703, 'NaÃ§ala-Porto', 'MOZ', 'Nampula', 158248);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2704, 'Quelimane', 'MOZ', 'ZambÃ©zia', 150116);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2705, 'Mocuba', 'MOZ', 'ZambÃ©zia', 124700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2706, 'Tete', 'MOZ', 'Tete', 101984);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2707, 'Xai-Xai', 'MOZ', 'Gaza', 99442);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2708, 'Gurue', 'MOZ', 'ZambÃ©zia', 99300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2709, 'Maxixe', 'MOZ', 'Inhambane', 93985);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2710, 'Rangoon (Yangon)', 'MMR', 'Rangoon [Yangon]', 3361700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2711, 'Mandalay', 'MMR', 'Mandalay', 885300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2712, 'Moulmein (Mawlamyine)', 'MMR', 'Mon', 307900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2713, 'Pegu (Bago)', 'MMR', 'Pegu [Bago]', 190900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2714, 'Bassein (Pathein)', 'MMR', 'Irrawaddy [Ayeyarwad', 183900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2715, 'Monywa', 'MMR', 'Sagaing', 138600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2716, 'Sittwe (Akyab)', 'MMR', 'Rakhine', 137600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2717, 'Taunggyi (Taunggye)', 'MMR', 'Shan', 131500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2718, 'Meikhtila', 'MMR', 'Mandalay', 129700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2719, 'Mergui (Myeik)', 'MMR', 'Tenasserim [Tanintha', 122700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2720, 'Lashio (Lasho)', 'MMR', 'Shan', 107600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2721, 'Prome (Pyay)', 'MMR', 'Pegu [Bago]', 105700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2722, 'Henzada (Hinthada)', 'MMR', 'Irrawaddy [Ayeyarwad', 104700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2723, 'Myingyan', 'MMR', 'Mandalay', 103600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2724, 'Tavoy (Dawei)', 'MMR', 'Tenasserim [Tanintha', 96800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2725, 'Pagakku (Pakokku)', 'MMR', 'Magwe [Magway]', 94800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2726, 'Windhoek', 'NAM', 'Khomas', 169000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2727, 'Yangor', 'NRU', 'Â–', 4050);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2728, 'Yaren', 'NRU', 'Â–', 559);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2729, 'Kathmandu', 'NPL', 'Central', 591835);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2730, 'Biratnagar', 'NPL', 'Eastern', 157764);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2731, 'Pokhara', 'NPL', 'Western', 146318);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2732, 'Lalitapur', 'NPL', 'Central', 145847);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2733, 'Birgunj', 'NPL', 'Central', 90639);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2734, 'Managua', 'NIC', 'Managua', 959000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2735, 'LeÃ³n', 'NIC', 'LeÃ³n', 123865);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2736, 'Chinandega', 'NIC', 'Chinandega', 97387);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2737, 'Masaya', 'NIC', 'Masaya', 88971);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2738, 'Niamey', 'NER', 'Niamey', 420000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2739, 'Zinder', 'NER', 'Zinder', 120892);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2740, 'Maradi', 'NER', 'Maradi', 112965);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2741, 'Lagos', 'NGA', 'Lagos', 1518000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2742, 'Ibadan', 'NGA', 'Oyo & Osun', 1432000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2743, 'Ogbomosho', 'NGA', 'Oyo & Osun', 730000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2744, 'Kano', 'NGA', 'Kano & Jigawa', 674100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2745, 'Oshogbo', 'NGA', 'Oyo & Osun', 476800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2746, 'Ilorin', 'NGA', 'Kwara & Kogi', 475800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2747, 'Abeokuta', 'NGA', 'Ogun', 427400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2748, 'Port Harcourt', 'NGA', 'Rivers & Bayelsa', 410000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2749, 'Zaria', 'NGA', 'Kaduna', 379200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2750, 'Ilesha', 'NGA', 'Oyo & Osun', 378400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2751, 'Onitsha', 'NGA', 'Anambra & Enugu & Eb', 371900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2752, 'Iwo', 'NGA', 'Oyo & Osun', 362000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2753, 'Ado-Ekiti', 'NGA', 'Ondo & Ekiti', 359400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2754, 'Abuja', 'NGA', 'Federal Capital Dist', 350100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2755, 'Kaduna', 'NGA', 'Kaduna', 342200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2756, 'Mushin', 'NGA', 'Lagos', 333200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2757, 'Maiduguri', 'NGA', 'Borno & Yobe', 320000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2758, 'Enugu', 'NGA', 'Anambra & Enugu & Eb', 316100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2759, 'Ede', 'NGA', 'Oyo & Osun', 307100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2760, 'Aba', 'NGA', 'Imo & Abia', 298900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2761, 'Ife', 'NGA', 'Oyo & Osun', 296800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2762, 'Ila', 'NGA', 'Oyo & Osun', 264000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2763, 'Oyo', 'NGA', 'Oyo & Osun', 256400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2764, 'Ikerre', 'NGA', 'Ondo & Ekiti', 244600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2765, 'Benin City', 'NGA', 'Edo & Delta', 229400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2766, 'Iseyin', 'NGA', 'Oyo & Osun', 217300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2767, 'Katsina', 'NGA', 'Katsina', 206500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2768, 'Jos', 'NGA', 'Plateau & Nassarawa', 206300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2769, 'Sokoto', 'NGA', 'Sokoto & Kebbi & Zam', 204900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2770, 'Ilobu', 'NGA', 'Oyo & Osun', 199000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2771, 'Offa', 'NGA', 'Kwara & Kogi', 197200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2772, 'Ikorodu', 'NGA', 'Lagos', 184900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2773, 'Ilawe-Ekiti', 'NGA', 'Ondo & Ekiti', 184500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2774, 'Owo', 'NGA', 'Ondo & Ekiti', 183500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2775, 'Ikirun', 'NGA', 'Oyo & Osun', 181400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2776, 'Shaki', 'NGA', 'Oyo & Osun', 174500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2777, 'Calabar', 'NGA', 'Cross River', 174400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2778, 'Ondo', 'NGA', 'Ondo & Ekiti', 173600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2779, 'Akure', 'NGA', 'Ondo & Ekiti', 162300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2780, 'Gusau', 'NGA', 'Sokoto & Kebbi & Zam', 158000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2781, 'Ijebu-Ode', 'NGA', 'Ogun', 156400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2782, 'Effon-Alaiye', 'NGA', 'Oyo & Osun', 153100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2783, 'Kumo', 'NGA', 'Bauchi & Gombe', 148000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2784, 'Shomolu', 'NGA', 'Lagos', 147700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2785, 'Oka-Akoko', 'NGA', 'Ondo & Ekiti', 142900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2786, 'Ikare', 'NGA', 'Ondo & Ekiti', 140800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2787, 'Sapele', 'NGA', 'Edo & Delta', 139200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2788, 'Deba Habe', 'NGA', 'Bauchi & Gombe', 138600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2789, 'Minna', 'NGA', 'Niger', 136900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2790, 'Warri', 'NGA', 'Edo & Delta', 126100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2791, 'Bida', 'NGA', 'Niger', 125500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2792, 'Ikire', 'NGA', 'Oyo & Osun', 123300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2793, 'Makurdi', 'NGA', 'Benue', 123100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2794, 'Lafia', 'NGA', 'Plateau & Nassarawa', 122500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2795, 'Inisa', 'NGA', 'Oyo & Osun', 119800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2796, 'Shagamu', 'NGA', 'Ogun', 117200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2797, 'Awka', 'NGA', 'Anambra & Enugu & Eb', 111200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2798, 'Gombe', 'NGA', 'Bauchi & Gombe', 107800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2799, 'Igboho', 'NGA', 'Oyo & Osun', 106800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2800, 'Ejigbo', 'NGA', 'Oyo & Osun', 105900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2801, 'Agege', 'NGA', 'Lagos', 105000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2802, 'Ise-Ekiti', 'NGA', 'Ondo & Ekiti', 103400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2803, 'Ugep', 'NGA', 'Cross River', 102600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2804, 'Epe', 'NGA', 'Lagos', 101000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2805, 'Alofi', 'NIU', 'Â–', 682);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2806, 'Kingston', 'NFK', 'Â–', 800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2807, 'Oslo', 'NOR', 'Oslo', 508726);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2808, 'Bergen', 'NOR', 'Hordaland', 230948);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2809, 'Trondheim', 'NOR', 'SÃ¸r-TrÃ¸ndelag', 150166);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2810, 'Stavanger', 'NOR', 'Rogaland', 108848);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2811, 'BÃ¦rum', 'NOR', 'Akershus', 101340);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2812, 'Abidjan', 'CIV', 'Abidjan', 2500000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2813, 'BouakÃ©', 'CIV', 'BouakÃ©', 329850);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2814, 'Yamoussoukro', 'CIV', 'Yamoussoukro', 130000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2815, 'Daloa', 'CIV', 'Daloa', 121842);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2816, 'Korhogo', 'CIV', 'Korhogo', 109445);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2817, 'al-Sib', 'OMN', 'Masqat', 155000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2818, 'Salala', 'OMN', 'Zufar', 131813);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2819, 'Bawshar', 'OMN', 'Masqat', 107500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2820, 'Suhar', 'OMN', 'al-Batina', 90814);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2821, 'Masqat', 'OMN', 'Masqat', 51969);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2822, 'Karachi', 'PAK', 'Sindh', 9269265);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2823, 'Lahore', 'PAK', 'Punjab', 5063499);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2824, 'Faisalabad', 'PAK', 'Punjab', 1977246);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2825, 'Rawalpindi', 'PAK', 'Punjab', 1406214);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2826, 'Multan', 'PAK', 'Punjab', 1182441);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2827, 'Hyderabad', 'PAK', 'Sindh', 1151274);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2828, 'Gujranwala', 'PAK', 'Punjab', 1124749);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2829, 'Peshawar', 'PAK', 'Nothwest Border Prov', 988005);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2830, 'Quetta', 'PAK', 'Baluchistan', 560307);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2831, 'Islamabad', 'PAK', 'Islamabad', 524500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2832, 'Sargodha', 'PAK', 'Punjab', 455360);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2833, 'Sialkot', 'PAK', 'Punjab', 417597);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2834, 'Bahawalpur', 'PAK', 'Punjab', 403408);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2835, 'Sukkur', 'PAK', 'Sindh', 329176);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2836, 'Jhang', 'PAK', 'Punjab', 292214);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2837, 'Sheikhupura', 'PAK', 'Punjab', 271875);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2838, 'Larkana', 'PAK', 'Sindh', 270366);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2839, 'Gujrat', 'PAK', 'Punjab', 250121);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2840, 'Mardan', 'PAK', 'Nothwest Border Prov', 244511);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2841, 'Kasur', 'PAK', 'Punjab', 241649);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2842, 'Rahim Yar Khan', 'PAK', 'Punjab', 228479);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2843, 'Sahiwal', 'PAK', 'Punjab', 207388);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2844, 'Okara', 'PAK', 'Punjab', 200901);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2845, 'Wah', 'PAK', 'Punjab', 198400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2846, 'Dera Ghazi Khan', 'PAK', 'Punjab', 188100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2847, 'Mirpur Khas', 'PAK', 'Sind', 184500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2848, 'Nawabshah', 'PAK', 'Sind', 183100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2849, 'Mingora', 'PAK', 'Nothwest Border Prov', 174500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2850, 'Chiniot', 'PAK', 'Punjab', 169300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2851, 'Kamoke', 'PAK', 'Punjab', 151000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2852, 'Mandi Burewala', 'PAK', 'Punjab', 149900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2853, 'Jhelum', 'PAK', 'Punjab', 145800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2854, 'Sadiqabad', 'PAK', 'Punjab', 141500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2855, 'Jacobabad', 'PAK', 'Sind', 137700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2856, 'Shikarpur', 'PAK', 'Sind', 133300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2857, 'Khanewal', 'PAK', 'Punjab', 133000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2858, 'Hafizabad', 'PAK', 'Punjab', 130200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2859, 'Kohat', 'PAK', 'Nothwest Border Prov', 125300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2860, 'Muzaffargarh', 'PAK', 'Punjab', 121600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2861, 'Khanpur', 'PAK', 'Punjab', 117800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2862, 'Gojra', 'PAK', 'Punjab', 115000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2863, 'Bahawalnagar', 'PAK', 'Punjab', 109600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2864, 'Muridke', 'PAK', 'Punjab', 108600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2865, 'Pak Pattan', 'PAK', 'Punjab', 107800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2866, 'Abottabad', 'PAK', 'Nothwest Border Prov', 106000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2867, 'Tando Adam', 'PAK', 'Sind', 103400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2868, 'Jaranwala', 'PAK', 'Punjab', 103300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2869, 'Khairpur', 'PAK', 'Sind', 102200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2870, 'Chishtian Mandi', 'PAK', 'Punjab', 101700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2871, 'Daska', 'PAK', 'Punjab', 101500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2872, 'Dadu', 'PAK', 'Sind', 98600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2873, 'Mandi Bahauddin', 'PAK', 'Punjab', 97300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2874, 'Ahmadpur East', 'PAK', 'Punjab', 96000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2875, 'Kamalia', 'PAK', 'Punjab', 95300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2876, 'Khuzdar', 'PAK', 'Baluchistan', 93100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2877, 'Vihari', 'PAK', 'Punjab', 92300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2878, 'Dera Ismail Khan', 'PAK', 'Nothwest Border Prov', 90400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2879, 'Wazirabad', 'PAK', 'Punjab', 89700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2880, 'Nowshera', 'PAK', 'Nothwest Border Prov', 89400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2881, 'Koror', 'PLW', 'Koror', 12000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2882, 'Ciudad de PanamÃ¡', 'PAN', 'PanamÃ¡', 471373);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2883, 'San Miguelito', 'PAN', 'San Miguelito', 315382);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2884, 'Port Moresby', 'PNG', 'National Capital Dis', 247000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2885, 'AsunciÃ³n', 'PRY', 'AsunciÃ³n', 557776);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2886, 'Ciudad del Este', 'PRY', 'Alto ParanÃ¡', 133881);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2887, 'San Lorenzo', 'PRY', 'Central', 133395);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2888, 'LambarÃ©', 'PRY', 'Central', 99681);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2889, 'Fernando de la Mora', 'PRY', 'Central', 95287);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2890, 'Lima', 'PER', 'Lima', 6464693);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2891, 'Arequipa', 'PER', 'Arequipa', 762000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2892, 'Trujillo', 'PER', 'La Libertad', 652000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2893, 'Chiclayo', 'PER', 'Lambayeque', 517000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2894, 'Callao', 'PER', 'Callao', 424294);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2895, 'Iquitos', 'PER', 'Loreto', 367000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2896, 'Chimbote', 'PER', 'Ancash', 336000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2897, 'Huancayo', 'PER', 'JunÃ­n', 327000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2898, 'Piura', 'PER', 'Piura', 325000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2899, 'Cusco', 'PER', 'Cusco', 291000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2900, 'Pucallpa', 'PER', 'Ucayali', 220866);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2901, 'Tacna', 'PER', 'Tacna', 215683);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2902, 'Ica', 'PER', 'Ica', 194820);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2903, 'Sullana', 'PER', 'Piura', 147361);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2904, 'Juliaca', 'PER', 'Puno', 142576);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2905, 'HuÃ¡nuco', 'PER', 'Huanuco', 129688);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2906, 'Ayacucho', 'PER', 'Ayacucho', 118960);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2907, 'Chincha Alta', 'PER', 'Ica', 110016);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2908, 'Cajamarca', 'PER', 'Cajamarca', 108009);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2909, 'Puno', 'PER', 'Puno', 101578);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2910, 'Ventanilla', 'PER', 'Callao', 101056);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2911, 'Castilla', 'PER', 'Piura', 90642);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2912, 'Adamstown', 'PCN', 'Â–', 42);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2913, 'Garapan', 'MNP', 'Saipan', 9200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2914, 'Lisboa', 'PRT', 'Lisboa', 563210);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2915, 'Porto', 'PRT', 'Porto', 273060);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2916, 'Amadora', 'PRT', 'Lisboa', 122106);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2917, 'CoÃ­mbra', 'PRT', 'CoÃ­mbra', 96100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2918, 'Braga', 'PRT', 'Braga', 90535);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2919, 'San Juan', 'PRI', 'San Juan', 434374);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2920, 'BayamÃ³n', 'PRI', 'BayamÃ³n', 224044);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2921, 'Ponce', 'PRI', 'Ponce', 186475);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2922, 'Carolina', 'PRI', 'Carolina', 186076);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2923, 'Caguas', 'PRI', 'Caguas', 140502);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2924, 'Arecibo', 'PRI', 'Arecibo', 100131);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2925, 'Guaynabo', 'PRI', 'Guaynabo', 100053);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2926, 'MayagÃ¼ez', 'PRI', 'MayagÃ¼ez', 98434);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2927, 'Toa Baja', 'PRI', 'Toa Baja', 94085);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2928, 'Warszawa', 'POL', 'Mazowieckie', 1615369);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2929, 'LÃ³dz', 'POL', 'Lodzkie', 800110);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2930, 'KrakÃ³w', 'POL', 'Malopolskie', 738150);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2931, 'Wroclaw', 'POL', 'Dolnoslaskie', 636765);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2932, 'Poznan', 'POL', 'Wielkopolskie', 576899);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2933, 'Gdansk', 'POL', 'Pomorskie', 458988);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2934, 'Szczecin', 'POL', 'Zachodnio-Pomorskie', 416988);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2935, 'Bydgoszcz', 'POL', 'Kujawsko-Pomorskie', 386855);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2936, 'Lublin', 'POL', 'Lubelskie', 356251);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2937, 'Katowice', 'POL', 'Slaskie', 345934);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2938, 'Bialystok', 'POL', 'Podlaskie', 283937);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2939, 'Czestochowa', 'POL', 'Slaskie', 257812);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2940, 'Gdynia', 'POL', 'Pomorskie', 253521);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2941, 'Sosnowiec', 'POL', 'Slaskie', 244102);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2942, 'Radom', 'POL', 'Mazowieckie', 232262);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2943, 'Kielce', 'POL', 'Swietokrzyskie', 212383);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2944, 'Gliwice', 'POL', 'Slaskie', 212164);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2945, 'Torun', 'POL', 'Kujawsko-Pomorskie', 206158);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2946, 'Bytom', 'POL', 'Slaskie', 205560);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2947, 'Zabrze', 'POL', 'Slaskie', 200177);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2948, 'Bielsko-Biala', 'POL', 'Slaskie', 180307);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2949, 'Olsztyn', 'POL', 'Warminsko-Mazurskie', 170904);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2950, 'RzeszÃ³w', 'POL', 'Podkarpackie', 162049);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2951, 'Ruda Slaska', 'POL', 'Slaskie', 159665);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2952, 'Rybnik', 'POL', 'Slaskie', 144582);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2953, 'Walbrzych', 'POL', 'Dolnoslaskie', 136923);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2954, 'Tychy', 'POL', 'Slaskie', 133178);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2955, 'Dabrowa GÃ³rnicza', 'POL', 'Slaskie', 131037);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2956, 'Plock', 'POL', 'Mazowieckie', 131011);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2957, 'Elblag', 'POL', 'Warminsko-Mazurskie', 129782);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2958, 'Opole', 'POL', 'Opolskie', 129553);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2959, 'GorzÃ³w Wielkopolski', 'POL', 'Lubuskie', 126019);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2960, 'Wloclawek', 'POL', 'Kujawsko-Pomorskie', 123373);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2961, 'ChorzÃ³w', 'POL', 'Slaskie', 121708);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2962, 'TarnÃ³w', 'POL', 'Malopolskie', 121494);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2963, 'Zielona GÃ³ra', 'POL', 'Lubuskie', 118182);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2964, 'Koszalin', 'POL', 'Zachodnio-Pomorskie', 112375);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2965, 'Legnica', 'POL', 'Dolnoslaskie', 109335);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2966, 'Kalisz', 'POL', 'Wielkopolskie', 106641);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2967, 'Grudziadz', 'POL', 'Kujawsko-Pomorskie', 102434);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2968, 'Slupsk', 'POL', 'Pomorskie', 102370);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2969, 'Jastrzebie-ZdrÃ³j', 'POL', 'Slaskie', 102294);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2970, 'Jaworzno', 'POL', 'Slaskie', 97929);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2971, 'Jelenia GÃ³ra', 'POL', 'Dolnoslaskie', 93901);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2972, 'Malabo', 'GNQ', 'Bioko', 40000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2973, 'Doha', 'QAT', 'Doha', 355000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2974, 'Paris', 'FRA', 'ÃŽle-de-France', 2125246);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2975, 'Marseille', 'FRA', 'Provence-Alpes-CÃ´te', 798430);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2976, 'Lyon', 'FRA', 'RhÃ´ne-Alpes', 445452);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2977, 'Toulouse', 'FRA', 'Midi-PyrÃ©nÃ©es', 390350);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2978, 'Nice', 'FRA', 'Provence-Alpes-CÃ´te', 342738);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2979, 'Nantes', 'FRA', 'Pays de la Loire', 270251);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2980, 'Strasbourg', 'FRA', 'Alsace', 264115);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2981, 'Montpellier', 'FRA', 'Languedoc-Roussillon', 225392);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2982, 'Bordeaux', 'FRA', 'Aquitaine', 215363);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2983, 'Rennes', 'FRA', 'Haute-Normandie', 206229);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2984, 'Le Havre', 'FRA', 'Champagne-Ardenne', 190905);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2985, 'Reims', 'FRA', 'Nord-Pas-de-Calais', 187206);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2986, 'Lille', 'FRA', 'RhÃ´ne-Alpes', 184657);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2987, 'St-Ã‰tienne', 'FRA', 'Bretagne', 180210);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2988, 'Toulon', 'FRA', 'Provence-Alpes-CÃ´te', 160639);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2989, 'Grenoble', 'FRA', 'RhÃ´ne-Alpes', 153317);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2990, 'Angers', 'FRA', 'Pays de la Loire', 151279);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2991, 'Dijon', 'FRA', 'Bourgogne', 149867);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2992, 'Brest', 'FRA', 'Bretagne', 149634);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2993, 'Le Mans', 'FRA', 'Pays de la Loire', 146105);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2994, 'Clermont-Ferrand', 'FRA', 'Auvergne', 137140);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2995, 'Amiens', 'FRA', 'Picardie', 135501);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2996, 'Aix-en-Provence', 'FRA', 'Provence-Alpes-CÃ´te', 134222);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2997, 'Limoges', 'FRA', 'Limousin', 133968);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2998, 'NÃ®mes', 'FRA', 'Languedoc-Roussillon', 133424);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (2999, 'Tours', 'FRA', 'Centre', 132820);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3000, 'Villeurbanne', 'FRA', 'RhÃ´ne-Alpes', 124215);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3001, 'Metz', 'FRA', 'Lorraine', 123776);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3002, 'BesanÃ§on', 'FRA', 'Franche-ComtÃ©', 117733);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3003, 'Caen', 'FRA', 'Basse-Normandie', 113987);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3004, 'OrlÃ©ans', 'FRA', 'Centre', 113126);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3005, 'Mulhouse', 'FRA', 'Alsace', 110359);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3006, 'Rouen', 'FRA', 'Haute-Normandie', 106592);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3007, 'Boulogne-Billancourt', 'FRA', 'ÃŽle-de-France', 106367);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3008, 'Perpignan', 'FRA', 'Languedoc-Roussillon', 105115);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3009, 'Nancy', 'FRA', 'Lorraine', 103605);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3010, 'Roubaix', 'FRA', 'Nord-Pas-de-Calais', 96984);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3011, 'Argenteuil', 'FRA', 'ÃŽle-de-France', 93961);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3012, 'Tourcoing', 'FRA', 'Nord-Pas-de-Calais', 93540);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3013, 'Montreuil', 'FRA', 'ÃŽle-de-France', 90674);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3014, 'Cayenne', 'GUF', 'Cayenne', 50699);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3015, 'Faaa', 'PYF', 'Tahiti', 25888);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3016, 'Papeete', 'PYF', 'Tahiti', 25553);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3017, 'Saint-Denis', 'REU', 'Saint-Denis', 131480);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3018, 'Bucuresti', 'ROM', 'Bukarest', 2016131);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3019, 'Iasi', 'ROM', 'Iasi', 348070);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3020, 'Constanta', 'ROM', 'Constanta', 342264);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3021, 'Cluj-Napoca', 'ROM', 'Cluj', 332498);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3022, 'Galati', 'ROM', 'Galati', 330276);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3023, 'Timisoara', 'ROM', 'Timis', 324304);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3024, 'Brasov', 'ROM', 'Brasov', 314225);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3025, 'Craiova', 'ROM', 'Dolj', 313530);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3026, 'Ploiesti', 'ROM', 'Prahova', 251348);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3027, 'Braila', 'ROM', 'Braila', 233756);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3028, 'Oradea', 'ROM', 'Bihor', 222239);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3029, 'Bacau', 'ROM', 'Bacau', 209235);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3030, 'Pitesti', 'ROM', 'Arges', 187170);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3031, 'Arad', 'ROM', 'Arad', 184408);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3032, 'Sibiu', 'ROM', 'Sibiu', 169611);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3033, 'TÃ¢rgu Mures', 'ROM', 'Mures', 165153);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3034, 'Baia Mare', 'ROM', 'Maramures', 149665);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3035, 'Buzau', 'ROM', 'Buzau', 148372);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3036, 'Satu Mare', 'ROM', 'Satu Mare', 130059);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3037, 'Botosani', 'ROM', 'Botosani', 128730);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3038, 'Piatra Neamt', 'ROM', 'Neamt', 125070);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3039, 'RÃ¢mnicu VÃ¢lcea', 'ROM', 'VÃ¢lcea', 119741);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3040, 'Suceava', 'ROM', 'Suceava', 118549);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3041, 'Drobeta-Turnu Severin', 'ROM', 'Mehedinti', 117865);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3042, 'TÃ¢rgoviste', 'ROM', 'DÃ¢mbovita', 98980);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3043, 'Focsani', 'ROM', 'Vrancea', 98979);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3044, 'TÃ¢rgu Jiu', 'ROM', 'Gorj', 98524);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3045, 'Tulcea', 'ROM', 'Tulcea', 96278);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3046, 'Resita', 'ROM', 'Caras-Severin', 93976);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3047, 'Kigali', 'RWA', 'Kigali', 286000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3048, 'Stockholm', 'SWE', 'Lisboa', 750348);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3049, 'Gothenburg [GÃ¶teborg]', 'SWE', 'West GÃ¶tanmaan lÃ¤n', 466990);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3050, 'MalmÃ¶', 'SWE', 'SkÃ¥ne lÃ¤n', 259579);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3051, 'Uppsala', 'SWE', 'Uppsala lÃ¤n', 189569);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3052, 'LinkÃ¶ping', 'SWE', 'East GÃ¶tanmaan lÃ¤n', 133168);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3053, 'VÃ¤sterÃ¥s', 'SWE', 'VÃ¤stmanlands lÃ¤n', 126328);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3054, 'Ã–rebro', 'SWE', 'Ã–rebros lÃ¤n', 124207);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3055, 'NorrkÃ¶ping', 'SWE', 'East GÃ¶tanmaan lÃ¤n', 122199);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3056, 'Helsingborg', 'SWE', 'SkÃ¥ne lÃ¤n', 117737);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3057, 'JÃ¶nkÃ¶ping', 'SWE', 'JÃ¶nkÃ¶pings lÃ¤n', 117095);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3058, 'UmeÃ¥', 'SWE', 'VÃ¤sterbottens lÃ¤n', 104512);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3059, 'Lund', 'SWE', 'SkÃ¥ne lÃ¤n', 98948);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3060, 'BorÃ¥s', 'SWE', 'West GÃ¶tanmaan lÃ¤n', 96883);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3061, 'Sundsvall', 'SWE', 'VÃ¤sternorrlands lÃ¤n', 93126);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3062, 'GÃ¤vle', 'SWE', 'GÃ¤vleborgs lÃ¤n', 90742);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3063, 'Jamestown', 'SHN', 'Saint Helena', 1500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3064, 'Basseterre', 'KNA', 'St George Basseterre', 11600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3065, 'Castries', 'LCA', 'Castries', 2301);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3066, 'Kingstown', 'VCT', 'St George', 17100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3067, 'Saint-Pierre', 'SPM', 'Saint-Pierre', 5808);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3068, 'Berlin', 'DEU', 'Berliini', 3386667);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3069, 'Hamburg', 'DEU', 'Hamburg', 1704735);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3070, 'Munich [MÃ¼nchen]', 'DEU', 'Baijeri', 1194560);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3071, 'KÃ¶ln', 'DEU', 'Nordrhein-Westfalen', 962507);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3072, 'Frankfurt am Main', 'DEU', 'Hessen', 643821);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3073, 'Essen', 'DEU', 'Nordrhein-Westfalen', 599515);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3074, 'Dortmund', 'DEU', 'Nordrhein-Westfalen', 590213);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3075, 'Stuttgart', 'DEU', 'Baden-WÃ¼rttemberg', 582443);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3076, 'DÃ¼sseldorf', 'DEU', 'Nordrhein-Westfalen', 568855);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3077, 'Bremen', 'DEU', 'Bremen', 540330);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3078, 'Duisburg', 'DEU', 'Nordrhein-Westfalen', 519793);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3079, 'Hannover', 'DEU', 'Niedersachsen', 514718);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3080, 'Leipzig', 'DEU', 'Saksi', 489532);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3081, 'NÃ¼rnberg', 'DEU', 'Baijeri', 486628);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3082, 'Dresden', 'DEU', 'Saksi', 476668);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3083, 'Bochum', 'DEU', 'Nordrhein-Westfalen', 392830);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3084, 'Wuppertal', 'DEU', 'Nordrhein-Westfalen', 368993);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3085, 'Bielefeld', 'DEU', 'Nordrhein-Westfalen', 321125);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3086, 'Mannheim', 'DEU', 'Baden-WÃ¼rttemberg', 307730);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3087, 'Bonn', 'DEU', 'Nordrhein-Westfalen', 301048);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3088, 'Gelsenkirchen', 'DEU', 'Nordrhein-Westfalen', 281979);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3089, 'Karlsruhe', 'DEU', 'Baden-WÃ¼rttemberg', 277204);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3090, 'Wiesbaden', 'DEU', 'Hessen', 268716);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3091, 'MÃ¼nster', 'DEU', 'Nordrhein-Westfalen', 264670);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3092, 'MÃ¶nchengladbach', 'DEU', 'Nordrhein-Westfalen', 263697);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3093, 'Chemnitz', 'DEU', 'Saksi', 263222);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3094, 'Augsburg', 'DEU', 'Baijeri', 254867);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3095, 'Halle/Saale', 'DEU', 'Anhalt Sachsen', 254360);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3096, 'Braunschweig', 'DEU', 'Niedersachsen', 246322);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3097, 'Aachen', 'DEU', 'Nordrhein-Westfalen', 243825);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3098, 'Krefeld', 'DEU', 'Nordrhein-Westfalen', 241769);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3099, 'Magdeburg', 'DEU', 'Anhalt Sachsen', 235073);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3100, 'Kiel', 'DEU', 'Schleswig-Holstein', 233795);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3101, 'Oberhausen', 'DEU', 'Nordrhein-Westfalen', 222349);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3102, 'LÃ¼beck', 'DEU', 'Schleswig-Holstein', 213326);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3103, 'Hagen', 'DEU', 'Nordrhein-Westfalen', 205201);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3104, 'Rostock', 'DEU', 'Mecklenburg-Vorpomme', 203279);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3105, 'Freiburg im Breisgau', 'DEU', 'Baden-WÃ¼rttemberg', 202455);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3106, 'Erfurt', 'DEU', 'ThÃ¼ringen', 201267);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3107, 'Kassel', 'DEU', 'Hessen', 196211);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3108, 'SaarbrÃ¼cken', 'DEU', 'Saarland', 183836);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3109, 'Mainz', 'DEU', 'Rheinland-Pfalz', 183134);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3110, 'Hamm', 'DEU', 'Nordrhein-Westfalen', 181804);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3111, 'Herne', 'DEU', 'Nordrhein-Westfalen', 175661);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3112, 'MÃ¼lheim an der Ruhr', 'DEU', 'Nordrhein-Westfalen', 173895);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3113, 'Solingen', 'DEU', 'Nordrhein-Westfalen', 165583);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3114, 'OsnabrÃ¼ck', 'DEU', 'Niedersachsen', 164539);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3115, 'Ludwigshafen am Rhein', 'DEU', 'Rheinland-Pfalz', 163771);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3116, 'Leverkusen', 'DEU', 'Nordrhein-Westfalen', 160841);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3117, 'Oldenburg', 'DEU', 'Niedersachsen', 154125);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3118, 'Neuss', 'DEU', 'Nordrhein-Westfalen', 149702);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3119, 'Heidelberg', 'DEU', 'Baden-WÃ¼rttemberg', 139672);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3120, 'Darmstadt', 'DEU', 'Hessen', 137776);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3121, 'Paderborn', 'DEU', 'Nordrhein-Westfalen', 137647);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3122, 'Potsdam', 'DEU', 'Brandenburg', 128983);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3123, 'WÃ¼rzburg', 'DEU', 'Baijeri', 127350);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3124, 'Regensburg', 'DEU', 'Baijeri', 125236);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3125, 'Recklinghausen', 'DEU', 'Nordrhein-Westfalen', 125022);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3126, 'GÃ¶ttingen', 'DEU', 'Niedersachsen', 124775);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3127, 'Bremerhaven', 'DEU', 'Bremen', 122735);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3128, 'Wolfsburg', 'DEU', 'Niedersachsen', 121954);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3129, 'Bottrop', 'DEU', 'Nordrhein-Westfalen', 121097);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3130, 'Remscheid', 'DEU', 'Nordrhein-Westfalen', 120125);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3131, 'Heilbronn', 'DEU', 'Baden-WÃ¼rttemberg', 119526);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3132, 'Pforzheim', 'DEU', 'Baden-WÃ¼rttemberg', 117227);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3133, 'Offenbach am Main', 'DEU', 'Hessen', 116627);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3134, 'Ulm', 'DEU', 'Baden-WÃ¼rttemberg', 116103);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3135, 'Ingolstadt', 'DEU', 'Baijeri', 114826);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3136, 'Gera', 'DEU', 'ThÃ¼ringen', 114718);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3137, 'Salzgitter', 'DEU', 'Niedersachsen', 112934);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3138, 'Cottbus', 'DEU', 'Brandenburg', 110894);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3139, 'Reutlingen', 'DEU', 'Baden-WÃ¼rttemberg', 110343);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3140, 'FÃ¼rth', 'DEU', 'Baijeri', 109771);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3141, 'Siegen', 'DEU', 'Nordrhein-Westfalen', 109225);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3142, 'Koblenz', 'DEU', 'Rheinland-Pfalz', 108003);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3143, 'Moers', 'DEU', 'Nordrhein-Westfalen', 106837);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3144, 'Bergisch Gladbach', 'DEU', 'Nordrhein-Westfalen', 106150);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3145, 'Zwickau', 'DEU', 'Saksi', 104146);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3146, 'Hildesheim', 'DEU', 'Niedersachsen', 104013);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3147, 'Witten', 'DEU', 'Nordrhein-Westfalen', 103384);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3148, 'Schwerin', 'DEU', 'Mecklenburg-Vorpomme', 102878);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3149, 'Erlangen', 'DEU', 'Baijeri', 100750);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3150, 'Kaiserslautern', 'DEU', 'Rheinland-Pfalz', 100025);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3151, 'Trier', 'DEU', 'Rheinland-Pfalz', 99891);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3152, 'Jena', 'DEU', 'ThÃ¼ringen', 99779);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3153, 'Iserlohn', 'DEU', 'Nordrhein-Westfalen', 99474);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3154, 'GÃ¼tersloh', 'DEU', 'Nordrhein-Westfalen', 95028);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3155, 'Marl', 'DEU', 'Nordrhein-Westfalen', 93735);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3156, 'LÃ¼nen', 'DEU', 'Nordrhein-Westfalen', 92044);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3157, 'DÃ¼ren', 'DEU', 'Nordrhein-Westfalen', 91092);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3158, 'Ratingen', 'DEU', 'Nordrhein-Westfalen', 90951);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3159, 'Velbert', 'DEU', 'Nordrhein-Westfalen', 89881);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3160, 'Esslingen am Neckar', 'DEU', 'Baden-WÃ¼rttemberg', 89667);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3161, 'Honiara', 'SLB', 'Honiara', 50100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3162, 'Lusaka', 'ZMB', 'Lusaka', 1317000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3163, 'Ndola', 'ZMB', 'Copperbelt', 329200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3164, 'Kitwe', 'ZMB', 'Copperbelt', 288600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3165, 'Kabwe', 'ZMB', 'Central', 154300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3166, 'Chingola', 'ZMB', 'Copperbelt', 142400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3167, 'Mufulira', 'ZMB', 'Copperbelt', 123900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3168, 'Luanshya', 'ZMB', 'Copperbelt', 118100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3169, 'Apia', 'WSM', 'Upolu', 35900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3170, 'Serravalle', 'SMR', 'Serravalle/Dogano', 4802);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3171, 'San Marino', 'SMR', 'San Marino', 2294);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3172, 'SÃ£o TomÃ©', 'STP', 'Aqua Grande', 49541);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3173, 'Riyadh', 'SAU', 'Riyadh', 3324000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3174, 'Jedda', 'SAU', 'Mekka', 2046300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3175, 'Mekka', 'SAU', 'Mekka', 965700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3176, 'Medina', 'SAU', 'Medina', 608300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3177, 'al-Dammam', 'SAU', 'al-Sharqiya', 482300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3178, 'al-Taif', 'SAU', 'Mekka', 416100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3179, 'Tabuk', 'SAU', 'Tabuk', 292600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3180, 'Burayda', 'SAU', 'al-Qasim', 248600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3181, 'al-Hufuf', 'SAU', 'al-Sharqiya', 225800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3182, 'al-Mubarraz', 'SAU', 'al-Sharqiya', 219100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3183, 'Khamis Mushayt', 'SAU', 'Asir', 217900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3184, 'Hail', 'SAU', 'Hail', 176800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3185, 'al-Kharj', 'SAU', 'Riad', 152100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3186, 'al-Khubar', 'SAU', 'al-Sharqiya', 141700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3187, 'Jubayl', 'SAU', 'al-Sharqiya', 140800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3188, 'Hafar al-Batin', 'SAU', 'al-Sharqiya', 137800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3189, 'al-Tuqba', 'SAU', 'al-Sharqiya', 125700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3190, 'Yanbu', 'SAU', 'Medina', 119800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3191, 'Abha', 'SAU', 'Asir', 112300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3192, 'AraÂ´ar', 'SAU', 'al-Khudud al-Samaliy', 108100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3193, 'al-Qatif', 'SAU', 'al-Sharqiya', 98900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3194, 'al-Hawiya', 'SAU', 'Mekka', 93900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3195, 'Unayza', 'SAU', 'Qasim', 91100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3196, 'Najran', 'SAU', 'Najran', 91000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3197, 'Pikine', 'SEN', 'Cap-Vert', 855287);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3198, 'Dakar', 'SEN', 'Cap-Vert', 785071);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3199, 'ThiÃ¨s', 'SEN', 'ThiÃ¨s', 248000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3200, 'Kaolack', 'SEN', 'Kaolack', 199000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3201, 'Ziguinchor', 'SEN', 'Ziguinchor', 192000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3202, 'Rufisque', 'SEN', 'Cap-Vert', 150000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3203, 'Saint-Louis', 'SEN', 'Saint-Louis', 132400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3204, 'Mbour', 'SEN', 'ThiÃ¨s', 109300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3205, 'Diourbel', 'SEN', 'Diourbel', 99400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3206, 'Victoria', 'SYC', 'MahÃ©', 41000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3207, 'Freetown', 'SLE', 'Western', 850000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3208, 'Singapore', 'SGP', 'Â–', 4017733);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3209, 'Bratislava', 'SVK', 'Bratislava', 448292);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3210, 'KoÂšice', 'SVK', 'VÃ½chodnÃ© Slovensko', 241874);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3211, 'PreÂšov', 'SVK', 'VÃ½chodnÃ© Slovensko', 93977);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3212, 'Ljubljana', 'SVN', 'Osrednjeslovenska', 270986);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3213, 'Maribor', 'SVN', 'Podravska', 115532);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3214, 'Mogadishu', 'SOM', 'Banaadir', 997000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3215, 'Hargeysa', 'SOM', 'Woqooyi Galbeed', 90000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3216, 'Kismaayo', 'SOM', 'Jubbada Hoose', 90000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3217, 'Colombo', 'LKA', 'Western', 645000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3218, 'Dehiwala', 'LKA', 'Western', 203000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3219, 'Moratuwa', 'LKA', 'Western', 190000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3220, 'Jaffna', 'LKA', 'Northern', 149000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3221, 'Kandy', 'LKA', 'Central', 140000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3222, 'Sri Jayawardenepura Kotte', 'LKA', 'Western', 118000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3223, 'Negombo', 'LKA', 'Western', 100000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3224, 'Omdurman', 'SDN', 'Khartum', 1271403);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3225, 'Khartum', 'SDN', 'Khartum', 947483);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3226, 'Sharq al-Nil', 'SDN', 'Khartum', 700887);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3227, 'Port Sudan', 'SDN', 'al-Bahr al-Ahmar', 308195);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3228, 'Kassala', 'SDN', 'Kassala', 234622);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3229, 'Obeid', 'SDN', 'Kurdufan al-Shamaliy', 229425);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3230, 'Nyala', 'SDN', 'Darfur al-Janubiya', 227183);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3231, 'Wad Madani', 'SDN', 'al-Jazira', 211362);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3232, 'al-Qadarif', 'SDN', 'al-Qadarif', 191164);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3233, 'Kusti', 'SDN', 'al-Bahr al-Abyad', 173599);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3234, 'al-Fashir', 'SDN', 'Darfur al-Shamaliya', 141884);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3235, 'Juba', 'SDN', 'Bahr al-Jabal', 114980);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3236, 'Helsinki [Helsingfors]', 'FIN', 'Newmaa', 555474);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3237, 'Espoo', 'FIN', 'Newmaa', 213271);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3238, 'Tampere', 'FIN', 'Pirkanmaa', 195468);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3239, 'Vantaa', 'FIN', 'Newmaa', 178471);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3240, 'Turku [Ã…bo]', 'FIN', 'Varsinais-Suomi', 172561);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3241, 'Oulu', 'FIN', 'Pohjois-Pohjanmaa', 120753);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3242, 'Lahti', 'FIN', 'PÃ¤ijÃ¤t-HÃ¤me', 96921);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3243, 'Paramaribo', 'SUR', 'Paramaribo', 112000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3244, 'Mbabane', 'SWZ', 'Hhohho', 61000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3245, 'ZÃ¼rich', 'CHE', 'ZÃ¼rich', 336800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3246, 'Geneve', 'CHE', 'Geneve', 173500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3247, 'Basel', 'CHE', 'Basel-Stadt', 166700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3248, 'Bern', 'CHE', 'Bern', 122700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3249, 'Lausanne', 'CHE', 'Vaud', 114500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3250, 'Damascus', 'SYR', 'Damascus', 1347000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3251, 'Aleppo', 'SYR', 'Aleppo', 1261983);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3252, 'Hims', 'SYR', 'Hims', 507404);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3253, 'Hama', 'SYR', 'Hama', 343361);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3254, 'Latakia', 'SYR', 'Latakia', 264563);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3255, 'al-Qamishliya', 'SYR', 'al-Hasaka', 144286);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3256, 'Dayr al-Zawr', 'SYR', 'Dayr al-Zawr', 140459);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3257, 'Jaramana', 'SYR', 'Damaskos', 138469);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3258, 'Duma', 'SYR', 'Damaskos', 131158);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3259, 'al-Raqqa', 'SYR', 'al-Raqqa', 108020);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3260, 'Idlib', 'SYR', 'Idlib', 91081);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3261, 'Dushanbe', 'TJK', 'Karotegin', 524000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3262, 'Khujand', 'TJK', 'Khujand', 161500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3263, 'Taipei', 'TWN', 'Taipei', 2641312);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3264, 'Kaohsiung', 'TWN', 'Kaohsiung', 1475505);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3265, 'Taichung', 'TWN', 'Taichung', 940589);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3266, 'Tainan', 'TWN', 'Tainan', 728060);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3267, 'Panchiao', 'TWN', 'Taipei', 523850);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3268, 'Chungho', 'TWN', 'Taipei', 392176);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3269, 'Keelung (Chilung)', 'TWN', 'Keelung', 385201);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3270, 'Sanchung', 'TWN', 'Taipei', 380084);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3271, 'Hsinchuang', 'TWN', 'Taipei', 365048);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3272, 'Hsinchu', 'TWN', 'Hsinchu', 361958);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3273, 'Chungli', 'TWN', 'Taoyuan', 318649);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3274, 'Fengshan', 'TWN', 'Kaohsiung', 318562);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3275, 'Taoyuan', 'TWN', 'Taoyuan', 316438);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3276, 'Chiayi', 'TWN', 'Chiayi', 265109);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3277, 'Hsintien', 'TWN', 'Taipei', 263603);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3278, 'Changhwa', 'TWN', 'Changhwa', 227715);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3279, 'Yungho', 'TWN', 'Taipei', 227700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3280, 'Tucheng', 'TWN', 'Taipei', 224897);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3281, 'Pingtung', 'TWN', 'Pingtung', 214727);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3282, 'Yungkang', 'TWN', 'Tainan', 193005);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3283, 'Pingchen', 'TWN', 'Taoyuan', 188344);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3284, 'Tali', 'TWN', 'Taichung', 171940);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3285, 'Taiping', 'TWN', '', 165524);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3286, 'Pate', 'TWN', 'Taoyuan', 161700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3287, 'Fengyuan', 'TWN', 'Taichung', 161032);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3288, 'Luchou', 'TWN', 'Taipei', 160516);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3289, 'Hsichuh', 'TWN', 'Taipei', 154976);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3290, 'Shulin', 'TWN', 'Taipei', 151260);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3291, 'Yuanlin', 'TWN', 'Changhwa', 126402);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3292, 'Yangmei', 'TWN', 'Taoyuan', 126323);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3293, 'Taliao', 'TWN', '', 115897);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3294, 'Kueishan', 'TWN', '', 112195);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3295, 'Tanshui', 'TWN', 'Taipei', 111882);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3296, 'Taitung', 'TWN', 'Taitung', 111039);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3297, 'Hualien', 'TWN', 'Hualien', 108407);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3298, 'Nantou', 'TWN', 'Nantou', 104723);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3299, 'Lungtan', 'TWN', 'Taipei', 103088);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3300, 'Touliu', 'TWN', 'YÃ¼nlin', 98900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3301, 'Tsaotun', 'TWN', 'Nantou', 96800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3302, 'Kangshan', 'TWN', 'Kaohsiung', 92200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3303, 'Ilan', 'TWN', 'Ilan', 92000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3304, 'Miaoli', 'TWN', 'Miaoli', 90000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3305, 'Dar es Salaam', 'TZA', 'Dar es Salaam', 1747000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3306, 'Dodoma', 'TZA', 'Dodoma', 189000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3307, 'Mwanza', 'TZA', 'Mwanza', 172300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3308, 'Zanzibar', 'TZA', 'Zanzibar West', 157634);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3309, 'Tanga', 'TZA', 'Tanga', 137400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3310, 'Mbeya', 'TZA', 'Mbeya', 130800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3311, 'Morogoro', 'TZA', 'Morogoro', 117800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3312, 'Arusha', 'TZA', 'Arusha', 102500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3313, 'Moshi', 'TZA', 'Kilimanjaro', 96800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3314, 'Tabora', 'TZA', 'Tabora', 92800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3315, 'KÃ¸benhavn', 'DNK', 'KÃ¸benhavn', 495699);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3316, 'Ã…rhus', 'DNK', 'Ã…rhus', 284846);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3317, 'Odense', 'DNK', 'Fyn', 183912);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3318, 'Aalborg', 'DNK', 'Nordjylland', 161161);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3319, 'Frederiksberg', 'DNK', 'Frederiksberg', 90327);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3320, 'Bangkok', 'THA', 'Bangkok', 6320174);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3321, 'Nonthaburi', 'THA', 'Nonthaburi', 292100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3322, 'Nakhon Ratchasima', 'THA', 'Nakhon Ratchasima', 181400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3323, 'Chiang Mai', 'THA', 'Chiang Mai', 171100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3324, 'Udon Thani', 'THA', 'Udon Thani', 158100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3325, 'Hat Yai', 'THA', 'Songkhla', 148632);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3326, 'Khon Kaen', 'THA', 'Khon Kaen', 126500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3327, 'Pak Kret', 'THA', 'Nonthaburi', 126055);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3328, 'Nakhon Sawan', 'THA', 'Nakhon Sawan', 123800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3329, 'Ubon Ratchathani', 'THA', 'Ubon Ratchathani', 116300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3330, 'Songkhla', 'THA', 'Songkhla', 94900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3331, 'Nakhon Pathom', 'THA', 'Nakhon Pathom', 94100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3332, 'LomÃ©', 'TGO', 'Maritime', 375000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3333, 'Fakaofo', 'TKL', 'Fakaofo', 300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3334, 'NukuÂ´alofa', 'TON', 'Tongatapu', 22400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3335, 'Chaguanas', 'TTO', 'Caroni', 56601);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3336, 'Port-of-Spain', 'TTO', 'Port-of-Spain', 43396);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3337, 'NÂ´DjamÃ©na', 'TCD', 'Chari-Baguirmi', 530965);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3338, 'Moundou', 'TCD', 'Logone Occidental', 99500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3339, 'Praha', 'CZE', 'HlavnÃ­ mesto Praha', 1181126);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3340, 'Brno', 'CZE', 'JiznÃ­ Morava', 381862);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3341, 'Ostrava', 'CZE', 'SevernÃ­ Morava', 320041);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3342, 'Plzen', 'CZE', 'ZapadnÃ­ Cechy', 166759);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3343, 'Olomouc', 'CZE', 'SevernÃ­ Morava', 102702);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3344, 'Liberec', 'CZE', 'SevernÃ­ Cechy', 99155);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3345, 'CeskÃ© Budejovice', 'CZE', 'JiznÃ­ Cechy', 98186);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3346, 'Hradec KrÃ¡lovÃ©', 'CZE', 'VÃ½chodnÃ­ Cechy', 98080);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3347, 'ÃšstÃ­ nad Labem', 'CZE', 'SevernÃ­ Cechy', 95491);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3348, 'Pardubice', 'CZE', 'VÃ½chodnÃ­ Cechy', 91309);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3349, 'Tunis', 'TUN', 'Tunis', 690600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3350, 'Sfax', 'TUN', 'Sfax', 257800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3351, 'Ariana', 'TUN', 'Ariana', 197000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3352, 'Ettadhamen', 'TUN', 'Ariana', 178600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3353, 'Sousse', 'TUN', 'Sousse', 145900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3354, 'Kairouan', 'TUN', 'Kairouan', 113100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3355, 'Biserta', 'TUN', 'Biserta', 108900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3356, 'GabÃ¨s', 'TUN', 'GabÃ¨s', 106600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3357, 'Istanbul', 'TUR', 'Istanbul', 8787958);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3358, 'Ankara', 'TUR', 'Ankara', 3038159);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3359, 'Izmir', 'TUR', 'Izmir', 2130359);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3360, 'Adana', 'TUR', 'Adana', 1131198);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3361, 'Bursa', 'TUR', 'Bursa', 1095842);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3362, 'Gaziantep', 'TUR', 'Gaziantep', 789056);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3363, 'Konya', 'TUR', 'Konya', 628364);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3364, 'Mersin (IÃ§el)', 'TUR', 'IÃ§el', 587212);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3365, 'Antalya', 'TUR', 'Antalya', 564914);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3366, 'Diyarbakir', 'TUR', 'Diyarbakir', 479884);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3367, 'Kayseri', 'TUR', 'Kayseri', 475657);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3368, 'Eskisehir', 'TUR', 'Eskisehir', 470781);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3369, 'Sanliurfa', 'TUR', 'Sanliurfa', 405905);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3370, 'Samsun', 'TUR', 'Samsun', 339871);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3371, 'Malatya', 'TUR', 'Malatya', 330312);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3372, 'Gebze', 'TUR', 'Kocaeli', 264170);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3373, 'Denizli', 'TUR', 'Denizli', 253848);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3374, 'Sivas', 'TUR', 'Sivas', 246642);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3375, 'Erzurum', 'TUR', 'Erzurum', 246535);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3376, 'Tarsus', 'TUR', 'Adana', 246206);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3377, 'Kahramanmaras', 'TUR', 'Kahramanmaras', 245772);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3378, 'ElÃ¢zig', 'TUR', 'ElÃ¢zig', 228815);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3379, 'Van', 'TUR', 'Van', 219319);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3380, 'Sultanbeyli', 'TUR', 'Istanbul', 211068);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3381, 'Izmit (Kocaeli)', 'TUR', 'Kocaeli', 210068);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3382, 'Manisa', 'TUR', 'Manisa', 207148);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3383, 'Batman', 'TUR', 'Batman', 203793);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3384, 'Balikesir', 'TUR', 'Balikesir', 196382);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3385, 'Sakarya (Adapazari)', 'TUR', 'Sakarya', 190641);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3386, 'Iskenderun', 'TUR', 'Hatay', 153022);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3387, 'Osmaniye', 'TUR', 'Osmaniye', 146003);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3388, 'Ã‡orum', 'TUR', 'Ã‡orum', 145495);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3389, 'KÃ¼tahya', 'TUR', 'KÃ¼tahya', 144761);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3390, 'Hatay (Antakya)', 'TUR', 'Hatay', 143982);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3391, 'Kirikkale', 'TUR', 'Kirikkale', 142044);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3392, 'Adiyaman', 'TUR', 'Adiyaman', 141529);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3393, 'Trabzon', 'TUR', 'Trabzon', 138234);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3394, 'Ordu', 'TUR', 'Ordu', 133642);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3395, 'Aydin', 'TUR', 'Aydin', 128651);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3396, 'Usak', 'TUR', 'Usak', 128162);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3397, 'Edirne', 'TUR', 'Edirne', 123383);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3398, 'Ã‡orlu', 'TUR', 'Tekirdag', 123300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3399, 'Isparta', 'TUR', 'Isparta', 121911);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3400, 'KarabÃ¼k', 'TUR', 'KarabÃ¼k', 118285);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3401, 'Kilis', 'TUR', 'Kilis', 118245);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3402, 'Alanya', 'TUR', 'Antalya', 117300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3403, 'Kiziltepe', 'TUR', 'Mardin', 112000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3404, 'Zonguldak', 'TUR', 'Zonguldak', 111542);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3405, 'Siirt', 'TUR', 'Siirt', 107100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3406, 'Viransehir', 'TUR', 'Sanliurfa', 106400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3407, 'Tekirdag', 'TUR', 'Tekirdag', 106077);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3408, 'Karaman', 'TUR', 'Karaman', 104200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3409, 'Afyon', 'TUR', 'Afyon', 103984);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3410, 'Aksaray', 'TUR', 'Aksaray', 102681);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3411, 'Ceyhan', 'TUR', 'Adana', 102412);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3412, 'Erzincan', 'TUR', 'Erzincan', 102304);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3413, 'Bismil', 'TUR', 'Diyarbakir', 101400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3414, 'Nazilli', 'TUR', 'Aydin', 99900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3415, 'Tokat', 'TUR', 'Tokat', 99500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3416, 'Kars', 'TUR', 'Kars', 93000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3417, 'InegÃ¶l', 'TUR', 'Bursa', 90500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3418, 'Bandirma', 'TUR', 'Balikesir', 90200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3419, 'Ashgabat', 'TKM', 'Ahal', 540600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3420, 'ChÃ¤rjew', 'TKM', 'Lebap', 189200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3421, 'Dashhowuz', 'TKM', 'Dashhowuz', 141800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3422, 'Mary', 'TKM', 'Mary', 101000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3423, 'Cockburn Town', 'TCA', 'Grand Turk', 4800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3424, 'Funafuti', 'TUV', 'Funafuti', 4600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3425, 'Kampala', 'UGA', 'Central', 890800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3426, 'Kyiv', 'UKR', 'Kiova', 2624000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3427, 'Harkova [Harkiv]', 'UKR', 'Harkova', 1500000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3428, 'Dnipropetrovsk', 'UKR', 'Dnipropetrovsk', 1103000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3429, 'Donetsk', 'UKR', 'Donetsk', 1050000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3430, 'Odesa', 'UKR', 'Odesa', 1011000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3431, 'Zaporizzja', 'UKR', 'Zaporizzja', 848000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3432, 'Lviv', 'UKR', 'Lviv', 788000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3433, 'Kryvyi Rig', 'UKR', 'Dnipropetrovsk', 703000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3434, 'Mykolajiv', 'UKR', 'Mykolajiv', 508000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3435, 'Mariupol', 'UKR', 'Donetsk', 490000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3436, 'Lugansk', 'UKR', 'Lugansk', 469000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3437, 'Vinnytsja', 'UKR', 'Vinnytsja', 391000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3438, 'Makijivka', 'UKR', 'Donetsk', 384000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3439, 'Herson', 'UKR', 'Herson', 353000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3440, 'Sevastopol', 'UKR', 'Krim', 348000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3441, 'Simferopol', 'UKR', 'Krim', 339000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3442, 'Pultava [Poltava]', 'UKR', 'Pultava', 313000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3443, 'TÂšernigiv', 'UKR', 'TÂšernigiv', 313000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3444, 'TÂšerkasy', 'UKR', 'TÂšerkasy', 309000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3445, 'Gorlivka', 'UKR', 'Donetsk', 299000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3446, 'Zytomyr', 'UKR', 'Zytomyr', 297000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3447, 'Sumy', 'UKR', 'Sumy', 294000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3448, 'Dniprodzerzynsk', 'UKR', 'Dnipropetrovsk', 270000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3449, 'Kirovograd', 'UKR', 'Kirovograd', 265000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3450, 'Hmelnytskyi', 'UKR', 'Hmelnytskyi', 262000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3451, 'TÂšernivtsi', 'UKR', 'TÂšernivtsi', 259000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3452, 'Rivne', 'UKR', 'Rivne', 245000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3453, 'KrementÂšuk', 'UKR', 'Pultava', 239000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3454, 'Ivano-Frankivsk', 'UKR', 'Ivano-Frankivsk', 237000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3455, 'Ternopil', 'UKR', 'Ternopil', 236000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3456, 'Lutsk', 'UKR', 'Volynia', 217000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3457, 'Bila Tserkva', 'UKR', 'Kiova', 215000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3458, 'Kramatorsk', 'UKR', 'Donetsk', 186000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3459, 'Melitopol', 'UKR', 'Zaporizzja', 169000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3460, 'KertÂš', 'UKR', 'Krim', 162000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3461, 'Nikopol', 'UKR', 'Dnipropetrovsk', 149000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3462, 'Berdjansk', 'UKR', 'Zaporizzja', 130000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3463, 'Pavlograd', 'UKR', 'Dnipropetrovsk', 127000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3464, 'Sjeverodonetsk', 'UKR', 'Lugansk', 127000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3465, 'Slovjansk', 'UKR', 'Donetsk', 127000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3466, 'Uzgorod', 'UKR', 'Taka-Karpatia', 127000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3467, 'AltÂševsk', 'UKR', 'Lugansk', 119000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3468, 'LysytÂšansk', 'UKR', 'Lugansk', 116000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3469, 'Jevpatorija', 'UKR', 'Krim', 112000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3470, 'Kamjanets-Podilskyi', 'UKR', 'Hmelnytskyi', 109000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3471, 'Jenakijeve', 'UKR', 'Donetsk', 105000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3472, 'Krasnyi LutÂš', 'UKR', 'Lugansk', 101000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3473, 'Stahanov', 'UKR', 'Lugansk', 101000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3474, 'Oleksandrija', 'UKR', 'Kirovograd', 99000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3475, 'Konotop', 'UKR', 'Sumy', 96000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3476, 'Kostjantynivka', 'UKR', 'Donetsk', 95000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3477, 'BerdytÂšiv', 'UKR', 'Zytomyr', 90000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3478, 'Izmajil', 'UKR', 'Odesa', 90000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3479, 'ÂŠostka', 'UKR', 'Sumy', 90000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3480, 'Uman', 'UKR', 'TÂšerkasy', 90000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3481, 'Brovary', 'UKR', 'Kiova', 89000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3482, 'MukatÂševe', 'UKR', 'Taka-Karpatia', 89000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3483, 'Budapest', 'HUN', 'Budapest', 1811552);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3484, 'Debrecen', 'HUN', 'HajdÃº-Bihar', 203648);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3485, 'Miskolc', 'HUN', 'Borsod-AbaÃºj-ZemplÃ©n', 172357);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3486, 'Szeged', 'HUN', 'CsongrÃ¡d', 158158);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3487, 'PÃ©cs', 'HUN', 'Baranya', 157332);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3488, 'GyÃ¶r', 'HUN', 'GyÃ¶r-Moson-Sopron', 127119);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3489, 'NyiregyhÃ¡za', 'HUN', 'Szabolcs-SzatmÃ¡r-Ber', 112419);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3490, 'KecskemÃ©t', 'HUN', 'BÃ¡cs-Kiskun', 105606);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3491, 'SzÃ©kesfehÃ©rvÃ¡r', 'HUN', 'FejÃ©r', 105119);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3492, 'Montevideo', 'URY', 'Montevideo', 1236000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3493, 'NoumÃ©a', 'NCL', 'Â–', 76293);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3494, 'Auckland', 'NZL', 'Auckland', 381800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3495, 'Christchurch', 'NZL', 'Canterbury', 324200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3496, 'Manukau', 'NZL', 'Auckland', 281800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3497, 'North Shore', 'NZL', 'Auckland', 187700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3498, 'Waitakere', 'NZL', 'Auckland', 170600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3499, 'Wellington', 'NZL', 'Wellington', 166700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3500, 'Dunedin', 'NZL', 'Dunedin', 119600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3501, 'Hamilton', 'NZL', 'Hamilton', 117100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3502, 'Lower Hutt', 'NZL', 'Wellington', 98100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3503, 'Toskent', 'UZB', 'Toskent Shahri', 2117500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3504, 'Namangan', 'UZB', 'Namangan', 370500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3505, 'Samarkand', 'UZB', 'Samarkand', 361800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3506, 'Andijon', 'UZB', 'Andijon', 318600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3507, 'Buhoro', 'UZB', 'Buhoro', 237100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3508, 'Karsi', 'UZB', 'Qashqadaryo', 194100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3509, 'Nukus', 'UZB', 'Karakalpakistan', 194100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3510, 'KÃ¼kon', 'UZB', 'Fargona', 190100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3511, 'Fargona', 'UZB', 'Fargona', 180500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3512, 'Circik', 'UZB', 'Toskent', 146400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3513, 'Margilon', 'UZB', 'Fargona', 140800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3514, 'Ãœrgenc', 'UZB', 'Khorazm', 138900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3515, 'Angren', 'UZB', 'Toskent', 128000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3516, 'Cizah', 'UZB', 'Cizah', 124800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3517, 'Navoi', 'UZB', 'Navoi', 116300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3518, 'Olmalik', 'UZB', 'Toskent', 114900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3519, 'Termiz', 'UZB', 'Surkhondaryo', 109500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3520, 'Minsk', 'BLR', 'Horad Minsk', 1674000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3521, 'Gomel', 'BLR', 'Gomel', 475000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3522, 'Mogiljov', 'BLR', 'Mogiljov', 356000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3523, 'Vitebsk', 'BLR', 'Vitebsk', 340000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3524, 'Grodno', 'BLR', 'Grodno', 302000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3525, 'Brest', 'BLR', 'Brest', 286000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3526, 'Bobruisk', 'BLR', 'Mogiljov', 221000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3527, 'BaranovitÂši', 'BLR', 'Brest', 167000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3528, 'Borisov', 'BLR', 'Minsk', 151000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3529, 'Pinsk', 'BLR', 'Brest', 130000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3530, 'OrÂša', 'BLR', 'Vitebsk', 124000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3531, 'Mozyr', 'BLR', 'Gomel', 110000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3532, 'Novopolotsk', 'BLR', 'Vitebsk', 106000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3533, 'Lida', 'BLR', 'Grodno', 101000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3534, 'Soligorsk', 'BLR', 'Minsk', 101000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3535, 'MolodetÂšno', 'BLR', 'Minsk', 97000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3536, 'Mata-Utu', 'WLF', 'Wallis', 1137);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3537, 'Port-Vila', 'VUT', 'Shefa', 33700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3538, 'CittÃ  del Vaticano', 'VAT', 'Â–', 455);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3539, 'Caracas', 'VEN', 'Distrito Federal', 1975294);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3540, 'MaracaÃ­bo', 'VEN', 'Zulia', 1304776);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3541, 'Barquisimeto', 'VEN', 'Lara', 877239);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3542, 'Valencia', 'VEN', 'Carabobo', 794246);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3543, 'Ciudad Guayana', 'VEN', 'BolÃ­var', 663713);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3544, 'Petare', 'VEN', 'Miranda', 488868);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3545, 'Maracay', 'VEN', 'Aragua', 444443);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3546, 'Barcelona', 'VEN', 'AnzoÃ¡tegui', 322267);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3547, 'MaturÃ­n', 'VEN', 'Monagas', 319726);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3548, 'San CristÃ³bal', 'VEN', 'TÃ¡chira', 319373);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3549, 'Ciudad BolÃ­var', 'VEN', 'BolÃ­var', 301107);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3550, 'CumanÃ¡', 'VEN', 'Sucre', 293105);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3551, 'MÃ©rida', 'VEN', 'MÃ©rida', 224887);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3552, 'Cabimas', 'VEN', 'Zulia', 221329);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3553, 'Barinas', 'VEN', 'Barinas', 217831);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3554, 'Turmero', 'VEN', 'Aragua', 217499);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3555, 'Baruta', 'VEN', 'Miranda', 207290);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3556, 'Puerto Cabello', 'VEN', 'Carabobo', 187722);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3557, 'Santa Ana de Coro', 'VEN', 'FalcÃ³n', 185766);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3558, 'Los Teques', 'VEN', 'Miranda', 178784);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3559, 'Punto Fijo', 'VEN', 'FalcÃ³n', 167215);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3560, 'Guarenas', 'VEN', 'Miranda', 165889);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3561, 'Acarigua', 'VEN', 'Portuguesa', 158954);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3562, 'Puerto La Cruz', 'VEN', 'AnzoÃ¡tegui', 155700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3563, 'Ciudad Losada', 'VEN', '', 134501);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3564, 'Guacara', 'VEN', 'Carabobo', 131334);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3565, 'Valera', 'VEN', 'Trujillo', 130281);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3566, 'Guanare', 'VEN', 'Portuguesa', 125621);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3567, 'CarÃºpano', 'VEN', 'Sucre', 119639);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3568, 'Catia La Mar', 'VEN', 'Distrito Federal', 117012);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3569, 'El Tigre', 'VEN', 'AnzoÃ¡tegui', 116256);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3570, 'Guatire', 'VEN', 'Miranda', 109121);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3571, 'Calabozo', 'VEN', 'GuÃ¡rico', 107146);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3572, 'Pozuelos', 'VEN', 'AnzoÃ¡tegui', 105690);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3573, 'Ciudad Ojeda', 'VEN', 'Zulia', 99354);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3574, 'Ocumare del Tuy', 'VEN', 'Miranda', 97168);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3575, 'Valle de la Pascua', 'VEN', 'GuÃ¡rico', 95927);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3576, 'Araure', 'VEN', 'Portuguesa', 94269);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3577, 'San Fernando de Apure', 'VEN', 'Apure', 93809);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3578, 'San Felipe', 'VEN', 'Yaracuy', 90940);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3579, 'El LimÃ³n', 'VEN', 'Aragua', 90000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3580, 'Moscow', 'RUS', 'Moscow (City)', 8389200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3581, 'St Petersburg', 'RUS', 'Pietari', 4694000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3582, 'Novosibirsk', 'RUS', 'Novosibirsk', 1398800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3583, 'Nizni Novgorod', 'RUS', 'Nizni Novgorod', 1357000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3584, 'Jekaterinburg', 'RUS', 'Sverdlovsk', 1266300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3585, 'Samara', 'RUS', 'Samara', 1156100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3586, 'Omsk', 'RUS', 'Omsk', 1148900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3587, 'Kazan', 'RUS', 'Tatarstan', 1101000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3588, 'Ufa', 'RUS', 'BaÂškortostan', 1091200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3589, 'TÂšeljabinsk', 'RUS', 'TÂšeljabinsk', 1083200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3590, 'Rostov-na-Donu', 'RUS', 'Rostov-na-Donu', 1012700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3591, 'Perm', 'RUS', 'Perm', 1009700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3592, 'Volgograd', 'RUS', 'Volgograd', 993400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3593, 'Voronez', 'RUS', 'Voronez', 907700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3594, 'Krasnojarsk', 'RUS', 'Krasnojarsk', 875500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3595, 'Saratov', 'RUS', 'Saratov', 874000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3596, 'Toljatti', 'RUS', 'Samara', 722900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3597, 'Uljanovsk', 'RUS', 'Uljanovsk', 667400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3598, 'Izevsk', 'RUS', 'Udmurtia', 652800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3599, 'Krasnodar', 'RUS', 'Krasnodar', 639000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3600, 'Jaroslavl', 'RUS', 'Jaroslavl', 616700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3601, 'Habarovsk', 'RUS', 'Habarovsk', 609400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3602, 'Vladivostok', 'RUS', 'Primorje', 606200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3603, 'Irkutsk', 'RUS', 'Irkutsk', 593700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3604, 'Barnaul', 'RUS', 'Altai', 580100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3605, 'Novokuznetsk', 'RUS', 'Kemerovo', 561600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3606, 'Penza', 'RUS', 'Penza', 532200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3607, 'Rjazan', 'RUS', 'Rjazan', 529900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3608, 'Orenburg', 'RUS', 'Orenburg', 523600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3609, 'Lipetsk', 'RUS', 'Lipetsk', 521000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3610, 'Nabereznyje TÂšelny', 'RUS', 'Tatarstan', 514700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3611, 'Tula', 'RUS', 'Tula', 506100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3612, 'Tjumen', 'RUS', 'Tjumen', 503400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3613, 'Kemerovo', 'RUS', 'Kemerovo', 492700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3614, 'Astrahan', 'RUS', 'Astrahan', 486100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3615, 'Tomsk', 'RUS', 'Tomsk', 482100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3616, 'Kirov', 'RUS', 'Kirov', 466200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3617, 'Ivanovo', 'RUS', 'Ivanovo', 459200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3618, 'TÂšeboksary', 'RUS', 'TÂšuvassia', 459200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3619, 'Brjansk', 'RUS', 'Brjansk', 457400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3620, 'Tver', 'RUS', 'Tver', 454900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3621, 'Kursk', 'RUS', 'Kursk', 443500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3622, 'Magnitogorsk', 'RUS', 'TÂšeljabinsk', 427900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3623, 'Kaliningrad', 'RUS', 'Kaliningrad', 424400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3624, 'Nizni Tagil', 'RUS', 'Sverdlovsk', 390900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3625, 'Murmansk', 'RUS', 'Murmansk', 376300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3626, 'Ulan-Ude', 'RUS', 'Burjatia', 370400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3627, 'Kurgan', 'RUS', 'Kurgan', 364700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3628, 'Arkangeli', 'RUS', 'Arkangeli', 361800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3629, 'SotÂši', 'RUS', 'Krasnodar', 358600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3630, 'Smolensk', 'RUS', 'Smolensk', 353400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3631, 'Orjol', 'RUS', 'Orjol', 344500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3632, 'Stavropol', 'RUS', 'Stavropol', 343300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3633, 'Belgorod', 'RUS', 'Belgorod', 342000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3634, 'Kaluga', 'RUS', 'Kaluga', 339300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3635, 'Vladimir', 'RUS', 'Vladimir', 337100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3636, 'MahatÂškala', 'RUS', 'Dagestan', 332800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3637, 'TÂšerepovets', 'RUS', 'Vologda', 324400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3638, 'Saransk', 'RUS', 'Mordva', 314800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3639, 'Tambov', 'RUS', 'Tambov', 312000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3640, 'Vladikavkaz', 'RUS', 'North Ossetia-Alania', 310100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3641, 'TÂšita', 'RUS', 'TÂšita', 309900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3642, 'Vologda', 'RUS', 'Vologda', 302500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3643, 'Veliki Novgorod', 'RUS', 'Novgorod', 299500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3644, 'Komsomolsk-na-Amure', 'RUS', 'Habarovsk', 291600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3645, 'Kostroma', 'RUS', 'Kostroma', 288100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3646, 'Volzski', 'RUS', 'Volgograd', 286900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3647, 'Taganrog', 'RUS', 'Rostov-na-Donu', 284400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3648, 'Petroskoi', 'RUS', 'Karjala', 282100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3649, 'Bratsk', 'RUS', 'Irkutsk', 277600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3650, 'Dzerzinsk', 'RUS', 'Nizni Novgorod', 277100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3651, 'Surgut', 'RUS', 'Hanti-Mansia', 274900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3652, 'Orsk', 'RUS', 'Orenburg', 273900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3653, 'Sterlitamak', 'RUS', 'BaÂškortostan', 265200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3654, 'Angarsk', 'RUS', 'Irkutsk', 264700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3655, 'JoÂškar-Ola', 'RUS', 'Marinmaa', 249200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3656, 'Rybinsk', 'RUS', 'Jaroslavl', 239600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3657, 'Prokopjevsk', 'RUS', 'Kemerovo', 237300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3658, 'Niznevartovsk', 'RUS', 'Hanti-Mansia', 233900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3659, 'NaltÂšik', 'RUS', 'Kabardi-Balkaria', 233400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3660, 'Syktyvkar', 'RUS', 'Komi', 229700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3661, 'Severodvinsk', 'RUS', 'Arkangeli', 229300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3662, 'Bijsk', 'RUS', 'Altai', 225000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3663, 'Niznekamsk', 'RUS', 'Tatarstan', 223400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3664, 'BlagoveÂštÂšensk', 'RUS', 'Amur', 222000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3665, 'ÂŠahty', 'RUS', 'Rostov-na-Donu', 221800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3666, 'Staryi Oskol', 'RUS', 'Belgorod', 213800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3667, 'Zelenograd', 'RUS', 'Moscow (City)', 207100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3668, 'Balakovo', 'RUS', 'Saratov', 206000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3669, 'Novorossijsk', 'RUS', 'Krasnodar', 203300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3670, 'Pihkova', 'RUS', 'Pihkova', 201500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3671, 'Zlatoust', 'RUS', 'TÂšeljabinsk', 196900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3672, 'Jakutsk', 'RUS', 'Saha (Jakutia)', 195400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3673, 'Podolsk', 'RUS', 'Moskova', 194300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3674, 'Petropavlovsk-KamtÂšatski', 'RUS', 'KamtÂšatka', 194100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3675, 'Kamensk-Uralski', 'RUS', 'Sverdlovsk', 190600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3676, 'Engels', 'RUS', 'Saratov', 189000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3677, 'Syzran', 'RUS', 'Samara', 186900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3678, 'Grozny', 'RUS', 'TÂšetÂšenia', 186000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3679, 'NovotÂšerkassk', 'RUS', 'Rostov-na-Donu', 184400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3680, 'Berezniki', 'RUS', 'Perm', 181900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3681, 'Juzno-Sahalinsk', 'RUS', 'Sahalin', 179200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3682, 'Volgodonsk', 'RUS', 'Rostov-na-Donu', 178200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3683, 'Abakan', 'RUS', 'Hakassia', 169200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3684, 'Maikop', 'RUS', 'Adygea', 167300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3685, 'Miass', 'RUS', 'TÂšeljabinsk', 166200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3686, 'Armavir', 'RUS', 'Krasnodar', 164900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3687, 'Ljubertsy', 'RUS', 'Moskova', 163900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3688, 'Rubtsovsk', 'RUS', 'Altai', 162600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3689, 'Kovrov', 'RUS', 'Vladimir', 159900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3690, 'Nahodka', 'RUS', 'Primorje', 157700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3691, 'Ussurijsk', 'RUS', 'Primorje', 157300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3692, 'Salavat', 'RUS', 'BaÂškortostan', 156800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3693, 'MytiÂštÂši', 'RUS', 'Moskova', 155700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3694, 'Kolomna', 'RUS', 'Moskova', 150700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3695, 'Elektrostal', 'RUS', 'Moskova', 147000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3696, 'Murom', 'RUS', 'Vladimir', 142400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3697, 'Kolpino', 'RUS', 'Pietari', 141200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3698, 'Norilsk', 'RUS', 'Krasnojarsk', 140800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3699, 'Almetjevsk', 'RUS', 'Tatarstan', 140700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3700, 'Novomoskovsk', 'RUS', 'Tula', 138100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3701, 'Dimitrovgrad', 'RUS', 'Uljanovsk', 137000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3702, 'Pervouralsk', 'RUS', 'Sverdlovsk', 136100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3703, 'Himki', 'RUS', 'Moskova', 133700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3704, 'BalaÂšiha', 'RUS', 'Moskova', 132900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3705, 'Nevinnomyssk', 'RUS', 'Stavropol', 132600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3706, 'Pjatigorsk', 'RUS', 'Stavropol', 132500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3707, 'Korolev', 'RUS', 'Moskova', 132400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3708, 'Serpuhov', 'RUS', 'Moskova', 132000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3709, 'Odintsovo', 'RUS', 'Moskova', 127400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3710, 'Orehovo-Zujevo', 'RUS', 'Moskova', 124900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3711, 'KamyÂšin', 'RUS', 'Volgograd', 124600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3712, 'NovotÂšeboksarsk', 'RUS', 'TÂšuvassia', 123400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3713, 'TÂšerkessk', 'RUS', 'KaratÂšai-TÂšerkessia', 121700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3714, 'AtÂšinsk', 'RUS', 'Krasnojarsk', 121600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3715, 'Magadan', 'RUS', 'Magadan', 121000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3716, 'MitÂšurinsk', 'RUS', 'Tambov', 120700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3717, 'Kislovodsk', 'RUS', 'Stavropol', 120400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3718, 'Jelets', 'RUS', 'Lipetsk', 119400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3719, 'Seversk', 'RUS', 'Tomsk', 118600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3720, 'Noginsk', 'RUS', 'Moskova', 117200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3721, 'Velikije Luki', 'RUS', 'Pihkova', 116300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3722, 'NovokuibyÂševsk', 'RUS', 'Samara', 116200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3723, 'Neftekamsk', 'RUS', 'BaÂškortostan', 115700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3724, 'Leninsk-Kuznetski', 'RUS', 'Kemerovo', 113800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3725, 'Oktjabrski', 'RUS', 'BaÂškortostan', 111500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3726, 'Sergijev Posad', 'RUS', 'Moskova', 111100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3727, 'Arzamas', 'RUS', 'Nizni Novgorod', 110700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3728, 'Kiseljovsk', 'RUS', 'Kemerovo', 110000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3729, 'Novotroitsk', 'RUS', 'Orenburg', 109600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3730, 'Obninsk', 'RUS', 'Kaluga', 108300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3731, 'Kansk', 'RUS', 'Krasnojarsk', 107400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3732, 'Glazov', 'RUS', 'Udmurtia', 106300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3733, 'Solikamsk', 'RUS', 'Perm', 106000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3734, 'Sarapul', 'RUS', 'Udmurtia', 105700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3735, 'Ust-Ilimsk', 'RUS', 'Irkutsk', 105200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3736, 'ÂŠtÂšolkovo', 'RUS', 'Moskova', 104900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3737, 'MezduretÂšensk', 'RUS', 'Kemerovo', 104400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3738, 'Usolje-Sibirskoje', 'RUS', 'Irkutsk', 103500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3739, 'Elista', 'RUS', 'Kalmykia', 103300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3740, 'NovoÂšahtinsk', 'RUS', 'Rostov-na-Donu', 101900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3741, 'Votkinsk', 'RUS', 'Udmurtia', 101700);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3742, 'Kyzyl', 'RUS', 'Tyva', 101100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3743, 'Serov', 'RUS', 'Sverdlovsk', 100400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3744, 'Zelenodolsk', 'RUS', 'Tatarstan', 100200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3745, 'Zeleznodoroznyi', 'RUS', 'Moskova', 100100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3746, 'KineÂšma', 'RUS', 'Ivanovo', 100000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3747, 'Kuznetsk', 'RUS', 'Penza', 98200);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3748, 'Uhta', 'RUS', 'Komi', 98000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3749, 'Jessentuki', 'RUS', 'Stavropol', 97900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3750, 'Tobolsk', 'RUS', 'Tjumen', 97600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3751, 'Neftejugansk', 'RUS', 'Hanti-Mansia', 97400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3752, 'Bataisk', 'RUS', 'Rostov-na-Donu', 97300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3753, 'Nojabrsk', 'RUS', 'Yamalin Nenetsia', 97300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3754, 'BalaÂšov', 'RUS', 'Saratov', 97100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3755, 'Zeleznogorsk', 'RUS', 'Kursk', 96900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3756, 'Zukovski', 'RUS', 'Moskova', 96500);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3757, 'Anzero-Sudzensk', 'RUS', 'Kemerovo', 96100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3758, 'Bugulma', 'RUS', 'Tatarstan', 94100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3759, 'Zeleznogorsk', 'RUS', 'Krasnojarsk', 94000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3760, 'Novouralsk', 'RUS', 'Sverdlovsk', 93300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3761, 'PuÂškin', 'RUS', 'Pietari', 92900);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3762, 'Vorkuta', 'RUS', 'Komi', 92600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3763, 'Derbent', 'RUS', 'Dagestan', 92300);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3764, 'Kirovo-TÂšepetsk', 'RUS', 'Kirov', 91600);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3765, 'Krasnogorsk', 'RUS', 'Moskova', 91000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3766, 'Klin', 'RUS', 'Moskova', 90000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3767, 'TÂšaikovski', 'RUS', 'Perm', 90000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3768, 'Novyi Urengoi', 'RUS', 'Yamalin Nenetsia', 89800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3769, 'Ho Chi Minh City', 'VNM', 'Ho Chi Minh City', 3980000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3770, 'Hanoi', 'VNM', 'Hanoi', 1410000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3771, 'Haiphong', 'VNM', 'Haiphong', 783133);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3772, 'Da Nang', 'VNM', 'Quang Nam-Da Nang', 382674);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3773, 'BiÃªn Hoa', 'VNM', 'Dong Nai', 282095);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3774, 'Nha Trang', 'VNM', 'Khanh Hoa', 221331);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3775, 'Hue', 'VNM', 'Thua Thien-Hue', 219149);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3776, 'Can Tho', 'VNM', 'Can Tho', 215587);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3777, 'Cam Pha', 'VNM', 'Quang Binh', 209086);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3778, 'Nam Dinh', 'VNM', 'Nam Ha', 171699);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3779, 'Quy Nhon', 'VNM', 'Binh Dinh', 163385);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3780, 'Vung Tau', 'VNM', 'Ba Ria-Vung Tau', 145145);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3781, 'Rach Gia', 'VNM', 'Kien Giang', 141132);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3782, 'Long Xuyen', 'VNM', 'An Giang', 132681);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3783, 'Thai Nguyen', 'VNM', 'Bac Thai', 127643);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3784, 'Hong Gai', 'VNM', 'Quang Ninh', 127484);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3785, 'Phan ThiÃªt', 'VNM', 'Binh Thuan', 114236);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3786, 'Cam Ranh', 'VNM', 'Khanh Hoa', 114041);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3787, 'Vinh', 'VNM', 'Nghe An', 112455);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3788, 'My Tho', 'VNM', 'Tien Giang', 108404);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3789, 'Da Lat', 'VNM', 'Lam Dong', 106409);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3790, 'Buon Ma Thuot', 'VNM', 'Dac Lac', 97044);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3791, 'Tallinn', 'EST', 'Harjumaa', 403981);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3792, 'Tartu', 'EST', 'Tartumaa', 101246);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3793, 'New York', 'USA', 'New York', 8008278);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3794, 'Los Angeles', 'USA', 'California', 3694820);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3795, 'Chicago', 'USA', 'Illinois', 2896016);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3796, 'Houston', 'USA', 'Texas', 1953631);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3797, 'Philadelphia', 'USA', 'Pennsylvania', 1517550);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3798, 'Phoenix', 'USA', 'Arizona', 1321045);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3799, 'San Diego', 'USA', 'California', 1223400);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3800, 'Dallas', 'USA', 'Texas', 1188580);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3801, 'San Antonio', 'USA', 'Texas', 1144646);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3802, 'Detroit', 'USA', 'Michigan', 951270);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3803, 'San Jose', 'USA', 'California', 894943);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3804, 'Indianapolis', 'USA', 'Indiana', 791926);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3805, 'San Francisco', 'USA', 'California', 776733);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3806, 'Jacksonville', 'USA', 'Florida', 735167);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3807, 'Columbus', 'USA', 'Ohio', 711470);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3808, 'Austin', 'USA', 'Texas', 656562);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3809, 'Baltimore', 'USA', 'Maryland', 651154);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3810, 'Memphis', 'USA', 'Tennessee', 650100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3811, 'Milwaukee', 'USA', 'Wisconsin', 596974);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3812, 'Boston', 'USA', 'Massachusetts', 589141);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3813, 'Washington', 'USA', 'District of Columbia', 572059);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3814, 'Nashville-Davidson', 'USA', 'Tennessee', 569891);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3815, 'El Paso', 'USA', 'Texas', 563662);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3816, 'Seattle', 'USA', 'Washington', 563374);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3817, 'Denver', 'USA', 'Colorado', 554636);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3818, 'Charlotte', 'USA', 'North Carolina', 540828);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3819, 'Fort Worth', 'USA', 'Texas', 534694);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3820, 'Portland', 'USA', 'Oregon', 529121);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3821, 'Oklahoma City', 'USA', 'Oklahoma', 506132);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3822, 'Tucson', 'USA', 'Arizona', 486699);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3823, 'New Orleans', 'USA', 'Louisiana', 484674);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3824, 'Las Vegas', 'USA', 'Nevada', 478434);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3825, 'Cleveland', 'USA', 'Ohio', 478403);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3826, 'Long Beach', 'USA', 'California', 461522);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3827, 'Albuquerque', 'USA', 'New Mexico', 448607);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3828, 'Kansas City', 'USA', 'Missouri', 441545);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3829, 'Fresno', 'USA', 'California', 427652);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3830, 'Virginia Beach', 'USA', 'Virginia', 425257);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3831, 'Atlanta', 'USA', 'Georgia', 416474);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3832, 'Sacramento', 'USA', 'California', 407018);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3833, 'Oakland', 'USA', 'California', 399484);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3834, 'Mesa', 'USA', 'Arizona', 396375);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3835, 'Tulsa', 'USA', 'Oklahoma', 393049);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3836, 'Omaha', 'USA', 'Nebraska', 390007);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3837, 'Minneapolis', 'USA', 'Minnesota', 382618);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3838, 'Honolulu', 'USA', 'Hawaii', 371657);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3839, 'Miami', 'USA', 'Florida', 362470);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3840, 'Colorado Springs', 'USA', 'Colorado', 360890);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3841, 'Saint Louis', 'USA', 'Missouri', 348189);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3842, 'Wichita', 'USA', 'Kansas', 344284);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3843, 'Santa Ana', 'USA', 'California', 337977);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3844, 'Pittsburgh', 'USA', 'Pennsylvania', 334563);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3845, 'Arlington', 'USA', 'Texas', 332969);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3846, 'Cincinnati', 'USA', 'Ohio', 331285);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3847, 'Anaheim', 'USA', 'California', 328014);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3848, 'Toledo', 'USA', 'Ohio', 313619);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3849, 'Tampa', 'USA', 'Florida', 303447);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3850, 'Buffalo', 'USA', 'New York', 292648);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3851, 'Saint Paul', 'USA', 'Minnesota', 287151);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3852, 'Corpus Christi', 'USA', 'Texas', 277454);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3853, 'Aurora', 'USA', 'Colorado', 276393);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3854, 'Raleigh', 'USA', 'North Carolina', 276093);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3855, 'Newark', 'USA', 'New Jersey', 273546);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3856, 'Lexington-Fayette', 'USA', 'Kentucky', 260512);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3857, 'Anchorage', 'USA', 'Alaska', 260283);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3858, 'Louisville', 'USA', 'Kentucky', 256231);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3859, 'Riverside', 'USA', 'California', 255166);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3860, 'Saint Petersburg', 'USA', 'Florida', 248232);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3861, 'Bakersfield', 'USA', 'California', 247057);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3862, 'Stockton', 'USA', 'California', 243771);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3863, 'Birmingham', 'USA', 'Alabama', 242820);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3864, 'Jersey City', 'USA', 'New Jersey', 240055);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3865, 'Norfolk', 'USA', 'Virginia', 234403);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3866, 'Baton Rouge', 'USA', 'Louisiana', 227818);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3867, 'Hialeah', 'USA', 'Florida', 226419);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3868, 'Lincoln', 'USA', 'Nebraska', 225581);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3869, 'Greensboro', 'USA', 'North Carolina', 223891);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3870, 'Plano', 'USA', 'Texas', 222030);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3871, 'Rochester', 'USA', 'New York', 219773);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3872, 'Glendale', 'USA', 'Arizona', 218812);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3873, 'Akron', 'USA', 'Ohio', 217074);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3874, 'Garland', 'USA', 'Texas', 215768);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3875, 'Madison', 'USA', 'Wisconsin', 208054);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3876, 'Fort Wayne', 'USA', 'Indiana', 205727);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3877, 'Fremont', 'USA', 'California', 203413);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3878, 'Scottsdale', 'USA', 'Arizona', 202705);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3879, 'Montgomery', 'USA', 'Alabama', 201568);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3880, 'Shreveport', 'USA', 'Louisiana', 200145);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3881, 'Augusta-Richmond County', 'USA', 'Georgia', 199775);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3882, 'Lubbock', 'USA', 'Texas', 199564);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3883, 'Chesapeake', 'USA', 'Virginia', 199184);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3884, 'Mobile', 'USA', 'Alabama', 198915);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3885, 'Des Moines', 'USA', 'Iowa', 198682);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3886, 'Grand Rapids', 'USA', 'Michigan', 197800);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3887, 'Richmond', 'USA', 'Virginia', 197790);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3888, 'Yonkers', 'USA', 'New York', 196086);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3889, 'Spokane', 'USA', 'Washington', 195629);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3890, 'Glendale', 'USA', 'California', 194973);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3891, 'Tacoma', 'USA', 'Washington', 193556);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3892, 'Irving', 'USA', 'Texas', 191615);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3893, 'Huntington Beach', 'USA', 'California', 189594);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3894, 'Modesto', 'USA', 'California', 188856);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3895, 'Durham', 'USA', 'North Carolina', 187035);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3896, 'Columbus', 'USA', 'Georgia', 186291);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3897, 'Orlando', 'USA', 'Florida', 185951);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3898, 'Boise City', 'USA', 'Idaho', 185787);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3899, 'Winston-Salem', 'USA', 'North Carolina', 185776);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3900, 'San Bernardino', 'USA', 'California', 185401);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3901, 'Jackson', 'USA', 'Mississippi', 184256);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3902, 'Little Rock', 'USA', 'Arkansas', 183133);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3903, 'Salt Lake City', 'USA', 'Utah', 181743);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3904, 'Reno', 'USA', 'Nevada', 180480);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3905, 'Newport News', 'USA', 'Virginia', 180150);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3906, 'Chandler', 'USA', 'Arizona', 176581);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3907, 'Laredo', 'USA', 'Texas', 176576);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3908, 'Henderson', 'USA', 'Nevada', 175381);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3909, 'Arlington', 'USA', 'Virginia', 174838);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3910, 'Knoxville', 'USA', 'Tennessee', 173890);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3911, 'Amarillo', 'USA', 'Texas', 173627);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3912, 'Providence', 'USA', 'Rhode Island', 173618);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3913, 'Chula Vista', 'USA', 'California', 173556);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3914, 'Worcester', 'USA', 'Massachusetts', 172648);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3915, 'Oxnard', 'USA', 'California', 170358);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3916, 'Dayton', 'USA', 'Ohio', 166179);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3917, 'Garden Grove', 'USA', 'California', 165196);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3918, 'Oceanside', 'USA', 'California', 161029);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3919, 'Tempe', 'USA', 'Arizona', 158625);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3920, 'Huntsville', 'USA', 'Alabama', 158216);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3921, 'Ontario', 'USA', 'California', 158007);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3922, 'Chattanooga', 'USA', 'Tennessee', 155554);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3923, 'Fort Lauderdale', 'USA', 'Florida', 152397);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3924, 'Springfield', 'USA', 'Massachusetts', 152082);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3925, 'Springfield', 'USA', 'Missouri', 151580);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3926, 'Santa Clarita', 'USA', 'California', 151088);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3927, 'Salinas', 'USA', 'California', 151060);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3928, 'Tallahassee', 'USA', 'Florida', 150624);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3929, 'Rockford', 'USA', 'Illinois', 150115);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3930, 'Pomona', 'USA', 'California', 149473);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3931, 'Metairie', 'USA', 'Louisiana', 149428);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3932, 'Paterson', 'USA', 'New Jersey', 149222);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3933, 'Overland Park', 'USA', 'Kansas', 149080);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3934, 'Santa Rosa', 'USA', 'California', 147595);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3935, 'Syracuse', 'USA', 'New York', 147306);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3936, 'Kansas City', 'USA', 'Kansas', 146866);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3937, 'Hampton', 'USA', 'Virginia', 146437);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3938, 'Lakewood', 'USA', 'Colorado', 144126);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3939, 'Vancouver', 'USA', 'Washington', 143560);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3940, 'Irvine', 'USA', 'California', 143072);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3941, 'Aurora', 'USA', 'Illinois', 142990);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3942, 'Moreno Valley', 'USA', 'California', 142381);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3943, 'Pasadena', 'USA', 'California', 141674);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3944, 'Hayward', 'USA', 'California', 140030);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3945, 'Brownsville', 'USA', 'Texas', 139722);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3946, 'Bridgeport', 'USA', 'Connecticut', 139529);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3947, 'Hollywood', 'USA', 'Florida', 139357);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3948, 'Warren', 'USA', 'Michigan', 138247);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3949, 'Torrance', 'USA', 'California', 137946);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3950, 'Eugene', 'USA', 'Oregon', 137893);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3951, 'Pembroke Pines', 'USA', 'Florida', 137427);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3952, 'Salem', 'USA', 'Oregon', 136924);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3953, 'Pasadena', 'USA', 'Texas', 133936);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3954, 'Escondido', 'USA', 'California', 133559);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3955, 'Sunnyvale', 'USA', 'California', 131760);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3956, 'Savannah', 'USA', 'Georgia', 131510);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3957, 'Fontana', 'USA', 'California', 128929);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3958, 'Orange', 'USA', 'California', 128821);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3959, 'Naperville', 'USA', 'Illinois', 128358);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3960, 'Alexandria', 'USA', 'Virginia', 128283);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3961, 'Rancho Cucamonga', 'USA', 'California', 127743);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3962, 'Grand Prairie', 'USA', 'Texas', 127427);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3963, 'East Los Angeles', 'USA', 'California', 126379);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3964, 'Fullerton', 'USA', 'California', 126003);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3965, 'Corona', 'USA', 'California', 124966);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3966, 'Flint', 'USA', 'Michigan', 124943);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3967, 'Paradise', 'USA', 'Nevada', 124682);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3968, 'Mesquite', 'USA', 'Texas', 124523);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3969, 'Sterling Heights', 'USA', 'Michigan', 124471);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3970, 'Sioux Falls', 'USA', 'South Dakota', 123975);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3971, 'New Haven', 'USA', 'Connecticut', 123626);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3972, 'Topeka', 'USA', 'Kansas', 122377);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3973, 'Concord', 'USA', 'California', 121780);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3974, 'Evansville', 'USA', 'Indiana', 121582);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3975, 'Hartford', 'USA', 'Connecticut', 121578);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3976, 'Fayetteville', 'USA', 'North Carolina', 121015);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3977, 'Cedar Rapids', 'USA', 'Iowa', 120758);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3978, 'Elizabeth', 'USA', 'New Jersey', 120568);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3979, 'Lansing', 'USA', 'Michigan', 119128);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3980, 'Lancaster', 'USA', 'California', 118718);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3981, 'Fort Collins', 'USA', 'Colorado', 118652);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3982, 'Coral Springs', 'USA', 'Florida', 117549);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3983, 'Stamford', 'USA', 'Connecticut', 117083);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3984, 'Thousand Oaks', 'USA', 'California', 117005);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3985, 'Vallejo', 'USA', 'California', 116760);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3986, 'Palmdale', 'USA', 'California', 116670);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3987, 'Columbia', 'USA', 'South Carolina', 116278);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3988, 'El Monte', 'USA', 'California', 115965);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3989, 'Abilene', 'USA', 'Texas', 115930);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3990, 'North Las Vegas', 'USA', 'Nevada', 115488);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3991, 'Ann Arbor', 'USA', 'Michigan', 114024);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3992, 'Beaumont', 'USA', 'Texas', 113866);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3993, 'Waco', 'USA', 'Texas', 113726);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3994, 'Macon', 'USA', 'Georgia', 113336);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3995, 'Independence', 'USA', 'Missouri', 113288);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3996, 'Peoria', 'USA', 'Illinois', 112936);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3997, 'Inglewood', 'USA', 'California', 112580);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3998, 'Springfield', 'USA', 'Illinois', 111454);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (3999, 'Simi Valley', 'USA', 'California', 111351);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4000, 'Lafayette', 'USA', 'Louisiana', 110257);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4001, 'Gilbert', 'USA', 'Arizona', 109697);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4002, 'Carrollton', 'USA', 'Texas', 109576);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4003, 'Bellevue', 'USA', 'Washington', 109569);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4004, 'West Valley City', 'USA', 'Utah', 108896);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4005, 'Clarksville', 'USA', 'Tennessee', 108787);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4006, 'Costa Mesa', 'USA', 'California', 108724);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4007, 'Peoria', 'USA', 'Arizona', 108364);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4008, 'South Bend', 'USA', 'Indiana', 107789);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4009, 'Downey', 'USA', 'California', 107323);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4010, 'Waterbury', 'USA', 'Connecticut', 107271);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4011, 'Manchester', 'USA', 'New Hampshire', 107006);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4012, 'Allentown', 'USA', 'Pennsylvania', 106632);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4013, 'McAllen', 'USA', 'Texas', 106414);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4014, 'Joliet', 'USA', 'Illinois', 106221);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4015, 'Lowell', 'USA', 'Massachusetts', 105167);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4016, 'Provo', 'USA', 'Utah', 105166);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4017, 'West Covina', 'USA', 'California', 105080);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4018, 'Wichita Falls', 'USA', 'Texas', 104197);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4019, 'Erie', 'USA', 'Pennsylvania', 103717);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4020, 'Daly City', 'USA', 'California', 103621);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4021, 'Citrus Heights', 'USA', 'California', 103455);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4022, 'Norwalk', 'USA', 'California', 103298);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4023, 'Gary', 'USA', 'Indiana', 102746);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4024, 'Berkeley', 'USA', 'California', 102743);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4025, 'Santa Clara', 'USA', 'California', 102361);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4026, 'Green Bay', 'USA', 'Wisconsin', 102313);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4027, 'Cape Coral', 'USA', 'Florida', 102286);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4028, 'Arvada', 'USA', 'Colorado', 102153);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4029, 'Pueblo', 'USA', 'Colorado', 102121);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4030, 'Sandy', 'USA', 'Utah', 101853);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4031, 'Athens-Clarke County', 'USA', 'Georgia', 101489);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4032, 'Cambridge', 'USA', 'Massachusetts', 101355);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4033, 'Westminster', 'USA', 'Colorado', 100940);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4034, 'San Buenaventura', 'USA', 'California', 100916);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4035, 'Portsmouth', 'USA', 'Virginia', 100565);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4036, 'Livonia', 'USA', 'Michigan', 100545);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4037, 'Burbank', 'USA', 'California', 100316);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4038, 'Clearwater', 'USA', 'Florida', 99936);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4039, 'Midland', 'USA', 'Texas', 98293);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4040, 'Davenport', 'USA', 'Iowa', 98256);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4041, 'Mission Viejo', 'USA', 'California', 98049);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4042, 'Miami Beach', 'USA', 'Florida', 97855);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4043, 'Sunrise Manor', 'USA', 'Nevada', 95362);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4044, 'New Bedford', 'USA', 'Massachusetts', 94780);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4045, 'El Cajon', 'USA', 'California', 94578);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4046, 'Norman', 'USA', 'Oklahoma', 94193);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4047, 'Richmond', 'USA', 'California', 94100);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4048, 'Albany', 'USA', 'New York', 93994);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4049, 'Brockton', 'USA', 'Massachusetts', 93653);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4050, 'Roanoke', 'USA', 'Virginia', 93357);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4051, 'Billings', 'USA', 'Montana', 92988);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4052, 'Compton', 'USA', 'California', 92864);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4053, 'Gainesville', 'USA', 'Florida', 92291);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4054, 'Fairfield', 'USA', 'California', 92256);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4055, 'Arden-Arcade', 'USA', 'California', 92040);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4056, 'San Mateo', 'USA', 'California', 91799);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4057, 'Visalia', 'USA', 'California', 91762);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4058, 'Boulder', 'USA', 'Colorado', 91238);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4059, 'Cary', 'USA', 'North Carolina', 91213);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4060, 'Santa Monica', 'USA', 'California', 91084);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4061, 'Fall River', 'USA', 'Massachusetts', 90555);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4062, 'Kenosha', 'USA', 'Wisconsin', 89447);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4063, 'Elgin', 'USA', 'Illinois', 89408);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4064, 'Odessa', 'USA', 'Texas', 89293);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4065, 'Carson', 'USA', 'California', 89089);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4066, 'Charleston', 'USA', 'South Carolina', 89063);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4067, 'Charlotte Amalie', 'VIR', 'St Thomas', 13000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4068, 'Harare', 'ZWE', 'Harare', 1410000);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4069, 'Bulawayo', 'ZWE', 'Bulawayo', 621742);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4070, 'Chitungwiza', 'ZWE', 'Harare', 274912);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4071, 'Mount Darwin', 'ZWE', 'Harare', 164362);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4072, 'Mutare', 'ZWE', 'Manicaland', 131367);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4073, 'Gweru', 'ZWE', 'Midlands', 128037);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4074, 'Gaza', 'PSE', 'Gaza', 353632);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4075, 'Khan Yunis', 'PSE', 'Khan Yunis', 123175);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4076, 'Hebron', 'PSE', 'Hebron', 119401);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4077, 'Jabaliya', 'PSE', 'North Gaza', 113901);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4078, 'Nablus', 'PSE', 'Nablus', 100231);
INSERT INTO city (id, name, countrycode, district, population)
VALUES (4079, 'Rafah', 'PSE', 'Rafah', 92020);

--
-- Insert countries.
--

INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('AFG', 'Afghanistan', 'Asia', 'Southern and Central Asia', 652090, 1919, 22720000, 45.9000015, 5976.00, NULL,
        'Afganistan/Afqanestan', 'Islamic Emirate', 'Mohammad Omar', 1, 'AF');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('NLD', 'Netherlands', 'Europe', 'Western Europe', 41526, 1581, 15864000, 78.3000031, 371362.00, 360478.00,
        'Nederland', 'Constitutional Monarchy', 'Beatrix', 5, 'NL');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ANT', 'Netherlands Antilles', 'North America', 'Caribbean', 800, NULL, 217000, 74.6999969, 1941.00, NULL,
        'Nederlandse Antillen', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', 33, 'AN');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ALB', 'Albania', 'Europe', 'Southern Europe', 28748, 1912, 3401200, 71.5999985, 3205.00, 2500.00, 'ShqipÃ«ria',
        'Republic', 'Rexhep Mejdani', 34, 'AL');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('DZA', 'Algeria', 'Africa', 'Northern Africa', 2381741, 1962, 31471000, 69.6999969, 49982.00, 46966.00,
        'Al-JazaÂ’ir/AlgÃ©rie', 'Republic', 'Abdelaziz Bouteflika', 35, 'DZ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ASM', 'American Samoa', 'Oceania', 'Polynesia', 199, NULL, 68000, 75.0999985, 334.00, NULL, 'Amerika Samoa',
        'US Territory', 'George W. Bush', 54, 'AS');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('AND', 'Andorra', 'Europe', 'Southern Europe', 468, 1278, 78000, 83.5, 1630.00, NULL, 'Andorra',
        'Parliamentary Coprincipality', '', 55, 'AD');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('AGO', 'Angola', 'Africa', 'Central Africa', 1246700, 1975, 12878000, 38.2999992, 6648.00, 7984.00, 'Angola',
        'Republic', 'JosÃ© Eduardo dos Santos', 56, 'AO');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('AIA', 'Anguilla', 'North America', 'Caribbean', 96, NULL, 8000, 76.0999985, 63.20, NULL, 'Anguilla',
        'Dependent Territory of the UK', 'Elisabeth II', 62, 'AI');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ATG', 'Antigua and Barbuda', 'North America', 'Caribbean', 442, 1981, 68000, 70.5, 612.00, 584.00,
        'Antigua and Barbuda', 'Constitutional Monarchy', 'Elisabeth II', 63, 'AG');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ARE', 'United Arab Emirates', 'Asia', 'Middle East', 83600, 1971, 2441000, 74.0999985, 37966.00, 36846.00,
        'Al-Imarat al-Â´Arabiya al-Muttahida', 'Emirate Federation', 'Zayid bin Sultan al-Nahayan', 65, 'AE');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ARG', 'Argentina', 'South America', 'South America', 2780400, 1816, 37032000, 75.0999985, 340238.00, 323310.00,
        'Argentina', 'Federal Republic', 'Fernando de la RÃºa', 69, 'AR');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ARM', 'Armenia', 'Asia', 'Middle East', 29800, 1991, 3520000, 66.4000015, 1813.00, 1627.00, 'Hajastan',
        'Republic', 'Robert KotÂšarjan', 126, 'AM');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ABW', 'Aruba', 'North America', 'Caribbean', 193, NULL, 103000, 78.4000015, 828.00, 793.00, 'Aruba',
        'Nonmetropolitan Territory of The Netherlands', 'Beatrix', 129, 'AW');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('AUS', 'Australia', 'Oceania', 'Australia and New Zealand', 7741220, 1901, 18886000, 79.8000031, 351182.00,
        392911.00, 'Australia', 'Constitutional Monarchy, Federation', 'Elisabeth II', 135, 'AU');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('AZE', 'Azerbaijan', 'Asia', 'Middle East', 86600, 1991, 7734000, 62.9000015, 4127.00, 4100.00, 'AzÃ¤rbaycan',
        'Federal Republic', 'HeydÃ¤r Ã„liyev', 144, 'AZ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BHS', 'Bahamas', 'North America', 'Caribbean', 13878, 1973, 307000, 71.0999985, 3527.00, 3347.00,
        'The Bahamas', 'Constitutional Monarchy', 'Elisabeth II', 148, 'BS');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BHR', 'Bahrain', 'Asia', 'Middle East', 694, 1971, 617000, 73, 6366.00, 6097.00, 'Al-Bahrayn',
        'Monarchy (Emirate)', 'Hamad ibn Isa al-Khalifa', 149, 'BH');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BGD', 'Bangladesh', 'Asia', 'Southern and Central Asia', 143998, 1971, 129155000, 60.2000008, 32852.00,
        31966.00, 'Bangladesh', 'Republic', 'Shahabuddin Ahmad', 150, 'BD');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BRB', 'Barbados', 'North America', 'Caribbean', 430, 1966, 270000, 73, 2223.00, 2186.00, 'Barbados',
        'Constitutional Monarchy', 'Elisabeth II', 174, 'BB');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BEL', 'Belgium', 'Europe', 'Western Europe', 30518, 1830, 10239000, 77.8000031, 249704.00, 243948.00,
        'BelgiÃ«/Belgique', 'Constitutional Monarchy, Federation', 'Albert II', 179, 'BE');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BLZ', 'Belize', 'North America', 'Central America', 22696, 1981, 241000, 70.9000015, 630.00, 616.00, 'Belize',
        'Constitutional Monarchy', 'Elisabeth II', 185, 'BZ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BEN', 'Benin', 'Africa', 'Western Africa', 112622, 1960, 6097000, 50.2000008, 2357.00, 2141.00, 'BÃ©nin',
        'Republic', 'Mathieu KÃ©rÃ©kou', 187, 'BJ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BMU', 'Bermuda', 'North America', 'North America', 53, NULL, 65000, 76.9000015, 2328.00, 2190.00, 'Bermuda',
        'Dependent Territory of the UK', 'Elisabeth II', 191, 'BM');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BTN', 'Bhutan', 'Asia', 'Southern and Central Asia', 47000, 1910, 2124000, 52.4000015, 372.00, 383.00,
        'Druk-Yul', 'Monarchy', 'Jigme Singye Wangchuk', 192, 'BT');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BOL', 'Bolivia', 'South America', 'South America', 1098581, 1825, 8329000, 63.7000008, 8571.00, 7967.00,
        'Bolivia', 'Republic', 'Hugo BÃ¡nzer SuÃ¡rez', 194, 'BO');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BIH', 'Bosnia and Herzegovina', 'Europe', 'Southern Europe', 51197, 1992, 3972000, 71.5, 2841.00, NULL,
        'Bosna i Hercegovina', 'Federal Republic', 'Ante Jelavic', 201, 'BA');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BWA', 'Botswana', 'Africa', 'Southern Africa', 581730, 1966, 1622000, 39.2999992, 4834.00, 4935.00, 'Botswana',
        'Republic', 'Festus G. Mogae', 204, 'BW');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BRA', 'Brazil', 'South America', 'South America', 8547403, 1822, 170115000, 62.9000015, 776739.00, 804108.00,
        'Brasil', 'Federal Republic', 'Fernando Henrique Cardoso', 211, 'BR');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GBR', 'United Kingdom', 'Europe', 'British Islands', 242900, 1066, 59623400, 77.6999969, 1378330.00,
        1296830.00, 'United Kingdom', 'Constitutional Monarchy', 'Elisabeth II', 456, 'GB');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('VGB', 'Virgin Islands, British', 'North America', 'Caribbean', 151, NULL, 21000, 75.4000015, 612.00, 573.00,
        'British Virgin Islands', 'Dependent Territory of the UK', 'Elisabeth II', 537, 'VG');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BRN', 'Brunei', 'Asia', 'Southeast Asia', 5765, 1984, 328000, 73.5999985, 11705.00, 12460.00,
        'Brunei Darussalam', 'Monarchy (Sultanate)', 'Haji Hassan al-Bolkiah', 538, 'BN');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BGR', 'Bulgaria', 'Europe', 'Eastern Europe', 110994, 1908, 8190900, 70.9000015, 12178.00, 10169.00,
        'Balgarija', 'Republic', 'Petar Stojanov', 539, 'BG');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BFA', 'Burkina Faso', 'Africa', 'Western Africa', 274000, 1960, 11937000, 46.7000008, 2425.00, 2201.00,
        'Burkina Faso', 'Republic', 'Blaise CompaorÃ©', 549, 'BF');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BDI', 'Burundi', 'Africa', 'Eastern Africa', 27834, 1962, 6695000, 46.2000008, 903.00, 982.00,
        'Burundi/Uburundi', 'Republic', 'Pierre Buyoya', 552, 'BI');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('CYM', 'Cayman Islands', 'North America', 'Caribbean', 264, NULL, 38000, 78.9000015, 1263.00, 1186.00,
        'Cayman Islands', 'Dependent Territory of the UK', 'Elisabeth II', 553, 'KY');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('CHL', 'Chile', 'South America', 'South America', 756626, 1810, 15211000, 75.6999969, 72949.00, 75780.00,
        'Chile', 'Republic', 'Ricardo Lagos Escobar', 554, 'CL');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('COK', 'Cook Islands', 'Oceania', 'Polynesia', 236, NULL, 20000, 71.0999985, 100.00, NULL, 'The Cook Islands',
        'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 583, 'CK');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('CRI', 'Costa Rica', 'North America', 'Central America', 51100, 1821, 4023000, 75.8000031, 10226.00, 9757.00,
        'Costa Rica', 'Republic', 'Miguel Ã�ngel RodrÃ­guez EcheverrÃ­a', 584, 'CR');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('DJI', 'Djibouti', 'Africa', 'Eastern Africa', 23200, 1977, 638000, 50.7999992, 382.00, 373.00,
        'Djibouti/Jibuti', 'Republic', 'Ismail Omar Guelleh', 585, 'DJ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('DMA', 'Dominica', 'North America', 'Caribbean', 751, 1978, 71000, 73.4000015, 256.00, 243.00, 'Dominica',
        'Republic', 'Vernon Shaw', 586, 'DM');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('DOM', 'Dominican Republic', 'North America', 'Caribbean', 48511, 1844, 8495000, 73.1999969, 15846.00, 15076.00,
        'RepÃºblica Dominicana', 'Republic', 'HipÃ³lito MejÃ­a DomÃ­nguez', 587, 'DO');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ECU', 'Ecuador', 'South America', 'South America', 283561, 1822, 12646000, 71.0999985, 19770.00, 19769.00,
        'Ecuador', 'Republic', 'Gustavo Noboa Bejarano', 594, 'EC');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('EGY', 'Egypt', 'Africa', 'Northern Africa', 1001449, 1922, 68470000, 63.2999992, 82710.00, 75617.00, 'Misr',
        'Republic', 'Hosni Mubarak', 608, 'EG');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SLV', 'El Salvador', 'North America', 'Central America', 21041, 1841, 6276000, 69.6999969, 11863.00, 11203.00,
        'El Salvador', 'Republic', 'Francisco Guillermo Flores PÃ©rez', 645, 'SV');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ERI', 'Eritrea', 'Africa', 'Eastern Africa', 117600, 1993, 3850000, 55.7999992, 650.00, 755.00, 'Ertra',
        'Republic', 'Isayas Afewerki [Isaias Afwerki]', 652, 'ER');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ESP', 'Spain', 'Europe', 'Southern Europe', 505992, 1492, 39441700, 78.8000031, 553233.00, 532031.00,
        'EspaÃ±a', 'Constitutional Monarchy', 'Juan Carlos I', 653, 'ES');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ZAF', 'South Africa', 'Africa', 'Southern Africa', 1221037, 1910, 40377000, 51.0999985, 116729.00, 129092.00,
        'South Africa', 'Republic', 'Thabo Mbeki', 716, 'ZA');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ETH', 'Ethiopia', 'Africa', 'Eastern Africa', 1104300, -1000, 62565000, 45.2000008, 6353.00, 6180.00,
        'YeItyopÂ´iya', 'Republic', 'Negasso Gidada', 756, 'ET');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('FLK', 'Falkland Islands', 'South America', 'South America', 12173, NULL, 2000, NULL, 0.00, NULL,
        'Falkland Islands', 'Dependent Territory of the UK', 'Elisabeth II', 763, 'FK');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('FJI', 'Fiji Islands', 'Oceania', 'Melanesia', 18274, 1970, 817000, 67.9000015, 1536.00, 2149.00,
        'Fiji Islands', 'Republic', 'Josefa Iloilo', 764, 'FJ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('PHL', 'Philippines', 'Asia', 'Southeast Asia', 300000, 1946, 75967000, 67.5, 65107.00, 82239.00, 'Pilipinas',
        'Republic', 'Gloria Macapagal-Arroyo', 766, 'PH');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('FRO', 'Faroe Islands', 'Europe', 'Nordic Countries', 1399, NULL, 43000, 78.4000015, 0.00, NULL, 'FÃ¸royar',
        'Part of Denmark', 'Margrethe II', 901, 'FO');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GAB', 'Gabon', 'Africa', 'Central Africa', 267668, 1960, 1226000, 50.0999985, 5493.00, 5279.00, 'Le Gabon',
        'Republic', 'Omar Bongo', 902, 'GA');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GMB', 'Gambia', 'Africa', 'Western Africa', 11295, 1965, 1305000, 53.2000008, 320.00, 325.00, 'The Gambia',
        'Republic', 'Yahya Jammeh', 904, 'GM');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GEO', 'Georgia', 'Asia', 'Middle East', 69700, 1991, 4968000, 64.5, 6064.00, 5924.00, 'Sakartvelo', 'Republic',
        'Eduard ÂŠevardnadze', 905, 'GE');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GHA', 'Ghana', 'Africa', 'Western Africa', 238533, 1957, 20212000, 57.4000015, 7137.00, 6884.00, 'Ghana',
        'Republic', 'John Kufuor', 910, 'GH');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GIB', 'Gibraltar', 'Europe', 'Southern Europe', 6, NULL, 25000, 79, 258.00, NULL, 'Gibraltar',
        'Dependent Territory of the UK', 'Elisabeth II', 915, 'GI');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GRD', 'Grenada', 'North America', 'Caribbean', 344, 1974, 94000, 64.5, 318.00, NULL, 'Grenada',
        'Constitutional Monarchy', 'Elisabeth II', 916, 'GD');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GRL', 'Greenland', 'North America', 'North America', 2166090, NULL, 56000, 68.0999985, 0.00, NULL,
        'Kalaallit Nunaat/GrÃ¸nland', 'Part of Denmark', 'Margrethe II', 917, 'GL');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GLP', 'Guadeloupe', 'North America', 'Caribbean', 1705, NULL, 456000, 77, 3501.00, NULL, 'Guadeloupe',
        'Overseas Department of France', 'Jacques Chirac', 919, 'GP');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GUM', 'Guam', 'Oceania', 'Micronesia', 549, NULL, 168000, 77.8000031, 1197.00, 1136.00, 'Guam', 'US Territory',
        'George W. Bush', 921, 'GU');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GTM', 'Guatemala', 'North America', 'Central America', 108889, 1821, 11385000, 66.1999969, 19008.00, 17797.00,
        'Guatemala', 'Republic', 'Alfonso Portillo Cabrera', 922, 'GT');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GIN', 'Guinea', 'Africa', 'Western Africa', 245857, 1958, 7430000, 45.5999985, 2352.00, 2383.00, 'GuinÃ©e',
        'Republic', 'Lansana ContÃ©', 926, 'GN');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GNB', 'Guinea-Bissau', 'Africa', 'Western Africa', 36125, 1974, 1213000, 49, 293.00, 272.00, 'GuinÃ©-Bissau',
        'Republic', 'Kumba IalÃ¡', 927, 'GW');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GUY', 'Guyana', 'South America', 'South America', 214969, 1966, 861000, 64, 722.00, 743.00, 'Guyana',
        'Republic', 'Bharrat Jagdeo', 928, 'GY');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('HTI', 'Haiti', 'North America', 'Caribbean', 27750, 1804, 8222000, 49.2000008, 3459.00, 3107.00,
        'HaÃ¯ti/Dayti', 'Republic', 'Jean-Bertrand Aristide', 929, 'HT');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('HND', 'Honduras', 'North America', 'Central America', 112088, 1838, 6485000, 69.9000015, 5333.00, 4697.00,
        'Honduras', 'Republic', 'Carlos Roberto Flores FacussÃ©', 933, 'HN');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('HKG', 'Hong Kong', 'Asia', 'Eastern Asia', 1075, NULL, 6782000, 79.5, 166448.00, 173610.00,
        'Xianggang/Hong Kong', 'Special Administrative Region of China', 'Jiang Zemin', 937, 'HK');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SJM', 'Svalbard and Jan Mayen', 'Europe', 'Nordic Countries', 62422, NULL, 3200, NULL, 0.00, NULL,
        'Svalbard og Jan Mayen', 'Dependent Territory of Norway', 'Harald V', 938, 'SJ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('IDN', 'Indonesia', 'Asia', 'Southeast Asia', 1904569, 1945, 212107000, 68, 84982.00, 215002.00, 'Indonesia',
        'Republic', 'Abdurrahman Wahid', 939, 'ID');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('IND', 'India', 'Asia', 'Southern and Central Asia', 3287263, 1947, 1013662000, 62.5, 447114.00, 430572.00,
        'Bharat/India', 'Federal Republic', 'Kocheril Raman Narayanan', 1109, 'IN');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('IRQ', 'Iraq', 'Asia', 'Middle East', 438317, 1932, 23115000, 66.5, 11500.00, NULL, 'Al-Â´Iraq', 'Republic',
        'Saddam Hussein al-Takriti', 1365, 'IQ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('IRN', 'Iran', 'Asia', 'Southern and Central Asia', 1648195, 1906, 67702000, 69.6999969, 195746.00, 160151.00,
        'Iran', 'Islamic Republic', 'Ali Mohammad Khatami-Ardakani', 1380, 'IR');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('IRL', 'Ireland', 'Europe', 'British Islands', 70273, 1921, 3775100, 76.8000031, 75921.00, 73132.00,
        'Ireland/Ã‰ire', 'Republic', 'Mary McAleese', 1447, 'IE');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ISL', 'Iceland', 'Europe', 'Nordic Countries', 103000, 1944, 279000, 79.4000015, 8255.00, 7474.00, 'Ã�sland',
        'Republic', 'Ã“lafur Ragnar GrÃ­msson', 1449, 'IS');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ISR', 'Israel', 'Asia', 'Middle East', 21056, 1948, 6217000, 78.5999985, 97477.00, 98577.00,
        'YisraÂ’el/IsraÂ’il', 'Republic', 'Moshe Katzav', 1450, 'IL');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ITA', 'Italy', 'Europe', 'Southern Europe', 301316, 1861, 57680000, 79, 1161755.00, 1145372.00, 'Italia',
        'Republic', 'Carlo Azeglio Ciampi', 1464, 'IT');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('TMP', 'East Timor', 'Asia', 'Southeast Asia', 14874, NULL, 885000, 46, 0.00, NULL, 'Timor Timur',
        'Administrated by the UN', 'JosÃ© Alexandre GusmÃ£o', 1522, 'TP');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('AUT', 'Austria', 'Europe', 'Western Europe', 83859, 1918, 8091800, 77.6999969, 211860.00, 206025.00,
        'Ã–sterreich', 'Federal Republic', 'Thomas Klestil', 1523, 'AT');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('JAM', 'Jamaica', 'North America', 'Caribbean', 10990, 1962, 2583000, 75.1999969, 6871.00, 6722.00, 'Jamaica',
        'Constitutional Monarchy', 'Elisabeth II', 1530, 'JM');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('JPN', 'Japan', 'Asia', 'Eastern Asia', 377829, -660, 126714000, 80.6999969, 3787042.00, 4192638.00,
        'Nihon/Nippon', 'Constitutional Monarchy', 'Akihito', 1532, 'JP');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('YEM', 'Yemen', 'Asia', 'Middle East', 527968, 1918, 18112000, 59.7999992, 6041.00, 5729.00, 'Al-Yaman',
        'Republic', 'Ali Abdallah Salih', 1780, 'YE');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('JOR', 'Jordan', 'Asia', 'Middle East', 88946, 1946, 5083000, 77.4000015, 7526.00, 7051.00, 'Al-Urdunn',
        'Constitutional Monarchy', 'Abdullah II', 1786, 'JO');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('CXR', 'Christmas Island', 'Oceania', 'Australia and New Zealand', 135, NULL, 2500, NULL, 0.00, NULL,
        'Christmas Island', 'Territory of Australia', 'Elisabeth II', 1791, 'CX');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('YUG', 'Yugoslavia', 'Europe', 'Southern Europe', 102173, 1918, 10640000, 72.4000015, 17000.00, NULL,
        'Jugoslavija', 'Federal Republic', 'Vojislav KoÂštunica', 1792, 'YU');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('KHM', 'Cambodia', 'Asia', 'Southeast Asia', 181035, 1953, 11168000, 56.5, 5121.00, 5670.00, 'KÃ¢mpuchÃ©a',
        'Constitutional Monarchy', 'Norodom Sihanouk', 1800, 'KH');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('CMR', 'Cameroon', 'Africa', 'Central Africa', 475442, 1960, 15085000, 54.7999992, 9174.00, 8596.00,
        'Cameroun/Cameroon', 'Republic', 'Paul Biya', 1804, 'CM');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('CAN', 'Canada', 'North America', 'North America', 9970610, 1867, 31147000, 79.4000015, 598862.00, 625626.00,
        'Canada', 'Constitutional Monarchy, Federation', 'Elisabeth II', 1822, 'CA');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('CPV', 'Cape Verde', 'Africa', 'Western Africa', 4033, 1975, 428000, 68.9000015, 435.00, 420.00, 'Cabo Verde',
        'Republic', 'AntÃ³nio Mascarenhas Monteiro', 1859, 'CV');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('KAZ', 'Kazakstan', 'Asia', 'Southern and Central Asia', 2724900, 1991, 16223000, 63.2000008, 24375.00,
        23383.00, 'Qazaqstan', 'Republic', 'Nursultan Nazarbajev', 1864, 'KZ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('KEN', 'Kenya', 'Africa', 'Eastern Africa', 580367, 1963, 30080000, 48, 9217.00, 10241.00, 'Kenya', 'Republic',
        'Daniel arap Moi', 1881, 'KE');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('CAF', 'Central African Republic', 'Africa', 'Central Africa', 622984, 1960, 3615000, 44, 1054.00, 993.00,
        'Centrafrique/BÃª-AfrÃ®ka', 'Republic', 'Ange-FÃ©lix PatassÃ©', 1889, 'CF');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('CHN', 'China', 'Asia', 'Eastern Asia', 9572900, -1523, 1277558000, 71.4000015, 982268.00, 917719.00,
        'Zhongquo', 'People''sRepublic', 'Jiang Zemin', 1891, 'CN');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('KGZ', 'Kyrgyzstan', 'Asia', 'Southern and Central Asia', 199900, 1991, 4699000, 63.4000015, 1626.00, 1767.00,
        'Kyrgyzstan', 'Republic', 'Askar Akajev', 2253, 'KG');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('KIR', 'Kiribati', 'Oceania', 'Micronesia', 726, 1979, 83000, 59.7999992, 40.70, NULL, 'Kiribati', 'Republic',
        'Teburoro Tito', 2256, 'KI');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('COL', 'Colombia', 'South America', 'South America', 1138914, 1810, 42321000, 70.3000031, 102896.00, 105116.00,
        'Colombia', 'Republic', 'AndrÃ©s Pastrana Arango', 2257, 'CO');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('COM', 'Comoros', 'Africa', 'Eastern Africa', 1862, 1975, 578000, 60, 4401.00, 4361.00, 'Komori/Comores',
        'Republic', 'Azali Assoumani', 2295, 'KM');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('COG', 'Congo', 'Africa', 'Central Africa', 342000, 1960, 2943000, 47.4000015, 2108.00, 2287.00, 'Congo',
        'Republic', 'Denis Sassou-Nguesso', 2296, 'CG');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('COD', 'Congo, The Democratic Republic of the', 'Africa', 'Central Africa', 2344858, 1960, 51654000, 48.7999992,
        6964.00, 2474.00, 'RÃ©publique DÃ©mocratique du Congo', 'Republic', 'Joseph Kabila', 2298, 'CD');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('CCK', 'Cocos (Keeling) Islands', 'Oceania', 'Australia and New Zealand', 14, NULL, 600, NULL, 0.00, NULL,
        'Cocos (Keeling) Islands', 'Territory of Australia', 'Elisabeth II', 2317, 'CC');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('PRK', 'North Korea', 'Asia', 'Eastern Asia', 120538, 1948, 24039000, 70.6999969, 5332.00, NULL,
        'Choson Minjujuui InÂ´min Konghwaguk (Bukhan)', 'Socialistic Republic', 'Kim Jong-il', 2318, 'KP');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('KOR', 'South Korea', 'Asia', 'Eastern Asia', 99434, 1948, 46844000, 74.4000015, 320749.00, 442544.00,
        'Taehan MinÂ’guk (Namhan)', 'Republic', 'Kim Dae-jung', 2331, 'KR');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GRC', 'Greece', 'Europe', 'Southern Europe', 131626, 1830, 10545700, 78.4000015, 120724.00, 119946.00,
        'EllÃ¡da', 'Republic', 'Kostis Stefanopoulos', 2401, 'GR');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('HRV', 'Croatia', 'Europe', 'Southern Europe', 56538, 1991, 4473000, 73.6999969, 20208.00, 19300.00, 'Hrvatska',
        'Republic', 'ÂŠtipe Mesic', 2409, 'HR');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('CUB', 'Cuba', 'North America', 'Caribbean', 110861, 1902, 11201000, 76.1999969, 17843.00, 18862.00, 'Cuba',
        'Socialistic Republic', 'Fidel Castro Ruz', 2413, 'CU');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('KWT', 'Kuwait', 'Asia', 'Middle East', 17818, 1961, 1972000, 76.0999985, 27037.00, 30373.00, 'Al-Kuwayt',
        'Constitutional Monarchy (Emirate)', 'Jabir al-Ahmad al-Jabir al-Sabah', 2429, 'KW');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('CYP', 'Cyprus', 'Asia', 'Middle East', 9251, 1960, 754700, 76.6999969, 9333.00, 8246.00, 'KÃ½pros/Kibris',
        'Republic', 'Glafkos Klerides', 2430, 'CY');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('LAO', 'Laos', 'Asia', 'Southeast Asia', 236800, 1953, 5433000, 53.0999985, 1292.00, 1746.00, 'Lao', 'Republic',
        'Khamtay Siphandone', 2432, 'LA');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('LVA', 'Latvia', 'Europe', 'Baltic Countries', 64589, 1991, 2424200, 68.4000015, 6398.00, 5639.00, 'Latvija',
        'Republic', 'Vaira Vike-Freiberga', 2434, 'LV');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('LSO', 'Lesotho', 'Africa', 'Southern Africa', 30355, 1966, 2153000, 50.7999992, 1061.00, 1161.00, 'Lesotho',
        'Constitutional Monarchy', 'Letsie III', 2437, 'LS');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('LBN', 'Lebanon', 'Asia', 'Middle East', 10400, 1941, 3282000, 71.3000031, 17121.00, 15129.00, 'Lubnan',
        'Republic', 'Ã‰mile Lahoud', 2438, 'LB');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('LBR', 'Liberia', 'Africa', 'Western Africa', 111369, 1847, 3154000, 51, 2012.00, NULL, 'Liberia', 'Republic',
        'Charles Taylor', 2440, 'LR');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('LBY', 'Libyan Arab Jamahiriya', 'Africa', 'Northern Africa', 1759540, 1951, 5605000, 75.5, 44806.00, 40562.00,
        'Libiya', 'Socialistic State', 'Muammar al-Qadhafi', 2441, 'LY');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('LIE', 'Liechtenstein', 'Europe', 'Western Europe', 160, 1806, 32300, 78.8000031, 1119.00, 1084.00,
        'Liechtenstein', 'Constitutional Monarchy', 'Hans-Adam II', 2446, 'LI');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('LTU', 'Lithuania', 'Europe', 'Baltic Countries', 65301, 1991, 3698500, 69.0999985, 10692.00, 9585.00,
        'Lietuva', 'Republic', 'Valdas Adamkus', 2447, 'LT');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('LUX', 'Luxembourg', 'Europe', 'Western Europe', 2586, 1867, 435700, 77.0999985, 16321.00, 15519.00,
        'Luxembourg/LÃ«tzebuerg', 'Constitutional Monarchy', 'Henri', 2452, 'LU');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ESH', 'Western Sahara', 'Africa', 'Northern Africa', 266000, NULL, 293000, 49.7999992, 60.00, NULL,
        'As-Sahrawiya', 'Occupied by Marocco', 'Mohammed Abdel Aziz', 2453, 'EH');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MAC', 'Macao', 'Asia', 'Eastern Asia', 18, NULL, 473000, 81.5999985, 5749.00, 5940.00, 'Macau/Aomen',
        'Special Administrative Region of China', 'Jiang Zemin', 2454, 'MO');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MDG', 'Madagascar', 'Africa', 'Eastern Africa', 587041, 1960, 15942000, 55, 3750.00, 3545.00,
        'Madagasikara/Madagascar', 'Federal Republic', 'Didier Ratsiraka', 2455, 'MG');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MKD', 'Macedonia', 'Europe', 'Southern Europe', 25713, 1991, 2024000, 73.8000031, 1694.00, 1915.00,
        'Makedonija', 'Republic', 'Boris Trajkovski', 2460, 'MK');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MWI', 'Malawi', 'Africa', 'Eastern Africa', 118484, 1964, 10925000, 37.5999985, 1687.00, 2527.00, 'Malawi',
        'Republic', 'Bakili Muluzi', 2462, 'MW');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MDV', 'Maldives', 'Asia', 'Southern and Central Asia', 298, 1965, 286000, 62.2000008, 199.00, NULL,
        'Dhivehi Raajje/Maldives', 'Republic', 'Maumoon Abdul Gayoom', 2463, 'MV');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MYS', 'Malaysia', 'Asia', 'Southeast Asia', 329758, 1957, 22244000, 70.8000031, 69213.00, 97884.00, 'Malaysia',
        'Constitutional Monarchy, Federation', 'Salahuddin Abdul Aziz Shah Alhaj', 2464, 'MY');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MLI', 'Mali', 'Africa', 'Western Africa', 1240192, 1960, 11234000, 46.7000008, 2642.00, 2453.00, 'Mali',
        'Republic', 'Alpha Oumar KonarÃ©', 2482, 'ML');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MLT', 'Malta', 'Europe', 'Southern Europe', 316, 1964, 380200, 77.9000015, 3512.00, 3338.00, 'Malta',
        'Republic', 'Guido de Marco', 2484, 'MT');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MAR', 'Morocco', 'Africa', 'Northern Africa', 446550, 1956, 28351000, 69.0999985, 36124.00, 33514.00,
        'Al-Maghrib', 'Constitutional Monarchy', 'Mohammed VI', 2486, 'MA');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MHL', 'Marshall Islands', 'Oceania', 'Micronesia', 181, 1990, 64000, 65.5, 97.00, NULL,
        'Marshall Islands/Majol', 'Republic', 'Kessai Note', 2507, 'MH');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MTQ', 'Martinique', 'North America', 'Caribbean', 1102, NULL, 395000, 78.3000031, 2731.00, 2559.00,
        'Martinique', 'Overseas Department of France', 'Jacques Chirac', 2508, 'MQ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MRT', 'Mauritania', 'Africa', 'Western Africa', 1025520, 1960, 2670000, 50.7999992, 998.00, 1081.00,
        'Muritaniya/Mauritanie', 'Republic', 'Maaouiya Ould SidÂ´Ahmad Taya', 2509, 'MR');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MUS', 'Mauritius', 'Africa', 'Eastern Africa', 2040, 1968, 1158000, 71, 4251.00, 4186.00, 'Mauritius',
        'Republic', 'Cassam Uteem', 2511, 'MU');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MYT', 'Mayotte', 'Africa', 'Eastern Africa', 373, NULL, 149000, 59.5, 0.00, NULL, 'Mayotte',
        'Territorial Collectivity of France', 'Jacques Chirac', 2514, 'YT');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MEX', 'Mexico', 'North America', 'Central America', 1958201, 1810, 98881000, 71.5, 414972.00, 401461.00,
        'MÃ©xico', 'Federal Republic', 'Vicente Fox Quesada', 2515, 'MX');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('FSM', 'Micronesia, Federated States of', 'Oceania', 'Micronesia', 702, 1990, 119000, 68.5999985, 212.00, NULL,
        'Micronesia', 'Federal Republic', 'Leo A. Falcam', 2689, 'FM');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MDA', 'Moldova', 'Europe', 'Eastern Europe', 33851, 1991, 4380000, 64.5, 1579.00, 1872.00, 'Moldova',
        'Republic', 'Vladimir Voronin', 2690, 'MD');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MCO', 'Monaco', 'Europe', 'Western Europe', 1.5, 1861, 34000, 78.8000031, 776.00, NULL, 'Monaco',
        'Constitutional Monarchy', 'Rainier III', 2695, 'MC');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MNG', 'Mongolia', 'Asia', 'Eastern Asia', 1566500, 1921, 2662000, 67.3000031, 1043.00, 933.00, 'Mongol Uls',
        'Republic', 'Natsagiin Bagabandi', 2696, 'MN');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MSR', 'Montserrat', 'North America', 'Caribbean', 102, NULL, 11000, 78, 109.00, NULL, 'Montserrat',
        'Dependent Territory of the UK', 'Elisabeth II', 2697, 'MS');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MOZ', 'Mozambique', 'Africa', 'Eastern Africa', 801590, 1975, 19680000, 37.5, 2891.00, 2711.00, 'MoÃ§ambique',
        'Republic', 'JoaquÃ­m A. Chissano', 2698, 'MZ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MMR', 'Myanmar', 'Asia', 'Southeast Asia', 676578, 1948, 45611000, 54.9000015, 180375.00, 171028.00,
        'Myanma Pye', 'Republic', 'kenraali Than Shwe', 2710, 'MM');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('NAM', 'Namibia', 'Africa', 'Southern Africa', 824292, 1990, 1726000, 42.5, 3101.00, 3384.00, 'Namibia',
        'Republic', 'Sam Nujoma', 2726, 'NA');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('NRU', 'Nauru', 'Oceania', 'Micronesia', 21, 1968, 12000, 60.7999992, 197.00, NULL, 'Naoero/Nauru', 'Republic',
        'Bernard Dowiyogo', 2728, 'NR');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('NPL', 'Nepal', 'Asia', 'Southern and Central Asia', 147181, 1769, 23930000, 57.7999992, 4768.00, 4837.00,
        'Nepal', 'Constitutional Monarchy', 'Gyanendra Bir Bikram', 2729, 'NP');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('NIC', 'Nicaragua', 'North America', 'Central America', 130000, 1838, 5074000, 68.6999969, 1988.00, 2023.00,
        'Nicaragua', 'Republic', 'Arnoldo AlemÃ¡n Lacayo', 2734, 'NI');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('NER', 'Niger', 'Africa', 'Western Africa', 1267000, 1960, 10730000, 41.2999992, 1706.00, 1580.00, 'Niger',
        'Republic', 'Mamadou Tandja', 2738, 'NE');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('NGA', 'Nigeria', 'Africa', 'Western Africa', 923768, 1960, 111506000, 51.5999985, 65707.00, 58623.00,
        'Nigeria', 'Federal Republic', 'Olusegun Obasanjo', 2754, 'NG');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('NIU', 'Niue', 'Oceania', 'Polynesia', 260, NULL, 2000, NULL, 0.00, NULL, 'Niue',
        'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 2805, 'NU');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('NFK', 'Norfolk Island', 'Oceania', 'Australia and New Zealand', 36, NULL, 2000, NULL, 0.00, NULL,
        'Norfolk Island', 'Territory of Australia', 'Elisabeth II', 2806, 'NF');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('NOR', 'Norway', 'Europe', 'Nordic Countries', 323877, 1905, 4478500, 78.6999969, 145895.00, 153370.00, 'Norge',
        'Constitutional Monarchy', 'Harald V', 2807, 'NO');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('CIV', 'CÃ´te dÂ’Ivoire', 'Africa', 'Western Africa', 322463, 1960, 14786000, 45.2000008, 11345.00, 10285.00,
        'CÃ´te dÂ’Ivoire', 'Republic', 'Laurent Gbagbo', 2814, 'CI');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('OMN', 'Oman', 'Asia', 'Middle East', 309500, 1951, 2542000, 71.8000031, 16904.00, 16153.00, 'Â´Uman',
        'Monarchy (Sultanate)', 'Qabus ibn SaÂ´id', 2821, 'OM');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('PAK', 'Pakistan', 'Asia', 'Southern and Central Asia', 796095, 1947, 156483000, 61.0999985, 61289.00, 58549.00,
        'Pakistan', 'Republic', 'Mohammad Rafiq Tarar', 2831, 'PK');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('PLW', 'Palau', 'Oceania', 'Micronesia', 459, 1994, 19000, 68.5999985, 105.00, NULL, 'Belau/Palau', 'Republic',
        'Kuniwo Nakamura', 2881, 'PW');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('PAN', 'Panama', 'North America', 'Central America', 75517, 1903, 2856000, 75.5, 9131.00, 8700.00, 'PanamÃ¡',
        'Republic', 'Mireya Elisa Moscoso RodrÃ­guez', 2882, 'PA');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('PNG', 'Papua New Guinea', 'Oceania', 'Melanesia', 462840, 1975, 4807000, 63.0999985, 4988.00, 6328.00,
        'Papua New Guinea/Papua Niugini', 'Constitutional Monarchy', 'Elisabeth II', 2884, 'PG');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('PRY', 'Paraguay', 'South America', 'South America', 406752, 1811, 5496000, 73.6999969, 8444.00, 9555.00,
        'Paraguay', 'Republic', 'Luis Ã�ngel GonzÃ¡lez Macchi', 2885, 'PY');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('PER', 'Peru', 'South America', 'South America', 1285216, 1821, 25662000, 70, 64140.00, 65186.00, 'PerÃº/Piruw',
        'Republic', 'Valentin Paniagua Corazao', 2890, 'PE');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('PCN', 'Pitcairn', 'Oceania', 'Polynesia', 49, NULL, 50, NULL, 0.00, NULL, 'Pitcairn',
        'Dependent Territory of the UK', 'Elisabeth II', 2912, 'PN');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('MNP', 'Northern Mariana Islands', 'Oceania', 'Micronesia', 464, NULL, 78000, 75.5, 0.00, NULL,
        'Northern Mariana Islands', 'Commonwealth of the US', 'George W. Bush', 2913, 'MP');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('PRT', 'Portugal', 'Europe', 'Southern Europe', 91982, 1143, 9997600, 75.8000031, 105954.00, 102133.00,
        'Portugal', 'Republic', 'Jorge SampÃ£io', 2914, 'PT');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('PRI', 'Puerto Rico', 'North America', 'Caribbean', 8875, NULL, 3869000, 75.5999985, 34100.00, 32100.00,
        'Puerto Rico', 'Commonwealth of the US', 'George W. Bush', 2919, 'PR');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('POL', 'Poland', 'Europe', 'Eastern Europe', 323250, 1918, 38653600, 73.1999969, 151697.00, 135636.00, 'Polska',
        'Republic', 'Aleksander Kwasniewski', 2928, 'PL');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GNQ', 'Equatorial Guinea', 'Africa', 'Central Africa', 28051, 1968, 453000, 53.5999985, 283.00, 542.00,
        'Guinea Ecuatorial', 'Republic', 'Teodoro Obiang Nguema Mbasogo', 2972, 'GQ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('QAT', 'Qatar', 'Asia', 'Middle East', 11000, 1971, 599000, 72.4000015, 9472.00, 8920.00, 'Qatar', 'Monarchy',
        'Hamad ibn Khalifa al-Thani', 2973, 'QA');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('FRA', 'France', 'Europe', 'Western Europe', 551500, 843, 59225700, 78.8000031, 1424285.00, 1392448.00,
        'France', 'Republic', 'Jacques Chirac', 2974, 'FR');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('GUF', 'French Guiana', 'South America', 'South America', 90000, NULL, 181000, 76.0999985, 681.00, NULL,
        'Guyane franÃ§aise', 'Overseas Department of France', 'Jacques Chirac', 3014, 'GF');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('PYF', 'French Polynesia', 'Oceania', 'Polynesia', 4000, NULL, 235000, 74.8000031, 818.00, 781.00,
        'PolynÃ©sie franÃ§aise', 'Nonmetropolitan Territory of France', 'Jacques Chirac', 3016, 'PF');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('REU', 'RÃ©union', 'Africa', 'Eastern Africa', 2510, NULL, 699000, 72.6999969, 8287.00, 7988.00, 'RÃ©union',
        'Overseas Department of France', 'Jacques Chirac', 3017, 'RE');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ROM', 'Romania', 'Europe', 'Eastern Europe', 238391, 1878, 22455500, 69.9000015, 38158.00, 34843.00,
        'RomÃ¢nia', 'Republic', 'Ion Iliescu', 3018, 'RO');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('RWA', 'Rwanda', 'Africa', 'Eastern Africa', 26338, 1962, 7733000, 39.2999992, 2036.00, 1863.00,
        'Rwanda/Urwanda', 'Republic', 'Paul Kagame', 3047, 'RW');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SWE', 'Sweden', 'Europe', 'Nordic Countries', 449964, 836, 8861400, 79.5999985, 226492.00, 227757.00,
        'Sverige', 'Constitutional Monarchy', 'Carl XVI Gustaf', 3048, 'SE');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SHN', 'Saint Helena', 'Africa', 'Western Africa', 314, NULL, 6000, 76.8000031, 0.00, NULL, 'Saint Helena',
        'Dependent Territory of the UK', 'Elisabeth II', 3063, 'SH');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('KNA', 'Saint Kitts and Nevis', 'North America', 'Caribbean', 261, 1983, 38000, 70.6999969, 299.00, NULL,
        'Saint Kitts and Nevis', 'Constitutional Monarchy', 'Elisabeth II', 3064, 'KN');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('LCA', 'Saint Lucia', 'North America', 'Caribbean', 622, 1979, 154000, 72.3000031, 571.00, NULL, 'Saint Lucia',
        'Constitutional Monarchy', 'Elisabeth II', 3065, 'LC');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('VCT', 'Saint Vincent and the Grenadines', 'North America', 'Caribbean', 388, 1979, 114000, 72.3000031, 285.00,
        NULL, 'Saint Vincent and the Grenadines', 'Constitutional Monarchy', 'Elisabeth II', 3066, 'VC');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SPM', 'Saint Pierre and Miquelon', 'North America', 'North America', 242, NULL, 7000, 77.5999985, 0.00, NULL,
        'Saint-Pierre-et-Miquelon', 'Territorial Collectivity of France', 'Jacques Chirac', 3067, 'PM');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('DEU', 'Germany', 'Europe', 'Western Europe', 357022, 1955, 82164700, 77.4000015, 2133367.00, 2102826.00,
        'Deutschland', 'Federal Republic', 'Johannes Rau', 3068, 'DE');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SLB', 'Solomon Islands', 'Oceania', 'Melanesia', 28896, 1978, 444000, 71.3000031, 182.00, 220.00,
        'Solomon Islands', 'Constitutional Monarchy', 'Elisabeth II', 3161, 'SB');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ZMB', 'Zambia', 'Africa', 'Eastern Africa', 752618, 1964, 9169000, 37.2000008, 3377.00, 3922.00, 'Zambia',
        'Republic', 'Frederick Chiluba', 3162, 'ZM');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('WSM', 'Samoa', 'Oceania', 'Polynesia', 2831, 1962, 180000, 69.1999969, 141.00, 157.00, 'Samoa',
        'Parlementary Monarchy', 'Malietoa Tanumafili II', 3169, 'WS');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SMR', 'San Marino', 'Europe', 'Southern Europe', 61, 885, 27000, 81.0999985, 510.00, NULL, 'San Marino',
        'Republic', NULL, 3171, 'SM');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('STP', 'Sao Tome and Principe', 'Africa', 'Central Africa', 964, 1975, 147000, 65.3000031, 6.00, NULL,
        'SÃ£o TomÃ© e PrÃ­ncipe', 'Republic', 'Miguel Trovoada', 3172, 'ST');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SAU', 'Saudi Arabia', 'Asia', 'Middle East', 2149690, 1932, 21607000, 67.8000031, 137635.00, 146171.00,
        'Al-Â´Arabiya as-SaÂ´udiya', 'Monarchy', 'Fahd ibn Abdul-Aziz al-SaÂ´ud', 3173, 'SA');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SEN', 'Senegal', 'Africa', 'Western Africa', 196722, 1960, 9481000, 62.2000008, 4787.00, 4542.00,
        'SÃ©nÃ©gal/Sounougal', 'Republic', 'Abdoulaye Wade', 3198, 'SN');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SYC', 'Seychelles', 'Africa', 'Eastern Africa', 455, 1976, 77000, 70.4000015, 536.00, 539.00,
        'Sesel/Seychelles', 'Republic', 'France-Albert RenÃ©', 3206, 'SC');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SLE', 'Sierra Leone', 'Africa', 'Western Africa', 71740, 1961, 4854000, 45.2999992, 746.00, 858.00,
        'Sierra Leone', 'Republic', 'Ahmed Tejan Kabbah', 3207, 'SL');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SGP', 'Singapore', 'Asia', 'Southeast Asia', 618, 1965, 3567000, 80.0999985, 86503.00, 96318.00,
        'Singapore/Singapura/Xinjiapo/Singapur', 'Republic', 'Sellapan Rama Nathan', 3208, 'SG');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SVK', 'Slovakia', 'Europe', 'Eastern Europe', 49012, 1993, 5398700, 73.6999969, 20594.00, 19452.00,
        'Slovensko', 'Republic', 'Rudolf Schuster', 3209, 'SK');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SVN', 'Slovenia', 'Europe', 'Southern Europe', 20256, 1991, 1987800, 74.9000015, 19756.00, 18202.00,
        'Slovenija', 'Republic', 'Milan Kucan', 3212, 'SI');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SOM', 'Somalia', 'Africa', 'Eastern Africa', 637657, 1960, 10097000, 46.2000008, 935.00, NULL, 'Soomaaliya',
        'Republic', 'Abdiqassim Salad Hassan', 3214, 'SO');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('LKA', 'Sri Lanka', 'Asia', 'Southern and Central Asia', 65610, 1948, 18827000, 71.8000031, 15706.00, 15091.00,
        'Sri Lanka/Ilankai', 'Republic', 'Chandrika Kumaratunga', 3217, 'LK');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SDN', 'Sudan', 'Africa', 'Northern Africa', 2505813, 1956, 29490000, 56.5999985, 10162.00, NULL, 'As-Sudan',
        'Islamic Republic', 'Omar Hassan Ahmad al-Bashir', 3225, 'SD');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('FIN', 'Finland', 'Europe', 'Nordic Countries', 338145, 1917, 5171300, 77.4000015, 121914.00, 119833.00,
        'Suomi', 'Republic', 'Tarja Halonen', 3236, 'FI');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SUR', 'Suriname', 'South America', 'South America', 163265, 1975, 417000, 71.4000015, 870.00, 706.00,
        'Suriname', 'Republic', 'Ronald Venetiaan', 3243, 'SR');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SWZ', 'Swaziland', 'Africa', 'Southern Africa', 17364, 1968, 1008000, 40.4000015, 1206.00, 1312.00, 'kaNgwane',
        'Monarchy', 'Mswati III', 3244, 'SZ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('CHE', 'Switzerland', 'Europe', 'Western Europe', 41284, 1499, 7160400, 79.5999985, 264478.00, 256092.00,
        'Schweiz/Suisse/Svizzera/Svizra', 'Federation', 'Adolf Ogi', 3248, 'CH');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SYR', 'Syria', 'Asia', 'Middle East', 185180, 1941, 16125000, 68.5, 65984.00, 64926.00, 'Suriya', 'Republic',
        'Bashar al-Assad', 3250, 'SY');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('TJK', 'Tajikistan', 'Asia', 'Southern and Central Asia', 143100, 1991, 6188000, 64.0999985, 1990.00, 1056.00,
        'ToÃ§ikiston', 'Republic', 'Emomali Rahmonov', 3261, 'TJ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('TWN', 'Taiwan', 'Asia', 'Eastern Asia', 36188, 1945, 22256000, 76.4000015, 256254.00, 263451.00, 'TÂ’ai-wan',
        'Republic', 'Chen Shui-bian', 3263, 'TW');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('TZA', 'Tanzania', 'Africa', 'Eastern Africa', 883749, 1961, 33517000, 52.2999992, 8005.00, 7388.00, 'Tanzania',
        'Republic', 'Benjamin William Mkapa', 3306, 'TZ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('DNK', 'Denmark', 'Europe', 'Nordic Countries', 43094, 800, 5330000, 76.5, 174099.00, 169264.00, 'Danmark',
        'Constitutional Monarchy', 'Margrethe II', 3315, 'DK');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('THA', 'Thailand', 'Asia', 'Southeast Asia', 513115, 1350, 61399000, 68.5999985, 116416.00, 153907.00,
        'Prathet Thai', 'Constitutional Monarchy', 'Bhumibol Adulyadej', 3320, 'TH');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('TGO', 'Togo', 'Africa', 'Western Africa', 56785, 1960, 4629000, 54.7000008, 1449.00, 1400.00, 'Togo',
        'Republic', 'GnassingbÃ© EyadÃ©ma', 3332, 'TG');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('TKL', 'Tokelau', 'Oceania', 'Polynesia', 12, NULL, 2000, NULL, 0.00, NULL, 'Tokelau',
        'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 3333, 'TK');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('TON', 'Tonga', 'Oceania', 'Polynesia', 650, 1970, 99000, 67.9000015, 146.00, 170.00, 'Tonga', 'Monarchy',
        'Taufa''ahau Tupou IV', 3334, 'TO');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('TTO', 'Trinidad and Tobago', 'North America', 'Caribbean', 5130, 1962, 1295000, 68, 6232.00, 5867.00,
        'Trinidad and Tobago', 'Republic', 'Arthur N. R. Robinson', 3336, 'TT');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('TCD', 'Chad', 'Africa', 'Central Africa', 1284000, 1960, 7651000, 50.5, 1208.00, 1102.00, 'Tchad/Tshad',
        'Republic', 'Idriss DÃ©by', 3337, 'TD');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('CZE', 'Czech Republic', 'Europe', 'Eastern Europe', 78866, 1993, 10278100, 74.5, 55017.00, 52037.00, 'Â¸esko',
        'Republic', 'VÃ¡clav Havel', 3339, 'CZ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('TUN', 'Tunisia', 'Africa', 'Northern Africa', 163610, 1956, 9586000, 73.6999969, 20026.00, 18898.00,
        'Tunis/Tunisie', 'Republic', 'Zine al-Abidine Ben Ali', 3349, 'TN');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('TUR', 'Turkey', 'Asia', 'Middle East', 774815, 1923, 66591000, 71, 210721.00, 189122.00, 'TÃ¼rkiye',
        'Republic', 'Ahmet Necdet Sezer', 3358, 'TR');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('TKM', 'Turkmenistan', 'Asia', 'Southern and Central Asia', 488100, 1991, 4459000, 60.9000015, 4397.00, 2000.00,
        'TÃ¼rkmenostan', 'Republic', 'Saparmurad Nijazov', 3419, 'TM');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('TCA', 'Turks and Caicos Islands', 'North America', 'Caribbean', 430, NULL, 17000, 73.3000031, 96.00, NULL,
        'The Turks and Caicos Islands', 'Dependent Territory of the UK', 'Elisabeth II', 3423, 'TC');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('TUV', 'Tuvalu', 'Oceania', 'Polynesia', 26, 1978, 12000, 66.3000031, 6.00, NULL, 'Tuvalu',
        'Constitutional Monarchy', 'Elisabeth II', 3424, 'TV');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('UGA', 'Uganda', 'Africa', 'Eastern Africa', 241038, 1962, 21778000, 42.9000015, 6313.00, 6887.00, 'Uganda',
        'Republic', 'Yoweri Museveni', 3425, 'UG');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('UKR', 'Ukraine', 'Europe', 'Eastern Europe', 603700, 1991, 50456000, 66, 42168.00, 49677.00, 'Ukrajina',
        'Republic', 'Leonid KutÂšma', 3426, 'UA');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('HUN', 'Hungary', 'Europe', 'Eastern Europe', 93030, 1918, 10043200, 71.4000015, 48267.00, 45914.00,
        'MagyarorszÃ¡g', 'Republic', 'Ferenc MÃ¡dl', 3483, 'HU');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('URY', 'Uruguay', 'South America', 'South America', 175016, 1828, 3337000, 75.1999969, 20831.00, 19967.00,
        'Uruguay', 'Republic', 'Jorge Batlle IbÃ¡Ã±ez', 3492, 'UY');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('NCL', 'New Caledonia', 'Oceania', 'Melanesia', 18575, NULL, 214000, 72.8000031, 3563.00, NULL,
        'Nouvelle-CalÃ©donie', 'Nonmetropolitan Territory of France', 'Jacques Chirac', 3493, 'NC');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('NZL', 'New Zealand', 'Oceania', 'Australia and New Zealand', 270534, 1907, 3862000, 77.8000031, 54669.00,
        64960.00, 'New Zealand/Aotearoa', 'Constitutional Monarchy', 'Elisabeth II', 3499, 'NZ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('UZB', 'Uzbekistan', 'Asia', 'Southern and Central Asia', 447400, 1991, 24318000, 63.7000008, 14194.00,
        21300.00, 'Uzbekiston', 'Republic', 'Islam Karimov', 3503, 'UZ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BLR', 'Belarus', 'Europe', 'Eastern Europe', 207600, 1991, 10236000, 68, 13714.00, NULL, 'Belarus', 'Republic',
        'Aljaksandr LukaÂšenka', 3520, 'BY');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('WLF', 'Wallis and Futuna', 'Oceania', 'Polynesia', 200, NULL, 15000, NULL, 0.00, NULL, 'Wallis-et-Futuna',
        'Nonmetropolitan Territory of France', 'Jacques Chirac', 3536, 'WF');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('VUT', 'Vanuatu', 'Oceania', 'Melanesia', 12189, 1980, 190000, 60.5999985, 261.00, 246.00, 'Vanuatu',
        'Republic', 'John Bani', 3537, 'VU');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('VAT', 'Holy See (Vatican City State)', 'Europe', 'Southern Europe', 0.400000006, 1929, 1000, NULL, 9.00, NULL,
        'Santa Sede/CittÃ  del Vaticano', 'Independent Church State', 'Johannes Paavali II', 3538, 'VA');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('VEN', 'Venezuela', 'South America', 'South America', 912050, 1811, 24170000, 73.0999985, 95023.00, 88434.00,
        'Venezuela', 'Federal Republic', 'Hugo ChÃ¡vez FrÃ­as', 3539, 'VE');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('RUS', 'Russian Federation', 'Europe', 'Eastern Europe', 17075400, 1991, 146934000, 67.1999969, 276608.00,
        442989.00, 'Rossija', 'Federal Republic', 'Vladimir Putin', 3580, 'RU');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('VNM', 'Vietnam', 'Asia', 'Southeast Asia', 331689, 1945, 79832000, 69.3000031, 21929.00, 22834.00, 'ViÃªt Nam',
        'Socialistic Republic', 'TrÃ¢n Duc Luong', 3770, 'VN');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('EST', 'Estonia', 'Europe', 'Baltic Countries', 45227, 1991, 1439200, 69.5, 5328.00, 3371.00, 'Eesti',
        'Republic', 'Lennart Meri', 3791, 'EE');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('USA', 'United States', 'North America', 'North America', 9363520, 1776, 278357000, 77.0999985, 8510700.00,
        8110900.00, 'United States', 'Federal Republic', 'George W. Bush', 3813, 'US');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('VIR', 'Virgin Islands, U.S.', 'North America', 'Caribbean', 347, NULL, 93000, 78.0999985, 0.00, NULL,
        'Virgin Islands of the United States', 'US Territory', 'George W. Bush', 4067, 'VI');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ZWE', 'Zimbabwe', 'Africa', 'Eastern Africa', 390757, 1980, 11669000, 37.7999992, 5951.00, 8670.00, 'Zimbabwe',
        'Republic', 'Robert G. Mugabe', 4068, 'ZW');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('PSE', 'Palestine', 'Asia', 'Middle East', 6257, NULL, 3101000, 71.4000015, 4173.00, NULL, 'Filastin',
        'Autonomous Area', 'Yasser (Yasir) Arafat', 4074, 'PS');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ATA', 'Antarctica', 'Antarctica', 'Antarctica', 13120000, NULL, 0, NULL, 0.00, NULL, 'Â–', 'Co-administrated',
        '', NULL, 'AQ');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('BVT', 'Bouvet Island', 'Antarctica', 'Antarctica', 59, NULL, 0, NULL, 0.00, NULL, 'BouvetÃ¸ya',
        'Dependent Territory of Norway', 'Harald V', NULL, 'BV');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('IOT', 'British Indian Ocean Territory', 'Africa', 'Eastern Africa', 78, NULL, 0, NULL, 0.00, NULL,
        'British Indian Ocean Territory', 'Dependent Territory of the UK', 'Elisabeth II', NULL, 'IO');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('SGS', 'South Georgia and the South Sandwich Islands', 'Antarctica', 'Antarctica', 3903, NULL, 0, NULL, 0.00,
        NULL, 'South Georgia and the South Sandwich Islands', 'Dependent Territory of the UK', 'Elisabeth II', NULL,
        'GS');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('HMD', 'Heard Island and McDonald Islands', 'Antarctica', 'Antarctica', 359, NULL, 0, NULL, 0.00, NULL,
        'Heard and McDonald Islands', 'Territory of Australia', 'Elisabeth II', NULL, 'HM');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('ATF', 'French Southern territories', 'Antarctica', 'Antarctica', 7780, NULL, 0, NULL, 0.00, NULL,
        'Terres australes franÃ§aises', 'Nonmetropolitan Territory of France', 'Jacques Chirac', NULL, 'TF');
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold,
                     localname, governmentform, headofstate, capital, code2)
VALUES ('UMI', 'United States Minor Outlying Islands', 'Oceania', 'Micronesia/Caribbean', 16, NULL, 0, NULL, 0.00, NULL,
        'United States Minor Outlying Islands', 'Dependent Territory of the US', 'George W. Bush', NULL, 'UM');

--
-- Insert country languages.
--

INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AFG', 'Pashto', true, 52.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NLD', 'Dutch', true, 95.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ANT', 'Papiamento', true, 86.1999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ALB', 'Albaniana', true, 97.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DZA', 'Arabic', true, 86);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ASM', 'Samoan', true, 90.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AND', 'Spanish', false, 44.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AGO', 'Ovimbundu', false, 37.2000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AIA', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ATG', 'Creole English', false, 95.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ARE', 'Arabic', true, 42);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ARG', 'Spanish', true, 96.8000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ARM', 'Armenian', true, 93.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ABW', 'Papiamento', false, 76.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUS', 'English', true, 81.1999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AZE', 'Azerbaijani', true, 89);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BHS', 'Creole English', false, 89.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BHR', 'Arabic', true, 67.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BGD', 'Bengali', true, 97.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BRB', 'Bajan', false, 95.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BEL', 'Dutch', true, 59.2000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BLZ', 'English', true, 50.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BEN', 'Fon', false, 39.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BMU', 'English', true, 100);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BTN', 'Dzongkha', true, 50);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BOL', 'Spanish', true, 87.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BIH', 'Serbo-Croatian', true, 99.1999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BWA', 'Tswana', false, 75.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BRA', 'Portuguese', true, 97.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GBR', 'English', true, 97.3000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VGB', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BRN', 'Malay', true, 45.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BGR', 'Bulgariana', true, 83.1999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BFA', 'Mossi', false, 50.2000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BDI', 'Kirundi', true, 98.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CYM', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHL', 'Spanish', true, 89.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COK', 'Maori', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CRI', 'Spanish', true, 97.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DJI', 'Somali', false, 43.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DMA', 'Creole English', false, 100);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DOM', 'Spanish', true, 98);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ECU', 'Spanish', true, 93);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('EGY', 'Arabic', true, 98.8000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SLV', 'Spanish', true, 100);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ERI', 'Tigrinja', true, 49.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ESP', 'Spanish', true, 74.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZAF', 'Zulu', true, 22.7000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ETH', 'Oromo', false, 31);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FLK', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FJI', 'Fijian', true, 50.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PHL', 'Pilipino', true, 29.2999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FRO', 'Faroese', true, 100);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GAB', 'Fang', false, 35.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GMB', 'Malinke', false, 34.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GEO', 'Georgiana', true, 71.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GHA', 'Akan', false, 52.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GIB', 'English', true, 88.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GRD', 'Creole English', false, 100);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GRL', 'Greenlandic', true, 87.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GLP', 'Creole French', false, 95);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GUM', 'English', true, 37.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GTM', 'Spanish', true, 64.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GIN', 'Ful', false, 38.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GNB', 'Crioulo', false, 36.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GUY', 'Creole English', false, 96.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HTI', 'Haiti Creole', false, 100);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HND', 'Spanish', true, 97.1999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HKG', 'Canton Chinese', false, 88.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SJM', 'Norwegian', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IDN', 'Javanese', false, 39.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IND', 'Hindi', true, 39.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRQ', 'Arabic', true, 77.1999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRN', 'Persian', true, 45.7000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRL', 'English', true, 98.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ISL', 'Icelandic', true, 95.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ISR', 'Hebrew', true, 63.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ITA', 'Italian', true, 94.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TMP', 'Sunda', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUT', 'German', true, 92);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('JAM', 'Creole English', false, 94.1999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('JPN', 'Japanese', true, 99.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('YEM', 'Arabic', true, 99.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('JOR', 'Arabic', true, 97.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CXR', 'Chinese', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('YUG', 'Serbo-Croatian', true, 75.1999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KHM', 'Khmer', true, 88.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CMR', 'Fang', false, 19.7000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAN', 'English', true, 60.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CPV', 'Crioulo', false, 100);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KAZ', 'Kazakh', true, 46);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KEN', 'Kikuyu', false, 20.8999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAF', 'Gbaya', false, 23.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHN', 'Chinese', true, 92);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KGZ', 'Kirgiz', true, 59.7000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KIR', 'Kiribati', true, 98.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COL', 'Spanish', true, 99);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COM', 'Comorian', true, 75);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COG', 'Kongo', false, 51.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COD', 'Luba', false, 18);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CCK', 'Malay', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PRK', 'Korean', true, 99.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KOR', 'Korean', true, 99.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GRC', 'Greek', true, 98.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HRV', 'Serbo-Croatian', true, 95.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CUB', 'Spanish', true, 100);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KWT', 'Arabic', true, 78.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CYP', 'Greek', true, 74.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LAO', 'Lao', true, 67.1999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LVA', 'Latvian', true, 55.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LSO', 'Sotho', true, 85);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LBN', 'Arabic', true, 93);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LBR', 'Kpelle', false, 19.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LBY', 'Arabic', true, 96);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LIE', 'German', true, 89);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LTU', 'Lithuanian', true, 81.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LUX', 'Luxembourgish', true, 64.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ESH', 'Arabic', true, 100);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MAC', 'Canton Chinese', false, 85.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MDG', 'Malagasy', true, 98.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MKD', 'Macedonian', true, 66.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MWI', 'Chichewa', true, 58.2999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MDV', 'Dhivehi', true, 100);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MYS', 'Malay', true, 58.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MLI', 'Bambara', false, 31.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MLT', 'Maltese', true, 95.8000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MAR', 'Arabic', true, 65);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MHL', 'Marshallese', true, 96.8000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MTQ', 'Creole French', false, 96.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MRT', 'Hassaniya', false, 81.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MUS', 'Creole French', false, 70.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MYT', 'MahorÃ©', false, 41.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MEX', 'Spanish', true, 92.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FSM', 'Trukese', false, 41.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MDA', 'Romanian', true, 61.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MCO', 'French', true, 41.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MNG', 'Mongolian', true, 78.8000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MSR', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MOZ', 'Makua', false, 27.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MMR', 'Burmese', true, 69);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NAM', 'Ovambo', false, 50.7000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NRU', 'Nauru', true, 57.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NPL', 'Nepali', true, 50.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NIC', 'Spanish', true, 97.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NER', 'Hausa', false, 53.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NGA', 'Joruba', false, 21.3999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NIU', 'Niue', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NFK', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NOR', 'Norwegian', true, 96.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CIV', 'Akan', false, 30);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('OMN', 'Arabic', true, 76.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PAK', 'Punjabi', false, 48.2000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PLW', 'Palau', true, 82.1999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PAN', 'Spanish', true, 76.8000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PNG', 'Papuan Languages', false, 78.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PRY', 'Spanish', true, 55.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PER', 'Spanish', true, 79.8000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PCN', 'Pitcairnese', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MNP', 'Philippene Languages', false, 34.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PRT', 'Portuguese', true, 99);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PRI', 'Spanish', true, 51.2999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('POL', 'Polish', true, 97.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GNQ', 'Fang', false, 84.8000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('QAT', 'Arabic', true, 40.7000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FRA', 'French', true, 93.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GUF', 'Creole French', false, 94.3000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PYF', 'Tahitian', false, 46.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('REU', 'Creole French', false, 91.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ROM', 'Romanian', true, 90.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('RWA', 'Rwanda', true, 100);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SWE', 'Swedish', true, 89.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SHN', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KNA', 'Creole English', false, 100);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LCA', 'Creole French', false, 80);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VCT', 'Creole English', false, 99.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SPM', 'French', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DEU', 'German', true, 91.3000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SLB', 'Malenasian Languages', false, 85.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZMB', 'Bemba', false, 29.7000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('WSM', 'Samoan-English', false, 52);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SMR', 'Italian', true, 100);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('STP', 'Crioulo', false, 86.3000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SAU', 'Arabic', true, 95);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SEN', 'Wolof', true, 48.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SYC', 'Seselwa', false, 91.3000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SLE', 'Mende', false, 34.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SGP', 'Chinese', true, 77.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SVK', 'Slovak', true, 85.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SVN', 'Slovene', true, 87.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SOM', 'Somali', true, 98.3000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LKA', 'Singali', true, 60.2999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SDN', 'Arabic', true, 49.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FIN', 'Finnish', true, 92.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SUR', 'Sranantonga', false, 81);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SWZ', 'Swazi', true, 89.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHE', 'German', true, 63.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SYR', 'Arabic', true, 90);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TJK', 'Tadzhik', true, 62.2000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TWN', 'Min', false, 66.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TZA', 'Nyamwesi', false, 21.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DNK', 'Danish', true, 93.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('THA', 'Thai', true, 52.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TGO', 'Ewe', true, 23.2000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TKL', 'Tokelau', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TON', 'Tongan', true, 98.3000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TTO', 'English', false, 93.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TCD', 'Sara', false, 27.7000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CZE', 'Czech', true, 81.1999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TUN', 'Arabic', true, 69.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TUR', 'Turkish', true, 87.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TKM', 'Turkmenian', true, 76.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TCA', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TUV', 'Tuvalu', true, 92.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UGA', 'Ganda', false, 18.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UKR', 'Ukrainian', true, 64.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HUN', 'Hungarian', true, 98.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('URY', 'Spanish', true, 95.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NCL', 'Malenasian Languages', false, 45.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NZL', 'English', true, 87);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UZB', 'Uzbek', true, 72.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BLR', 'Belorussian', true, 65.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('WLF', 'Wallis', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VUT', 'Bislama', true, 56.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VAT', 'Italian', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VEN', 'Spanish', true, 96.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('RUS', 'Russian', true, 86.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VNM', 'Vietnamese', true, 86.8000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('EST', 'Estonian', true, 65.3000031);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('USA', 'English', true, 86.1999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VIR', 'English', true, 81.6999969);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UMI', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZWE', 'Shona', false, 72.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PSE', 'Arabic', false, 95.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AFG', 'Dari', true, 32.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NLD', 'Fries', false, 3.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ANT', 'English', false, 7.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ALB', 'Greek', false, 1.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DZA', 'Berberi', false, 14);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ASM', 'English', true, 3.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AND', 'Catalan', true, 32.2999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AGO', 'Mbundu', false, 21.6000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ATG', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ARE', 'Hindi', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ARG', 'Italian', false, 1.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ARM', 'Azerbaijani', false, 2.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ABW', 'English', false, 9.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUS', 'Italian', false, 2.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AZE', 'Russian', false, 3);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BHS', 'Creole French', false, 10.3000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BHR', 'English', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BGD', 'Chakma', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BRB', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BEL', 'French', true, 32.5999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BLZ', 'Spanish', false, 31.6000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BEN', 'Joruba', false, 12.1999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BTN', 'Nepali', false, 34.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BOL', 'KetÂšua', true, 8.10000038);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BWA', 'Shona', false, 12.3000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BRA', 'German', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GBR', 'Kymri', false, 0.899999976);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BRN', 'Malay-English', false, 28.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BGR', 'Turkish', false, 9.39999962);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BFA', 'Ful', false, 9.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BDI', 'French', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHL', 'Araucan', false, 9.60000038);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COK', 'English', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CRI', 'Creole English', false, 2);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DJI', 'Afar', false, 34.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DMA', 'Creole French', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DOM', 'Creole French', false, 2);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ECU', 'KetÂšua', false, 7);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('EGY', 'Sinaberberi', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SLV', 'Nahua', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ERI', 'Tigre', false, 31.7000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ESP', 'Catalan', false, 16.8999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZAF', 'Xhosa', true, 17.7000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ETH', 'Amhara', false, 30);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FJI', 'Hindi', false, 43.7000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PHL', 'Cebuano', false, 23.2999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FRO', 'Danish', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GAB', 'Punu-sira-nzebi', false, 17.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GMB', 'Ful', false, 16.2000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GEO', 'Russian', false, 8.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GHA', 'Mossi', false, 15.8000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GIB', 'Arabic', false, 7.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GRL', 'Danish', true, 12.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GLP', 'French', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GUM', 'Chamorro', true, 29.6000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GTM', 'QuichÃ©', false, 10.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GIN', 'Malinke', false, 23.2000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GNB', 'Ful', false, 16.6000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GUY', 'Caribbean', false, 2.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HTI', 'French', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HND', 'Garifuna', false, 1.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HKG', 'English', true, 2.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SJM', 'Russian', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IDN', 'Sunda', false, 15.8000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IND', 'Bengali', false, 8.19999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRQ', 'Kurdish', false, 19);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRN', 'Azerbaijani', false, 16.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRL', 'Irish', true, 1.60000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ISL', 'English', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ISR', 'Arabic', true, 18);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ITA', 'Sardinian', false, 2.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TMP', 'Portuguese', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUT', 'Serbo-Croatian', false, 2.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('JAM', 'Hindi', false, 1.89999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('JPN', 'Korean', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('YEM', 'Soqutri', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('JOR', 'Circassian', false, 1);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CXR', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('YUG', 'Albaniana', false, 16.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KHM', 'Vietnamese', false, 5.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CMR', 'Bamileke-bamum', false, 18.6000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAN', 'French', true, 23.3999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CPV', 'Portuguese', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KAZ', 'Russian', false, 34.7000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KEN', 'Luhya', false, 13.8000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAF', 'Banda', false, 23.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHN', 'Zhuang', false, 1.39999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KGZ', 'Russian', true, 16.2000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KIR', 'Tuvalu', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COL', 'Chibcha', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COM', 'Comorian-French', false, 12.8999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COG', 'Teke', false, 17.2999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COD', 'Kongo', false, 16);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CCK', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PRK', 'Chinese', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KOR', 'Chinese', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GRC', 'Turkish', false, 0.899999976);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HRV', 'Slovene', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KWT', 'English', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CYP', 'Turkish', true, 22.3999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LAO', 'Mon-khmer', false, 16.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LVA', 'Russian', false, 32.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LSO', 'Zulu', false, 15);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LBN', 'Armenian', false, 5.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LBR', 'Bassa', false, 13.6999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LBY', 'Berberi', false, 1);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LIE', 'Italian', false, 2.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LTU', 'Russian', false, 8.10000038);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LUX', 'Portuguese', false, 13);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MAC', 'Portuguese', true, 2.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MDG', 'French', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MKD', 'Albaniana', false, 22.8999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MWI', 'Lomwe', false, 18.3999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MDV', 'English', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MYS', 'Chinese', false, 9);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MLI', 'Ful', false, 13.8999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MLT', 'English', true, 2.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MAR', 'Berberi', false, 33);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MHL', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MTQ', 'French', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MRT', 'Wolof', false, 6.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MUS', 'Bhojpuri', false, 21.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MYT', 'French', true, 20.2999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MEX', 'NÃ¡huatl', false, 1.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FSM', 'Pohnpei', false, 23.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MDA', 'Russian', false, 23.2000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MCO', 'Monegasque', false, 16.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MNG', 'Kazakh', false, 5.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MOZ', 'Tsonga', false, 12.3999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MMR', 'Shan', false, 8.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NAM', 'Nama', false, 12.3999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NRU', 'Kiribati', false, 17.8999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NPL', 'Maithili', false, 11.8999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NIC', 'Miskito', false, 1.60000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NER', 'Songhai-zerma', false, 21.2000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NGA', 'Hausa', false, 21.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NIU', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NOR', 'English', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CIV', 'Gur', false, 11.6999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('OMN', 'Balochi', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PAK', 'Pashto', false, 13.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PLW', 'Philippene Languages', false, 9.19999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PAN', 'Creole English', false, 14);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PNG', 'Malenasian Languages', false, 20);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PRY', 'GuaranÃ­', true, 40.0999985);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PER', 'KetÂšua', true, 16.3999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MNP', 'Chamorro', false, 30);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PRI', 'English', false, 47.4000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('POL', 'German', false, 1.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GNQ', 'Bubi', false, 8.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('QAT', 'Urdu', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FRA', 'Arabic', false, 2.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GUF', 'Indian Languages', false, 1.89999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PYF', 'French', true, 40.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('REU', 'Chinese', false, 2.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ROM', 'Hungarian', false, 7.19999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('RWA', 'French', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SWE', 'Finnish', false, 2.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KNA', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LCA', 'English', true, 20);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VCT', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DEU', 'Turkish', false, 2.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SLB', 'Papuan Languages', false, 8.60000038);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZMB', 'Tongan', false, 11);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('WSM', 'Samoan', true, 47.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('STP', 'French', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SEN', 'Ful', false, 21.7000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SYC', 'English', true, 3.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SLE', 'Temne', false, 31.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SGP', 'Malay', true, 14.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SVK', 'Hungarian', false, 10.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SVN', 'Serbo-Croatian', false, 7.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SOM', 'Arabic', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LKA', 'Tamil', true, 19.6000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SDN', 'Dinka', false, 11.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FIN', 'Swedish', true, 5.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SUR', 'Hindi', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SWZ', 'Zulu', false, 2);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHE', 'French', true, 19.2000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SYR', 'Kurdish', false, 9);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TJK', 'Uzbek', false, 23.2000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TWN', 'Mandarin Chinese', true, 20.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TZA', 'Swahili', true, 8.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DNK', 'Turkish', false, 0.800000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('THA', 'Lao', false, 26.8999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TGO', 'KabyÃ©', true, 13.8000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TKL', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TON', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TTO', 'Hindi', false, 3.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TCD', 'Arabic', true, 12.3000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CZE', 'Moravian', false, 12.8999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TUN', 'Arabic-French', false, 26.2999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TUR', 'Kurdish', false, 10.6000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TKM', 'Uzbek', false, 9.19999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TUV', 'Kiribati', false, 7.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UGA', 'Nkole', false, 10.6999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UKR', 'Russian', false, 32.9000015);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HUN', 'Romani', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NCL', 'French', true, 34.2999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NZL', 'Maori', false, 4.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UZB', 'Russian', false, 10.8999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BLR', 'Russian', true, 32);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('WLF', 'Futuna', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VUT', 'English', true, 28.2999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VEN', 'Goajiro', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('RUS', 'Tatar', false, 3.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VNM', 'Tho', false, 1.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('EST', 'Russian', false, 27.7999992);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('USA', 'Spanish', false, 7.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VIR', 'Spanish', false, 13.3000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZWE', 'Ndebele', false, 16.2000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PSE', 'Hebrew', false, 4.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AFG', 'Uzbek', false, 8.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NLD', 'Arabic', false, 0.899999976);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ANT', 'Dutch', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ALB', 'Macedonian', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ASM', 'Tongan', false, 3.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AND', 'Portuguese', false, 10.8000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AGO', 'Kongo', false, 13.1999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ARG', 'Indian Languages', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ABW', 'Spanish', false, 7.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUS', 'Greek', false, 1.60000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AZE', 'Lezgian', false, 2.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BGD', 'Marma', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BEL', 'Italian', false, 2.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BLZ', 'Maya Languages', false, 9.60000038);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BEN', 'Adja', false, 11.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BTN', 'Asami', false, 15.1999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BOL', 'AimarÃ¡', true, 3.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BWA', 'San', false, 3.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BRA', 'Italian', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GBR', 'Gaeli', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BRN', 'Chinese', false, 9.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BGR', 'Romani', false, 3.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BFA', 'Gurma', false, 5.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BDI', 'Swahili', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHL', 'AimarÃ¡', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CRI', 'Chibcha', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DJI', 'Arabic', true, 10.6000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ERI', 'Afar', false, 4.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ESP', 'Galecian', false, 6.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZAF', 'Afrikaans', true, 14.3000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ETH', 'Tigrinja', false, 7.19999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PHL', 'Ilocano', false, 9.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GAB', 'Mpongwe', false, 14.6000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GMB', 'Wolof', false, 12.6000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GEO', 'Armenian', false, 6.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GHA', 'Ewe', false, 11.8999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GUM', 'Philippene Languages', false, 19.7000008);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GTM', 'Cakchiquel', false, 8.89999962);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GIN', 'Susu', false, 11);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GNB', 'Balante', false, 14.6000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GUY', 'Arawakan', false, 1.39999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HND', 'Creole English', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HKG', 'Fukien', false, 1.89999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IDN', 'Malay', true, 12.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IND', 'Telugu', false, 7.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRQ', 'Azerbaijani', false, 1.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRN', 'Kurdish', false, 9.10000038);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ISR', 'Russian', false, 8.89999962);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ITA', 'Friuli', false, 1.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUT', 'Turkish', false, 1.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('JPN', 'Chinese', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('JOR', 'Armenian', false, 1);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('YUG', 'Hungarian', false, 3.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KHM', 'Chinese', false, 3.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CMR', 'Duala', false, 10.8999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAN', 'Chinese', false, 2.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KAZ', 'Ukrainian', false, 5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KEN', 'Luo', false, 12.8000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAF', 'Mandjia', false, 14.8000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHN', 'MantÂšu', false, 0.899999976);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KGZ', 'Uzbek', false, 14.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COL', 'Creole English', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COM', 'Comorian-madagassi', false, 5.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COG', 'Mboshi', false, 11.3999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COD', 'Mongo', false, 13.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LAO', 'Thai', false, 7.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LVA', 'Belorussian', false, 4.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LSO', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LBN', 'French', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LBR', 'Grebo', false, 8.89999962);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LIE', 'Turkish', false, 2.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LTU', 'Polish', false, 7);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LUX', 'Italian', false, 4.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MAC', 'Mandarin Chinese', false, 1.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MKD', 'Turkish', false, 4);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MWI', 'Yao', false, 13.1999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MYS', 'Tamil', false, 3.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MLI', 'Senufo and Minianka', false, 12);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MRT', 'Tukulor', false, 5.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MUS', 'French', false, 3.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MYT', 'Malagasy', false, 16.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MEX', 'Yucatec', false, 1.10000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FSM', 'Mortlock', false, 7.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MDA', 'Ukrainian', false, 8.60000038);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MCO', 'Italian', false, 16.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MNG', 'Dorbet', false, 2.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MOZ', 'Sena', false, 9.39999962);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MMR', 'Karen', false, 6.19999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NAM', 'Kavango', false, 9.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NRU', 'Chinese', false, 8.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NPL', 'Bhojpuri', false, 7.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NIC', 'Creole English', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NER', 'Tamashek', false, 10.3999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NGA', 'Ibo', false, 18.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NOR', 'Danish', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CIV', 'Malinke', false, 11.3999996);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PAK', 'Sindhi', false, 11.8000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PLW', 'English', true, 3.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PAN', 'GuaymÃ­', false, 5.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PRY', 'Portuguese', false, 3.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PER', 'AimarÃ¡', true, 2.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MNP', 'Chinese', false, 7.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('POL', 'Ukrainian', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FRA', 'Portuguese', false, 1.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PYF', 'Chinese', false, 2.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('REU', 'Comorian', false, 2.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ROM', 'Romani', true, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SWE', 'Southern Slavic Languages', false, 1.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DEU', 'Southern Slavic Languages', false, 1.39999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SLB', 'Polynesian Languages', false, 3.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZMB', 'Nyanja', false, 7.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('WSM', 'English', true, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SEN', 'Serer', false, 12.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SYC', 'French', true, 1.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SLE', 'Limba', false, 8.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SGP', 'Tamil', true, 7.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SVK', 'Romani', false, 1.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SVN', 'Hungarian', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LKA', 'Mixed Languages', false, 19.6000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SDN', 'Nubian Languages', false, 8.10000038);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FIN', 'Russian', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHE', 'Italian', true, 7.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TJK', 'Russian', false, 9.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TWN', 'Hakka', false, 11);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TZA', 'Hehet', false, 6.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DNK', 'Arabic', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('THA', 'Chinese', false, 12.1000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TGO', 'Watyi', false, 10.3000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TTO', 'Creole English', false, 2.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TCD', 'Mayo-kebbi', false, 11.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CZE', 'Slovak', false, 3.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TUN', 'Arabic-French-English', false, 3.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TUR', 'Arabic', false, 1.39999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TKM', 'Russian', false, 6.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TUV', 'English', true, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UGA', 'Kiga', false, 8.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UKR', 'Romanian', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HUN', 'German', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NCL', 'Polynesian Languages', false, 11.6000004);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UZB', 'Tadzhik', false, 4.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BLR', 'Ukrainian', false, 1.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VUT', 'French', true, 14.1999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VEN', 'Warrau', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('RUS', 'Ukrainian', false, 1.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VNM', 'Thai', false, 1.60000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('EST', 'Ukrainian', false, 2.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('USA', 'French', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VIR', 'French', false, 2.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZWE', 'English', true, 2.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AFG', 'Turkmenian', false, 1.89999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NLD', 'Turkish', false, 0.800000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AND', 'French', false, 6.19999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AGO', 'Luimbe-nganguela', false, 5.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ABW', 'Dutch', true, 5.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUS', 'Canton Chinese', false, 1.10000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AZE', 'Armenian', false, 2);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BGD', 'Garo', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BEL', 'Arabic', false, 1.60000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BLZ', 'Garifuna', false, 6.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BEN', 'Aizo', false, 8.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BOL', 'GuaranÃ­', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BWA', 'Khoekhoe', false, 2.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BRA', 'Japanese', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BRN', 'English', false, 3.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BGR', 'Macedonian', false, 2.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BFA', 'Busansi', false, 3.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHL', 'Rapa nui', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CRI', 'Chinese', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ERI', 'Hadareb', false, 3.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ESP', 'Basque', false, 1.60000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZAF', 'Northsotho', false, 9.10000038);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ETH', 'Gurage', false, 4.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PHL', 'Hiligaynon', false, 9.10000038);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GAB', 'Mbete', false, 13.8000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GMB', 'Diola', false, 9.19999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GEO', 'Azerbaijani', false, 5.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GHA', 'Ga-adangme', false, 7.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GUM', 'Korean', false, 3.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GTM', 'KekchÃ­', false, 4.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GIN', 'Kissi', false, 6);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GNB', 'Portuguese', true, 8.10000038);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HND', 'Miskito', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HKG', 'Hakka', false, 1.60000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IDN', 'Madura', false, 4.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IND', 'Marathi', false, 7.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRQ', 'Assyrian', false, 0.800000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRN', 'Gilaki', false, 5.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ITA', 'French', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUT', 'Hungarian', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('JPN', 'English', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('YUG', 'Romani', false, 1.39999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KHM', 'TÂšam', false, 2.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CMR', 'Ful', false, 9.60000038);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAN', 'Italian', false, 1.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KAZ', 'German', false, 3.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KEN', 'Kamba', false, 11.1999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAF', 'Ngbaka', false, 7.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHN', 'Hui', false, 0.800000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KGZ', 'Ukrainian', false, 1.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COL', 'Arawakan', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COM', 'Comorian-Arabic', false, 1.60000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COG', 'Mbete', false, 4.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COD', 'Rwanda', false, 10.3000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LAO', 'Lao-Soung', false, 5.19999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LVA', 'Ukrainian', false, 2.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LBR', 'Gio', false, 7.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LTU', 'Belorussian', false, 1.39999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LUX', 'French', true, 4.19999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MAC', 'English', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MKD', 'Romani', false, 2.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MWI', 'Ngoni', false, 6.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MYS', 'Iban', false, 2.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MLI', 'Soninke', false, 8.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MRT', 'Soninke', false, 2.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MUS', 'Hindi', false, 1.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MEX', 'Zapotec', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FSM', 'Kosrean', false, 7.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MDA', 'Gagauzi', false, 3.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MCO', 'English', false, 6.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MNG', 'Bajad', false, 1.89999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MOZ', 'Lomwe', false, 7.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MMR', 'Rakhine', false, 4.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NAM', 'Afrikaans', false, 9.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NRU', 'Tuvalu', false, 8.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NPL', 'Tharu', false, 5.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NIC', 'Sumo', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NER', 'Ful', false, 9.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NGA', 'Ful', false, 11.3000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NOR', 'Swedish', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CIV', 'Kru', false, 10.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PAK', 'Saraiki', false, 9.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PLW', 'Chinese', false, 1.60000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PAN', 'Cuna', false, 2);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PRY', 'German', false, 0.899999976);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MNP', 'Korean', false, 6.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('POL', 'Belorussian', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FRA', 'Italian', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('REU', 'Malagasy', false, 1.39999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ROM', 'German', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SWE', 'Arabic', false, 0.800000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DEU', 'Italian', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZMB', 'Lozi', false, 6.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SEN', 'Diola', false, 5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SLE', 'Kono-vai', false, 5.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SVK', 'Czech and Moravian', false, 1.10000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SDN', 'Beja', false, 6.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FIN', 'Estonian', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHE', 'Romansh', true, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TWN', 'Ami', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TZA', 'Haya', false, 5.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DNK', 'German', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('THA', 'Malay', false, 3.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TGO', 'Kotokoli', false, 5.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TCD', 'Kanem-bornu', false, 9);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CZE', 'Polish', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TKM', 'Kazakh', false, 2);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UGA', 'Soga', false, 8.19999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UKR', 'Bulgariana', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HUN', 'Serbo-Croatian', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UZB', 'Kazakh', false, 3.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BLR', 'Polish', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('RUS', 'Chuvash', false, 0.899999976);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VNM', 'Muong', false, 1.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('EST', 'Belorussian', false, 1.39999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('USA', 'German', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZWE', 'Nyanja', false, 2.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AFG', 'Balochi', false, 0.899999976);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AGO', 'Nyaneka-nkhumbi', false, 5.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUS', 'Arabic', false, 1);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BGD', 'Khasi', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BEL', 'German', true, 1);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BEN', 'Bariba', false, 8.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BWA', 'Ndebele', false, 1.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BRA', 'Indian Languages', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BFA', 'Dagara', false, 3.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ERI', 'Bilin', false, 3);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZAF', 'English', true, 8.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ETH', 'Somali', false, 4.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PHL', 'Bicol', false, 5.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GMB', 'Soninke', false, 7.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GEO', 'Osseetti', false, 2.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GHA', 'Gurma', false, 3.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GUM', 'Japanese', false, 2);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GTM', 'Mam', false, 2.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GIN', 'Kpelle', false, 4.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GNB', 'Malinke', false, 6.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HKG', 'Chiu chau', false, 1.39999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IDN', 'Minangkabau', false, 2.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IND', 'Tamil', false, 6.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRQ', 'Persian', false, 0.800000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRN', 'Luri', false, 4.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ITA', 'German', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUT', 'Slovene', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('JPN', 'Philippene Languages', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('YUG', 'Slovak', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CMR', 'Tikar', false, 7.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAN', 'German', false, 1.60000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KAZ', 'Uzbek', false, 2.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KEN', 'Kalenjin', false, 10.8000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAF', 'Sara', false, 6.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHN', 'Miao', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KGZ', 'Tatar', false, 1.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COL', 'Caribbean', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COM', 'Comorian-Swahili', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COG', 'Punu', false, 2.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COD', 'Zande', false, 6.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LVA', 'Polish', false, 2.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LBR', 'Kru', false, 7.19999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LTU', 'Ukrainian', false, 1.10000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LUX', 'German', true, 2.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MKD', 'Serbo-Croatian', false, 2);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MYS', 'English', false, 1.60000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MLI', 'Tamashek', false, 7.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MRT', 'Ful', false, 1.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MUS', 'Tamil', false, 0.800000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MEX', 'Mixtec', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FSM', 'Yap', false, 5.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MDA', 'Bulgariana', false, 1.60000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MNG', 'Buryat', false, 1.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MOZ', 'Shona', false, 6.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MMR', 'Mon', false, 2.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NAM', 'Herero', false, 8);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NRU', 'English', true, 7.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NPL', 'Tamang', false, 4.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NER', 'Kanuri', false, 4.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NGA', 'Ibibio', false, 5.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NOR', 'Saame', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CIV', '[South]Mande', false, 7.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PAK', 'Urdu', true, 7.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PAN', 'Embera', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MNP', 'English', true, 4.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FRA', 'Spanish', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('REU', 'Tamil', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ROM', 'Ukrainian', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SWE', 'Spanish', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DEU', 'Greek', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZMB', 'Chewa', false, 5.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SEN', 'Malinke', false, 3.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SLE', 'Bullom-sherbro', false, 3.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SVK', 'Ukrainian and Russian', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SDN', 'Nuer', false, 4.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FIN', 'Saame', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TWN', 'Atayal', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TZA', 'Makonde', false, 5.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DNK', 'English', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('THA', 'Khmer', false, 1.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TGO', 'Ane', false, 5.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TCD', 'Ouaddai', false, 8.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CZE', 'German', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UGA', 'Teso', false, 6);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UKR', 'Hungarian', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HUN', 'Romanian', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UZB', 'Karakalpak', false, 2);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('RUS', 'Bashkir', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VNM', 'Chinese', false, 1.39999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('EST', 'Finnish', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('USA', 'Italian', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AGO', 'Chokwe', false, 4.19999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUS', 'Vietnamese', false, 0.800000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BGD', 'Santhali', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BEL', 'Turkish', false, 0.899999976);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BEN', 'Somba', false, 6.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BFA', 'Dyula', false, 2.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ERI', 'Saho', false, 3);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZAF', 'Tswana', false, 8.10000038);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ETH', 'Sidamo', false, 3.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PHL', 'Waray-waray', false, 3.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GEO', 'Abhyasi', false, 1.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GHA', 'Joruba', false, 1.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GIN', 'Yalunka', false, 2.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GNB', 'Mandyako', false, 4.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IDN', 'Batakki', false, 2.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IND', 'Urdu', false, 5.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRN', 'Mazandarani', false, 3.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ITA', 'Albaniana', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUT', 'Polish', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('JPN', 'Ainu', false, 0);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('YUG', 'Macedonian', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CMR', 'Mandara', false, 5.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAN', 'Polish', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KAZ', 'Tatar', false, 2);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KEN', 'Gusii', false, 6.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAF', 'Mbum', false, 6.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHN', 'Uighur', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KGZ', 'Kazakh', false, 0.800000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COG', 'Sango', false, 2.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COD', 'Ngala and Bangi', false, 5.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LVA', 'Lithuanian', false, 1.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LBR', 'Mano', false, 7.19999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MYS', 'Dusun', false, 1.10000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MLI', 'Songhai', false, 6.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MRT', 'Zenaga', false, 1.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MUS', 'Marathi', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MEX', 'OtomÃ­', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FSM', 'Wolea', false, 3.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MNG', 'Dariganga', false, 1.39999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MOZ', 'Tswa', false, 6);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MMR', 'Chin', false, 2.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NAM', 'Caprivi', false, 4.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NPL', 'Newari', false, 3.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NGA', 'Kanuri', false, 4.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PAK', 'Balochi', false, 3);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PAN', 'Arabic', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MNP', 'Carolinian', false, 4.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('FRA', 'Turkish', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ROM', 'Serbo-Croatian', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SWE', 'Norwegian', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DEU', 'Polish', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZMB', 'Nsenga', false, 4.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SEN', 'Soninke', false, 1.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SLE', 'Ful', false, 3.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SDN', 'Zande', false, 2.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TWN', 'Paiwan', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TZA', 'Nyakusa', false, 5.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DNK', 'Swedish', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('THA', 'Kuy', false, 1.10000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TGO', 'Moba', false, 5.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TCD', 'Hadjarai', false, 6.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CZE', 'Silesiana', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UGA', 'Lango', false, 5.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UKR', 'Belorussian', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('HUN', 'Slovak', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UZB', 'Tatar', false, 1.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('RUS', 'Chechen', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VNM', 'Khmer', false, 1.39999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('USA', 'Chinese', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AGO', 'Luvale', false, 3.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUS', 'Serbo-Croatian', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BGD', 'Tripuri', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('BEN', 'Ful', false, 5.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZAF', 'Southsotho', false, 7.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ETH', 'Walaita', false, 2.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PHL', 'Pampango', false, 3);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('GIN', 'Loma', false, 2.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IDN', 'Bugi', false, 2.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IND', 'Gujarati', false, 4.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRN', 'Balochi', false, 2.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ITA', 'Slovene', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUT', 'Czech', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CMR', 'Maka', false, 4.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAN', 'Spanish', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KEN', 'Meru', false, 5.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHN', 'Yi', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KGZ', 'Tadzhik', false, 0.800000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COD', 'Rundi', false, 3.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LBR', 'Loma', false, 5.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MOZ', 'Chuabo', false, 5.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MMR', 'Kachin', false, 1.39999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NAM', 'San', false, 1.89999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NPL', 'Hindi', false, 3);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NGA', 'Edo', false, 3.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PAK', 'Hindko', false, 2.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SLE', 'Kuranko', false, 3.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SDN', 'Bari', false, 2.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TZA', 'Chaga and Pare', false, 4.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('DNK', 'Norwegian', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TGO', 'Naudemba', false, 4.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TCD', 'Tandjile', false, 6.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CZE', 'Romani', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UGA', 'Lugbara', false, 4.69999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UKR', 'Polish', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('RUS', 'Mordva', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VNM', 'Nung', false, 1.10000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('USA', 'Tagalog', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AGO', 'Ambo', false, 2.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUS', 'German', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZAF', 'Tsonga', false, 4.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PHL', 'Pangasinan', false, 1.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IDN', 'Banja', false, 1.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IND', 'Kannada', false, 3.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRN', 'Arabic', false, 2.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ITA', 'Romani', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AUT', 'Romanian', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CMR', 'Masana', false, 3.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAN', 'Portuguese', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KEN', 'Nyika', false, 4.80000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHN', 'Tujia', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COD', 'Teke', false, 2.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('LBR', 'Malinke', false, 5.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MOZ', 'Ronga', false, 3.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MMR', 'Kayah', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NAM', 'German', false, 0.899999976);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NGA', 'Tiv', false, 2.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PAK', 'Brahui', false, 1.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SLE', 'Yalunka', false, 3.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SDN', 'Fur', false, 2.0999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TZA', 'Luguru', false, 4.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TGO', 'Gurma', false, 3.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TCD', 'Gorane', false, 6.19999981);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CZE', 'Hungarian', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UGA', 'Gisu', false, 4.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('RUS', 'Kazakh', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VNM', 'Miao', false, 0.899999976);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('USA', 'Polish', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('AGO', 'Luchazi', false, 2.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZAF', 'Swazi', false, 2.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PHL', 'Maguindanao', false, 1.39999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IDN', 'Bali', false, 1.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IND', 'Malajalam', false, 3.5999999);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRN', 'Bakhtyari', false, 1.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAN', 'Punjabi', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KEN', 'Masai', false, 1.60000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHN', 'Mongolian', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COD', 'Boa', false, 2.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MOZ', 'Marendje', false, 3.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NGA', 'Ijo', false, 1.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SDN', 'Chilluk', false, 1.70000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TZA', 'Shambala', false, 4.30000019);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UGA', 'Acholi', false, 4.4000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('RUS', 'Avarian', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('VNM', 'Man', false, 0.699999988);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('USA', 'Korean', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZAF', 'Venda', false, 2.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('PHL', 'Maranao', false, 1.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IND', 'Orija', false, 3.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IRN', 'Turkmenian', false, 1.60000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAN', 'Ukrainian', false, 0.600000024);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('KEN', 'Turkana', false, 1.39999998);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHN', 'Tibetan', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('COD', 'Chokwe', false, 1.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('MOZ', 'Nyanja', false, 3.29999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('NGA', 'Bura', false, 1.60000002);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('SDN', 'Lotuko', false, 1.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TZA', 'Gogo', false, 3.9000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('UGA', 'Rwanda', false, 3.20000005);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('RUS', 'Mari', false, 0.400000006);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('USA', 'Vietnamese', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('ZAF', 'Ndebele', false, 1.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IND', 'Punjabi', false, 2.79999995);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAN', 'Dutch', false, 0.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHN', 'Puyi', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('TZA', 'Ha', false, 3.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('RUS', 'Udmur', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('USA', 'Japanese', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('IND', 'Asami', false, 1.5);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CAN', 'Eskimo Languages', false, 0.100000001);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('CHN', 'Dong', false, 0.200000003);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('RUS', 'Belorussian', false, 0.300000012);
INSERT INTO countrylanguage (countrycode, language, isofficial, percentage)
VALUES ('USA', 'Portuguese', false, 0.200000003);

--
-- Add foreign key constraints.
--

ALTER TABLE country
    ADD CONSTRAINT country_capital_fkey FOREIGN KEY (capital) REFERENCES city (id);

ALTER TABLE countrylanguage
    ADD CONSTRAINT countrylanguage_countrycode_fkey FOREIGN KEY (countrycode) REFERENCES country (code);
