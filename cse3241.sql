--
-- File generated with SQLiteStudio v3.2.1 on Wed Apr 22 16:43:34 2020
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Actor
CREATE TABLE Actor (
PersonID INTEGER PRIMARY KEY
REFERENCES Person (PersonID) ON DELETE CASCADE,
NoOfMoviesActedIn INTEGER,
FOREIGN KEY (
PersonID
)
REFERENCES Person (PersonID)
);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (21, 10);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (22, 8);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (23, 14);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (24, 12);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (25, 6);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (26, 10);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (27, 8);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (28, 14);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (29, 12);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (30, 6);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (31, 10);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (32, 8);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (33, 14);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (34, 12);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (35, 6);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (36, 10);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (37, 8);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (38, 14);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (39, 12);
INSERT INTO Actor (PersonID, NoOfMoviesActedIn) VALUES (40, 6);

-- Table: Album
CREATE TABLE Album (
ID INTEGER PRIMARY KEY
REFERENCES Loanable (ID) ON DELETE CASCADE
);
INSERT INTO Album (ID) VALUES (1);
INSERT INTO Album (ID) VALUES (2);
INSERT INTO Album (ID) VALUES (3);
INSERT INTO Album (ID) VALUES (4);
INSERT INTO Album (ID) VALUES (5);
INSERT INTO Album (ID) VALUES (6);
INSERT INTO Album (ID) VALUES (7);
INSERT INTO Album (ID) VALUES (8);
INSERT INTO Album (ID) VALUES (9);
INSERT INTO Album (ID) VALUES (10);
INSERT INTO Album (ID) VALUES (11);
INSERT INTO Album (ID) VALUES (12);
INSERT INTO Album (ID) VALUES (13);
INSERT INTO Album (ID) VALUES (14);
INSERT INTO Album (ID) VALUES (15);
INSERT INTO Album (ID) VALUES (16);
INSERT INTO Album (ID) VALUES (17);
INSERT INTO Album (ID) VALUES (18);
INSERT INTO Album (ID) VALUES (19);
INSERT INTO Album (ID) VALUES (20);
INSERT INTO Album (ID) VALUES (61);
INSERT INTO Album (ID) VALUES (62);

-- Table: Artist
CREATE TABLE Artist (
PersonID INTEGER PRIMARY KEY
REFERENCES Person (PersonID) ON DELETE CASCADE,
NoOfSongsMade INTEGER,
FOREIGN KEY (
PersonID
)
REFERENCES Person (PersonID)
);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (1, 10);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (2, 8);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (3, 14);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (4, 12);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (5, 6);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (6, 10);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (7, 8);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (8, 14);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (9, 12);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (10, 6);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (11, 10);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (12, 8);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (13, 14);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (14, 12);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (15, 6);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (16, 10);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (17, 8);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (18, 14);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (19, 12);
INSERT INTO Artist (PersonID, NoOfSongsMade) VALUES (20, 6);

-- Table: ArtistAlbum
CREATE TABLE ArtistAlbum (
ArtistID INTEGER REFERENCES Artist (PersonID) ON DELETE CASCADE,
AlbumID INTEGER REFERENCES Album (ID) ON DELETE CASCADE,
PRIMARY KEY (
ArtistID,
AlbumID));
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (1, 1);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (2, 2);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (3, 3);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (4, 4);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (5, 5);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (6, 6);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (7, 6);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (8, 5);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (9, 2);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (10, 2);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (11, 7);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (12, 8);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (13, 9);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (14, 12);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (15, 15);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (16, 13);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (17, 14);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (18, 16);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (19, 17);
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES (20, 18);

-- Table: Audiobook
CREATE TABLE Audiobook (
ID PRIMARY KEY
REFERENCES Loanable (ID) ON DELETE CASCADE,
Pages INTEGER,
Publisher VARCHAR,
AuthorID INTEGER REFERENCES Author (PersonID)
);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (41, 41, 'A big publisher', 2);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (42, 42, 'A big publisher', 3);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (43, 43, 'A big publisher', 4);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (44, 44, 'A big publisher', 4);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (45, 45, 'A big publisher', 4);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (46, 46, 'A big publisher', 5);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (47, 47, 'A big publisher', 5);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (48, 48, 'A big publisher', 6);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (49, 49, 'A big publisher', 7);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (50, 50, 'A big publisher', 1);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (51, 51, 'A big publisher', 2);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (52, 52, 'A big publisher', 3);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (53, 53, 'A big publisher', 4);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (54, 54, 'A big publisher', 4);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (55, 55, 'A big publisher', 4);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (56, 56, 'A smaller publisher', 5);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (57, 57, 'A smaller publisher', 5);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (58, 58, 'A smaller publisher', 6);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (59, 59, 'A smaller publisher', 7);
INSERT INTO Audiobook (ID, Pages, Publisher, AuthorID) VALUES (60, 60, 'A smaller publisher', 7);

