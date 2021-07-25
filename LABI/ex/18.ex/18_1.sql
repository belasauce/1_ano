DROP TABLE contacts;
DROP TABLE companies;
CREATE TABLE contacts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    firstname TEXT,
    middlename TEXT,
    lastname TEXT,
    email TEXT UNIQUE,
    phone TEXT UNIQUE,
    company_id INTEGER
);
CREATE TABLE companies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    address TEXT,
    vatnumber TEXT
);
INSERT INTO companies(name, address, vatnumber) VALUES("MaxiPlano", "Aveiro", "PT501343433");
INSERT INTO companies(name, address, vatnumber) VALUES("Luis Manuel & Filhos", "Águeda", "PT512234959");
INSERT INTO companies(name, address, vatnumber) VALUES("ProDesign", "Porto", "PT503334449");
INSERT INTO contacts(firstname,middlename,lastname,email,phone,company_id) VALUES("João", "Manuel", "Fonseca", "jmf@gmail.com", "912345654",3);
INSERT INTO contacts(firstname,middlename,lastname,email,phone,company_id) VALUES("Pedro", "Albuquerque", "Silva", "pedro233@gmail.co", "932454349",3);
INSERT INTO contacts(firstname,middlename,lastname,email,phone,company_id) VALUES("Maria",  "Carreira", "Dinis", "mariadi@ua.pt", "234958673",2);
INSERT INTO contacts(firstname,middlename,lastname,email,phone,company_id) VALUES("Catarina", "Alexandra", "Rodrigo", "calexro@sapo.pt", "963343386", 1);
