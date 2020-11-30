CREATE TABLE Igazgato
(
  nev VARCHAR(20) NOT NULL,
  email VARCHAR(30) NOT NULL,
  telszam INT NOT NULL,
  I_id INT NOT NULL,
  PRIMARY KEY (I_id)
);

CREATE TABLE Kiado
(
  K_id INT NOT NULL,
  kiadonev VARCHAR(30) NOT NULL,
  szekhely VARCHAR(20) NOT NULL,
  alapitva INT NOT NULL,
  I_id INT NOT NULL,
  PRIMARY KEY (K_id),
  FOREIGN KEY (I_id) REFERENCES Igazgato(I_id)
);

CREATE TABLE Bolt
(
  B_id INT NOT NULL,
  boltnev VARCHAR(30) NOT NULL,
  elerhetoe VARCHAR(5) NOT NULL,
  K_id INT NOT NULL,
  PRIMARY KEY (B_id),
  FOREIGN KEY (K_id) REFERENCES Kiado(K_id)
);

CREATE TABLE Vevo
(
  Kartya INT NOT NULL,
  online VARCHAR(5) NOT NULL,
  V_id INT NOT NULL,
  B_id INT NOT NULL,
  PRIMARY KEY (V_id),
  FOREIGN KEY (B_id) REFERENCES Bolt(B_id)
);

CREATE TABLE Vevo_vasarlo
(
  vasarlo VARCHAR(20) NOT NULL,
  V_id INT NOT NULL,
  PRIMARY KEY (vasarlo, V_id),
  FOREIGN KEY (V_id) REFERENCES Vevo(V_id)
);

CREATE TABLE Jatek
(
  J_id INT NOT NULL,
  nev VARCHAR(40) NOT NULL,
  mufajnev VARCHAR(10) NOT NULL,
  stilus VARCHAR(10) NOT NULL,
  megjelenes DATE NOT NULL,
  K_id INT NOT NULL,
  V_id INT NOT NULL,
  PRIMARY KEY (J_id),
  FOREIGN KEY (K_id) REFERENCES Kiado(K_id),
  FOREIGN KEY (V_id) REFERENCES Vevo(V_id)
);

CREATE TABLE Forgalmazza
(
  J_id INT NOT NULL,
  B_id INT NOT NULL,
  PRIMARY KEY (J_id, B_id),
  FOREIGN KEY (J_id) REFERENCES Jatek(J_id),
  FOREIGN KEY (B_id) REFERENCES Bolt(B_id)
);