-- Table: Author
CREATE TABLE Author (
PersonID INTEGER PRIMARY KEY
REFERENCES Person (PersonID) ON DELETE CASCADE,
NoOfBooks INTEGER,
FOREIGN KEY (
PersonID
)
REFERENCES Person (PersonID)
);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (1, 10);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (2, 8);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (3, 14);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (4, 12);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (5, 6);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (6, 10);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (7, 8);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (8, 14);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (9, 12);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (10, 6);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (11, 10);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (12, 8);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (13, 14);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (14, 12);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (15, 6);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (16, 10);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (17, 8);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (18, 14);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (19, 12);
INSERT INTO Author (PersonID, NoOfBooks) VALUES (20, 6);

-- Table: Chapter
CREATE TABLE Chapter (
ID INTEGER REFERENCES Audiobook (ID) ON DELETE CASCADE,
Number INTEGER,
PageRange VARCHAR,
PRIMARY KEY (
ID,
Number
)
);
INSERT INTO Chapter (ID, Number, PageRange) VALUES (1, 1, '1-10');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (2, 2, '10-20');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (3, 3, '20-30');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (4, 4, '30-40');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (5, 5, '40-50');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (6, 6, '50-60');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (7, 7, '60-70');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (8, 8, '70-80');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (9, 9, '80-90');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (10, 10, '90-100');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (11, 11, '100-110');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (12, 12, '110-120');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (13, 13, '120-130');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (14, 14, '130-140');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (15, 15, '140-150');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (16, 16, '150-160');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (17, 17, '160-170');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (18, 18, '170-180');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (19, 19, '180-190');
INSERT INTO Chapter (ID, Number, PageRange) VALUES (20, 20, '190-200');

-- Table: Director
CREATE TABLE Director (
PersonID INTEGER PRIMARY KEY
REFERENCES Person (PersonID) ON DELETE CASCADE,
NoOfMoviesDirected INTEGER,
FOREIGN KEY (
PErsonID
)
REFERENCES Person (PersonID)
);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (21, 10);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (22, 8);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (23, 14);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (24, 12);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (25, 6);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (26, 10);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (27, 8);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (28, 14);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (29, 12);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (30, 6);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (31, 10);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (32, 8);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (33, 14);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (34, 12);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (35, 6);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (36, 10);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (37, 8);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (38, 14);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (39, 12);
INSERT INTO Director (PersonID, NoOfMoviesDirected) VALUES (40, 6);

-- Table: Employee
CREATE TABLE Employee (
PersonID INTEGER PRIMARY KEY
REFERENCES LibraryPerson (PersonID) ON DELETE CASCADE,
EmployeeID CHAR (10) NOT NULL,
FOREIGN KEY (
PersonID
)
REFERENCES Person (PersonID)
);
INSERT INTO Employee (PersonID, EmployeeID) VALUES (1, '987654371');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (2, '987654381');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (3, '987654391');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (4, '987654121');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (5, '987654221');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (41, '987654321');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (42, '987654322');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (43, '987654323');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (44, '987654324');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (45, '987654325');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (46, '987654326');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (47, '987654327');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (48, '987654328');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (49, '987654329');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (50, '987654320');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (51, '987654311');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (52, '987654331');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (53, '987654341');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (54, '987654351');
INSERT INTO Employee (PersonID, EmployeeID) VALUES (55, '987654361');

