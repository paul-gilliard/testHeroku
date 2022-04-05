CREATE TABLE Museum(
 	name VARCHAR(40) PRIMARY KEY,
	city VARCHAR(20)   
);

CREATE TABLE Exhibit(
	name VARCHAR(40),
	beginning DATE,
    end_date DATE,
    name_museum VARCHAR(40) REFERENCES Museum(name)
);


CREATE TABLE Artists(
    name VARCHAR(30),
    date_of_birth DATE NOT NULL,
    name_master VARCHAR(30),
    CONSTRAINT PK_artist PRIMARY KEY (name),
    CONSTRAINT FK_artist FOREIGN KEY (name_master) REFERENCES Artists(name) ON DELETE SET NULL
); 

CREATE TABLE Piece_of_art(
    name_artist VARCHAR(30),
    name VARCHAR(25),
    century int NOT NULL, 
    technique VARCHAR(20) NOT NULL
);
ALTER TABLE  Piece_of_art ADD 
    CONSTRAINT PK_art PRIMARY KEY (name_artist, name);
ALTER TABLE  Piece_of_art ADD 
    CONSTRAINT FK_art FOREIGN KEY (name_artist) REFERENCES Artists(name)
    ON DELETE CASCADE;
ALTER TABLE Piece_of_art ADD
    CONSTRAINT CK_technique
    CHECK (technique IN ('oil', 'watercolor', 'aqurilic', 'charcoal', 'unknown'));


CREATE TABLE Assigned(
    name_exhibit VARCHAR(40), 
    name_artist VARCHAR(30),
    name_piece VARCHAR(25),
    policy int NOT NULL);

  ALTER TABLE Assigned ADD
    CONSTRAINT PK_assigned PRIMARY KEY (name_exhibit, name_artist, name_piece);
   ALTER TABLE Assigned ADD CONSTRAINT FK_assigned_piece FOREIGN KEY (name_artist, name_piece) 
         REFERENCES Piece_of_art(name_artist,name);


-- Artists ---

INSERT INTO Artists VALUES
('Monet',
 '10/12/1976',
 NULL);

INSERT INTO Artists VALUES
('Leonardo',
 '11/12/1977',
 NULL);

INSERT INTO Artists VALUES
('Pablo',
 '12/12/1977',
 'Leonardo');

INSERT INTO Artists VALUES
('Picasso',
 '13/12/1978',
 'Leonardo');

INSERT INTO Artists VALUES
('Magritte',
 '14/12/1978',
 NULL);

INSERT INTO Artists VALUES
('Mario',
 '15/12/1978',
 NULL);

INSERT INTO Artists VALUES
('Martina',
 '16/12/1978',
 'Leonardo');
 
INSERT INTO Artists 
	VALUES ('Renoir', '05/11/1478', null);

INSERT INTO Artists 
	VALUES ('Sofia', '05/11/1478', 'Monet');

INSERT INTO Artists 
	VALUES ('Juana', '06/11/1845', 'Leonardo');

INSERT INTO Artists 
	VALUES ('Vangogh', '07/11/1832', 'Leonardo');


-- MUSEUM ------

INSERT INTO Museum VALUES
('Pardo',
 'Madrid');

INSERT INTO Museum VALUES
('Reina Cristina',
 'Madrid');

 INSERT INTO Museum VALUES
 ('Louvre',
  'Paris');

-- PIECE OF ART ------

INSERT INTO Piece_of_art VALUES
('Leonardo',
 'La Joconde',
 17,
 'oil');

INSERT INTO Piece_of_art VALUES
('Martina',
 'La noche',
 20,
 'charcoal');

INSERT INTO Piece_of_art VALUES
('Renoir',
 'Les Baigneuses',
 20,
 'oil');

INSERT INTO Piece_of_art VALUES
('Picasso',
 'Guernica',
 10,
 'unknown');

-- Exhibit ------

INSERT INTO Exhibit VALUES
('Art nouveau',
 '10/12/2020',
 '12/12/2020',
 'Louvre');

INSERT INTO Exhibit VALUES
('Local',
 '10/12/200',
 '12/12/200',
 'Pardo');

INSERT INTO Exhibit VALUES
('Souvenir',
 '11/12/2020',
 '13/12/2020',
 'Reina Cristina');

INSERT INTO Exhibit VALUES
('Sans cadres',
 '11/12/2023',
 '13/12/2023',
 'Reina Cristina');

-- Assigned ------

INSERT INTO Assigned VALUES
('Art nouveau',
 'Martina',
 'La noche',
 123);
 
INSERT INTO Assigned VALUES
('Art nouveau',
 'Leonardo',
 'La Joconde',
 123);
 
INSERT INTO Assigned VALUES
('Souvenir',
 'Picasso',
 'Guernica',
 1234);

INSERT INTO Assigned VALUES
('Local',
 'Renoir',
 'Les Baigneuses',
 234);

INSERT INTO Assigned VALUES
('Art Souvenir',
 'Renoir',
 'Les Baigneuses',
 234);