-- Table: Genre
CREATE TABLE Genre (Name VARCHAR PRIMARY KEY);
INSERT INTO Genre (Name) VALUES ('Pop');
INSERT INTO Genre (Name) VALUES ('Rock');
INSERT INTO Genre (Name) VALUES ('Alternative');
INSERT INTO Genre (Name) VALUES ('Country');
INSERT INTO Genre (Name) VALUES ('Rap');
INSERT INTO Genre (Name) VALUES ('EDM');
INSERT INTO Genre (Name) VALUES ('Jazz');
INSERT INTO Genre (Name) VALUES ('Classical');
INSERT INTO Genre (Name) VALUES ('Instrumental');
INSERT INTO Genre (Name) VALUES ('Hip-hop');
INSERT INTO Genre (Name) VALUES ('Sleep');
INSERT INTO Genre (Name) VALUES ('Pop-Rock');
INSERT INTO Genre (Name) VALUES ('Pop-Alternative');
INSERT INTO Genre (Name) VALUES ('Pop-Country');
INSERT INTO Genre (Name) VALUES ('Pop-Rap');
INSERT INTO Genre (Name) VALUES ('Pop-EDM');
INSERT INTO Genre (Name) VALUES ('Pop-Jazz');
INSERT INTO Genre (Name) VALUES ('Pop-Classical');
INSERT INTO Genre (Name) VALUES ('Pop-Instrumental');
INSERT INTO Genre (Name) VALUES ('Pop-Hip-hop');

-- Table: LibraryBranch
CREATE TABLE LibraryBranch (BranchNo VARCHAR PRIMARY KEY, Address VARCHAR, Name VARCHAR);
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('1', '1 Hawthorne Way', 'First Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('2', '222 West Lane Avenue', 'Second Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('3', '12 High Street', 'Third Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('4', '2000 Leftward Avenue', 'Fourth Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('5', '3 Yahoo Street', 'Fifth Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('6', '4 Exciting Avenue', 'Sixth Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('7', '76 Rightward Street', 'Seventh Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('8', '888 Under Avenue', 'Eighth Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('9', '99 Weee Drive', 'Ninth Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('10', '1000 ThisIsGettingOld Street', 'Tenth Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('11', '500 Hawthorne Way', 'Eleventh Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('12', '1 West Lane Avenue', 'Twelfth Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('13', '6000 High Street', 'Thirteenth Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('14', '20 Leftward Avenue', 'Fourteenth Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('15', '368 Yahoo Street', 'Fifteenth Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('16', '423 Exciting Avenue', 'Sixteenth Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('17', '1076 Rightward Street', 'Seventeenth Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('18', '18 Under Avenue', 'Eighteenth Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('19', '9 Weee Drive', 'Nineteenth Branch');
INSERT INTO LibraryBranch (BranchNo, Address, Name) VALUES ('20', '2 ThisIsGettingOld Street', 'Twentieth Branch');

-- Table: LibraryPerson
CREATE TABLE LibraryPerson (
PersonID INTEGER PRIMARY KEY
REFERENCES Person (PersonID) ON DELETE CASCADE,
Address VARCHAR (30) NOT NULL,
Email VARCHAR (20) NOT NULL,
BranchNo INTEGER,
FOREIGN KEY (
PersonID
)
REFERENCES Person (PersonID),
FOREIGN KEY (
BranchNo
)
REFERENCES LibraryBranch (BranchNo)
);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (1, '1201 Twig Street, Columbus OH', 'p1234@gmail.com', NULL);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (2, '4522 Gregg Street, Columbus OH', 'q1234@gmail.com', NULL);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (3, '6222 Duch Street, Columbus OH', 'r1234@gmail.com', NULL);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (4, '1205 Benches Street, Columbus OH', 's1234@gmail.com', NULL);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (5, '3422 Godown Street, Columbus OH', 't1234@gmail.com', NULL);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (41, '1222 Branch Street, Columbus OH', 'a1234@gmail.com', 1);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (42, '8222 Tree Street, Columbus OH', 'b1234@gmail.com', 2);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (43, '4222 Wine Street, Columbus OH', 'c1234@gmail.com', 1);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (44, '2222 White Street, Columbus OH', 'd1234@gmail.com', 8);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (45, '7222 Bight Street, Columbus OH', 'e1234@gmail.com', 14);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (46, '4922 Cherry Street, Columbus OH', 'f1234@gmail.com', NULL);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (47, '2456 Bench Street, Columbus OH', 'g1234@gmail.com', NULL);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (48, '3122 Menard Street, Columbus OH', 'h1234@gmail.com', NULL);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (49, '1292 Hello Street, Columbus OH', 'i1234@gmail.com', NULL);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (50, '1892 Candy Street, Columbus OH', 'j1234@gmail.com', NULL);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (51, '9022 Heaven Street, Columbus OH', 'k1234@gmail.com', NULL);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (52, '9088 Woody Street, Columbus OH', 'l1234@gmail.com', NULL);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (53, '7822 Paper Street, Columbus OH', 'm1234@gmail.com', NULL);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (54, '1002 Dree Street,Columbus OH', 'n1234@gmail.com', NULL);
INSERT INTO LibraryPerson (PersonID, Address, Email, BranchNo) VALUES (55, '6022 Nood Street, Columbus OH', 'o1234@gmail.com', NULL);

-- Table: License
CREATE TABLE License (
ID INTEGER REFERENCES Loanable (ID) ON DELETE CASCADE
ON UPDATE CASCADE,
Owner VARCHAR,
ExpDate DATE,
LicenseNo VARCHAR PRIMARY KEY
);
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (21, 'A big company', 'Dec-31-2021', '1');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (32, 'A big company', 'Dec-31-2021', '2');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (43, 'A big company', 'Dec-31-2021', '3');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (54, 'A big company', 'Dec-31-2021', '4');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (15, 'A big company', 'Dec-31-2021', '5');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (26, 'A big company', 'Dec-31-2021', '6');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (37, 'A big company', 'Dec-31-2021', '7');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (48, 'A big company', 'Dec-31-2021', '8');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (59, 'A big company', 'Dec-31-2021', '9');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (60, 'A big company', 'Dec-31-2021', '10');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (31, 'A big company', 'Dec-31-2021', '11');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (42, 'A big company', 'Dec-31-2021', '12');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (53, 'A big company', 'Dec-31-2021', '13');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (24, 'A big company', 'Dec-31-2021', '14');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (35, 'A big company', 'Dec-31-2021', '15');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (46, 'A big company', 'Dec-31-2021', '16');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (57, 'A smaller company', 'Dec-31-2020', '17');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (28, 'A smaller company', 'Dec-31-2020', '18');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (39, 'A smaller company', 'Dec-31-2020', '19');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (40, 'A smaller company', 'Dec-31-2020', '20');
INSERT INTO License (ID, Owner, ExpDate, LicenseNo) VALUES (1, 'A very small company', 'Dec-31-2020', '21');

-- Table: Loanable
CREATE TABLE Loanable (
ID INTEGER PRIMARY KEY,
Name VARCHAR,
Year INTEGER,
CheckoutDate DATE,
PersonID INTEGER,
LibraryBranch INTEGER REFERENCES LibraryBranch (BranchNo) ON DELETE CASCADE
);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (1, 'The Best Album EVER', 2019, 'Dec-01-2019', 45, 1);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (2, 'Jesus is King', 2019, 'Dec-02-2019', 46, 1);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (3, 'Graduation', 2019, 'Dec-03-2019', 47, 1);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (4, 'My beautiful dark twisted fantasy', 2019, 'Dec-04-2019', 48, 2);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (5, 'Yeezus', 2019, 'Dec-05-2019', 49, 2);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (6, 'The life of Pablo', 2019, 'Dec-06-2019', 50, 1);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (7, 'Ye', 2019, NULL, NULL, 4);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (8, 'The college dropout', 2019, NULL, NULL, 6);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (9, '808s and heartbreak', 2019, 'Dec-09-2019', 45, 10);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (10, 'Late Registration', 2019, 'Dec-10-2019', 1, 12);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (11, 'Music to be murdered by', 2019, 'Dec-11-2019', 45, 1);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (12, 'Kamikaze', 2019, 'Dec-12-2019', 46, 1);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (13, 'Revival', 2019, 'Dec-13-2019', 5, 1);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (14, 'Recovery', 2019, 'Dec-14-2019', 3, 2);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (15, 'The Marshall Mathers LP', 2019, 'Dec-15-2019', 4, 2);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (16, 'Relapse', 2019, 'Dec-16-2019', 2, 11);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (17, 'Encore', 2019, NULL, NULL, 14);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (18, 'The Slim Shady LP', 2019, 'Dec-18-2019', NULL, 16);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (19, 'The Eminem show', 2019, 'Dec-19-2019', 53, 20);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (20, 'The Marshall Mathers LP 2', 2019, 'Dec-20-2019', 1, 12);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (21, 'Avengers: Infinity War', 2019, NULL, NULL, NULL);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (22, 'Forrest Gump', 2000, 'Apr-12-2019', 2, 1);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (23, 'Lord of the Rings: The Fellowship of the Ring', 2001, 'Jan-01-2020', 1, 2);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (24, 'Lord of the Rings: The Two Towers', 2005, 'Dec-31-2019', 5, 5);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (25, 'Lord of the Rings: The Return of the King', 2009, 'Jan-02-2020', 42, 7);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (26, 'Star Wars Episode I: The Phantom Menace', 2001, 'Feb-29-2020', 45, 8);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (27, 'Star Wars Episode II: The Attack of the Clones', 2003, 'Mar-01-2020', 45, 9);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (28, 'Star Wars Episode III: The Revenge of the Sith', 2005, 'Mar-02-2020', 46, 10);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (29, 'Star Wars Episode IV: A New Hope', 1977, 'Sep-05-2019', 50, 11);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (30, 'Star Wars Episode V: The Empire Strikes Back', 1982, NULL, NULL, NULL);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (31, 'Star Wars Episode VI: The Return of the Jedi', 1987, NULL, NULL, NULL);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (32, 'Star Wars Episode VII: The Force Awakens', 2016, NULL, NULL, NULL);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (33, 'Star Wars Episode VIII: The Last Jedi', 2018, NULL, NULL, NULL);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (34, 'Star Wars Episode IX: The Rise of Skywalker', 2019, NULL, NULL, NULL);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (35, 'Rogue One: A Star Wars Story', 2015, NULL, NULL, NULL);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (36, 'Solo: A Star Wars Story', 1987, NULL, NULL, NULL);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (37, 'Iron Man', 2008, NULL, NULL, NULL);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (38, 'The Incredible Hulk', 2008, NULL, NULL, NULL);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (39, 'Captain America: The First Avenger', 2010, NULL, NULL, NULL);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (40, 'Avengers', 2012, NULL, NULL, NULL);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (41, 'House of Leaves', 1990, 'Mar-04-2020', 41, 1);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (42, 'Great Gatsby', 1991, 'Mar-05-2020', 42, 1);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (43, 'Streetcar Named Desire', 1992, 'Mar-06-2020', 43, 2);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (44, 'Green Eggs and Ham', 1993, 'Mar-07-2020', 44, 4);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (45, 'War and Peace', 1994, 'Mar-08-2020', 45, 4);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (46, 'Burning Desire', 1995, 'Mar-09-2020', 46, 4);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (47, 'Softly Stirring Silence', 1996, 'Mar-10-2020', 47, 6);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (48, 'The Second Street', 1997, 'Mar-11-2020', 48, 6);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (49, 'Way Side Stories', 1998, 'Mar-12-2020', 49, 8);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (50, 'Twilight', 1999, NULL, NULL, 9);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (51, 'Alice in Wonderland', 1990, 'Mar-13-2020', 50, 10);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (52, 'Through the Looking Glass', 1991, 'Mar-14-2020', 51, 12);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (53, 'My Good Neighbor', 1992, 'Mar-15-2020', 52, 13);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (54, 'The States Farm', 1993, 'Mar-16-2020', 53, 14);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (55, 'Crash Course on Flying', 1994, 'Mar-04-2020', 54, 16);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (56, 'The Anatomy of Pigs', 1995, 'Mar-05-2020', 55, 17);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (57, 'One for All', 1996, 'Mar-04-2020', 41, 18);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (58, 'All for One', 1996, 'Mar-04-2020', 41, 18);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (59, 'The Spooky Door', 1997, 'Mar-05-2020', 42, 19);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (60, 'The Missing Book', 1990, NULL, NULL, 20);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (61, 'The Best Album EVER', 2019, NULL, NULL, 1);
INSERT INTO Loanable (ID, Name, Year, CheckoutDate, PersonID, LibraryBranch) VALUES (62, 'The Best Album EVER', 2019, NULL, NULL, 1);

-- Table: LoanableGenre
CREATE TABLE LoanableGenre (
Name VARCHAR REFERENCES Genre (Name),
ID REFERENCES Loanable (ID) ON DELETE CASCADE
);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Pop', 21);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Rock', 22);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Alternative', 23);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Country', 24);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Rap', 25);
INSERT INTO LoanableGenre (Name, ID) VALUES ('EDM', 26);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Jazz', 27);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Classical', 28);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Instrumental', 29);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Hip-hop', 30);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Sleep', 31);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Pop-Rock', 32);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Pop-Alternative', 33);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Pop-Country', 34);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Pop-Rap', 35);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Pop-EDM', 36);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Pop-Jazz', 37);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Pop-Classical', 38);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Pop-Instrumental', 39);
INSERT INTO LoanableGenre (Name, ID) VALUES ('Pop-Hip-hop', 40);

-- Table: Movie
CREATE TABLE Movie (
ID PRIMARY KEY
REFERENCES Loanable (ID) ON DELETE CASCADE,
Score INTEGER,
MaturityRating VARCHAR (4),
Length INTEGER,
DirectorID INTEGER REFERENCES Director (PersonID) ON DELETE CASCADE
);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (21, 7, 'PG13', 2, 21);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (22, 3, 'R', 1, 21);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (23, 3, 'R', 1, 21);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (24, 2, 'PG13', 1, 21);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (25, 2, 'PG', 2, 22);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (26, 8, 'PG', 1, 23);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (27, 6, 'PG', 2, 24);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (28, 6, 'PG13', 2, 25);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (29, 7, 'R', 2, 26);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (30, 7, 'R', 1, 27);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (31, 8, 'PG13', 1, 28);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (32, 8, 'R', 1, 29);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (33, 7, 'PG13', 1, 30);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (34, 4, 'PG', 2, 30);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (35, 3, 'R', 1, 31);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (36, 7, 'PG13', 2, 32);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (37, 8, 'PG', 2, 35);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (38, 7, 'PG13', 2, 40);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (39, 5, 'PG13', 1, 39);
INSERT INTO Movie (ID, Score, MaturityRating, Length, DirectorID) VALUES (40, 5, 'PG', 1, 39);

-- Table: MovieActor
CREATE TABLE MovieActor (
ActorID INTEGER REFERENCES Actor (PersonID) ON DELETE CASCADE,
MovieID INTEGER REFERENCES Movie (ID) ON DELETE CASCADE,
PRIMARY KEY (
ActorID,
MovieID
)
);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (21, 23);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (32, 26);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (32, 28);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (22, 24);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (23, 25);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (23, 29);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (23, 27);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (24, 30);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (28, 31);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (29, 31);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (30, 32);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (32, 33);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (33, 34);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (39, 40);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (39, 39);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (40, 37);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (31, 36);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (31, 35);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (34, 34);
INSERT INTO MovieActor (ActorID, MovieID) VALUES (36, 33);

-- Table: Patron
CREATE TABLE Patron (
PersonID INTEGER PRIMARY KEY
REFERENCES LibraryPerson (PersonID) ON DELETE CASCADE,
CardID CHAR (10) NOT NULL,
FOREIGN KEY (
PersonID
)
REFERENCES Person (PersonID)
);
INSERT INTO Patron (PersonID, CardID) VALUES (1, '123459080');
INSERT INTO Patron (PersonID, CardID) VALUES (2, '123096780');
INSERT INTO Patron (PersonID, CardID) VALUES (3, '123460780');
INSERT INTO Patron (PersonID, CardID) VALUES (4, '123406780');
INSERT INTO Patron (PersonID, CardID) VALUES (5, '123456060');
INSERT INTO Patron (PersonID, CardID) VALUES (41, '123456780');
INSERT INTO Patron (PersonID, CardID) VALUES (42, '133456780');
INSERT INTO Patron (PersonID, CardID) VALUES (43, '143456780');
INSERT INTO Patron (PersonID, CardID) VALUES (44, '153456780');
INSERT INTO Patron (PersonID, CardID) VALUES (45, '163456780');
INSERT INTO Patron (PersonID, CardID) VALUES (46, '173456780');
INSERT INTO Patron (PersonID, CardID) VALUES (47, '183456780');
INSERT INTO Patron (PersonID, CardID) VALUES (48, '193456780');
INSERT INTO Patron (PersonID, CardID) VALUES (49, '103456780');
INSERT INTO Patron (PersonID, CardID) VALUES (50, '113456780');
INSERT INTO Patron (PersonID, CardID) VALUES (51, '120456780');
INSERT INTO Patron (PersonID, CardID) VALUES (52, '121456780');
INSERT INTO Patron (PersonID, CardID) VALUES (53, '123256780');
INSERT INTO Patron (PersonID, CardID) VALUES (54, '123356780');
INSERT INTO Patron (PersonID, CardID) VALUES (55, '123096780');

-- Table: Person
CREATE TABLE Person
(
PersonID INTEGER PRIMARY KEY AUTOINCREMENT,
Name varchar(30) NOT NULL,
DOB Date,
Bio varchar(50)
);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (1, 'Tyler Fuerst', 'Apr-28-1999', 'Hello Test');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (2, 'Emma Fuerst', 'Jun-05-1998', 'Nursing Student');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (3, 'John Kennedy', 'Apr-02-1867', 'POTUS');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (4, 'Rihanna', 'Apr-28-1969', 'Singer lady');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (5, 'Joe Schmoe', 'Aug-25-1560', 'Completely average');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (6, 'Person Schmerson', 'Jan-10-1235', 'I am a very old person');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (7, 'Katy Perry', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (8, 'Gary the Snail', 'Sep-01-2020', NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (9, 'Michael Scott', NULL, 'Regional Manager of Dunder Mifflin Paper');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (10, 'Ash Ketchum', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (11, 'Emma Shoemaker', 'Jun-05-1998', 'Nursing Student');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (12, 'Dwight Schrute', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (13, 'Jim Halpert', NULL, 'Paper Salesman');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (14, 'Pamela Halpert', 'Jul-29-1972', 'Married to Jim Halpert; Office Administrator');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (15, 'Spongebob Squarepants', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (16, 'Patrick Star', NULL, 'I like Krabby Patties');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (17, 'Eugene Krabs', 'Feb-29-1960', 'Owner of the Krusty Krab');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (18, 'Snoop Lion', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (19, 'Beyonce', NULL, 'Singer-Songwriter');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (20, 'Kevin Malone', 'Nov-09-1973', NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (21, 'Surya Kukkapalli', 'Feb-17-1876', NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (22, 'Dwight Toot', NULL, 'Loves beans');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (23, 'Dwight Fruit', NULL, 'Fruitilicious');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (24, 'Dwight Loot', NULL, 'Likes lots of stuff, as his last name implies');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (25, 'Dwight Cute', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (26, 'Dwight Boot', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (27, 'Dwight Chute', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (28, 'Dwight Brute', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (29, 'Dwight Suit', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (30, 'Dwight Moot', NULL, 'Nihilist');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (31, 'Dwight Mute', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (32, 'Dwight Root', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (33, 'Dwight Hoot', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (34, 'Dwight Route', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (35, 'Michael Dot', NULL, 'Singular in drive');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (36, 'Michael Blot', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (37, 'Michael Bought', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (38, 'Michael Clot', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (39, 'Michael Fought', NULL, 'Once tried to fight a bear, but he lost');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (40, 'Michael Sought', NULL, NULL);
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (41, 'Michael Shot', 'Apr-29-1899', 'Shot and died');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (42, 'Michael Taught', 'Apr-29-1959', 'Beloved teacher');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (43, 'Michael Yacht', 'Apr-29-1969', 'Kinda Rich');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (44, 'Michael Knot', 'Apr-29-1979', 'Too convoluted a life to tell');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (45, 'Michael Not', 'Apr-29-1989', 'Died to soon');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (46, 'Michael Pot', 'Apr-29-1995', 'Marijuana activist');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (47, 'Michael Plot', 'Apr-29-1991', 'Aspiring actor');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (48, 'Michael Snot', 'Apr-25-1989', 'Achoo!');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (49, 'Michael Slot', 'Apr-28-1996', 'Addicted go gambling on slot machines');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (50, 'Michael Squat', 'Apr-28-1983', 'Never deadlifts');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (51, 'Michael Thought', 'Feb-17-1999', 'Now he purely acts on impulse');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (52, 'Michael Wrought', 'Apr-01-1999', 'April fools!t');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (53, 'Michael Train-of-thought', 'May-25-1901', 'Some say The Thinker was based off of him');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (54, 'Michael Montserrat', 'Feb-28-1969', 'Fancy man');
INSERT INTO Person (PersonID, Name, DOB, Bio) VALUES (55, 'Michael Ocelot', 'Apr-29-1999', 'Part human, part nocturnal cat');

-- Table: Track
CREATE TABLE Track (
ID INTEGER REFERENCES Album (ID) ON DELETE CASCADE,
Name VARCHAR,
Length INTEGER,
Date DATE,
PRIMARY KEY (
ID,
Name
)
);
INSERT INTO Track (ID, Name, Length, Date) VALUES (1, 'Someone you loved', 183, 'Jan-10-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (2, 'Old town road', 154, 'Jan-11-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (3, 'I dont care', 190, 'Jan-12-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (4, 'Bad guy', 161, 'Jan-13-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (5, 'Giant', 170, 'Jan-14-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (6, 'Sweet but psycho', 183, 'Jan-15-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (7, 'Vossi bop', 154, 'Jan-16-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (8, 'Dance monkey', 190, 'Jan-17-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (9, 'Dont call me up', 161, 'Jan-18-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (10, 'Senorita', 170, 'Jan-19-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (11, 'Piece of your heart', 183, 'Jan-20-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (12, 'Shotgun', 154, 'Jan-21-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (13, 'Location', 190, 'Jan-22-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (14, 'Hold me while you wait', 161, 'Jan-23-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (15, 'Sunflower', 170, 'Jan-24-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (16, '7 Rings', 183, 'Jan-25-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (17, 'Wow.', 154, 'Jan-26-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (18, 'Ladbroke grove', 190, 'Jan-27-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (19, 'Just you and I', 161, 'Jan-28-2019');
INSERT INTO Track (ID, Name, Length, Date) VALUES (20, 'Beautiful people', 170, 'Jan-29-2019');

-- Index: AlbumID
CREATE UNIQUE INDEX AlbumID ON Album (
ID ASC
);

-- Index: ArtistID
CREATE UNIQUE INDEX ArtistID ON Artist (
PersonID ASC
);

-- Index: AuthorID
CREATE UNIQUE INDEX AuthorID ON Author (
PersonID ASC
);

-- Index: BookID
CREATE UNIQUE INDEX BookID ON Audiobook (
ID ASC
);

-- Index: ChapterID
CREATE INDEX ChapterID ON Chapter (
ID ASC
);

-- Index: DirectorID
CREATE UNIQUE INDEX DirectorID ON Director (
PersonID ASC
);

-- Index: EmployeePersonID
CREATE UNIQUE INDEX EmployeePersonID ON Employee (
PersonID ASC
);

-- Index: LibraryPersonID
CREATE UNIQUE INDEX LibraryPersonID ON LibraryPerson (
PersonID
);

-- Index: LicenseID
CREATE INDEX LicenseID ON License (
ID ASC
);

-- Index: LoanableID
CREATE UNIQUE INDEX LoanableID ON Loanable (
ID ASC
);

-- Index: MovieID
CREATE UNIQUE INDEX MovieID ON Movie (
ID ASC
);

-- Index: PatronPersonID
CREATE UNIQUE INDEX PatronPersonID ON Patron (
PersonID ASC
);

-- Index: PersonID
CREATE UNIQUE INDEX PersonID ON Actor (
PersonID ASC
);

-- Index: PersonPersonID
CREATE UNIQUE INDEX PersonPersonID ON Person (
PersonID ASC
);

-- Index: TrackID
CREATE INDEX TrackID ON Track (
ID ASC
);

-- View: MoviesCast
CREATE VIEW MoviesCast AS
SELECT DISTINCT Loanable.Name AS LoanableName, Person.Name AS PersonName
FROM Person,
Loanable,
Director,
Actor,
Movie,
MovieActor
WHERE Loanable.ID = Movie.ID AND
(Movie.DirectorID = Person.PersonID OR
(Person.PersonID = MovieActor.ActorID AND
Movie.ID = MovieActor.MovieID) )
ORDER BY Loanable.Name ASC;

-- View: PatronAndTheirLoans
CREATE VIEW PatronAndTheirLoans AS
SELECT Person.Name,
Loanable.Name,
Loanable.CheckoutDate
FROM Person,
Loanable
WHERE Loanable.PersonID = Person.PersonID
ORDER BY Person.Name ASC;

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
