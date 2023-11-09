CREATE TABLE Writer
  (Height	NUMBER(3,2),
   Birthday	DATE,
   Trademark	VARCHAR2(100),
   Nickname	VARCHAR2(30),
   Name		VARCHAR2(40),
   CONSTRAINT writer_name_pk PRIMARY KEY (Name)
);

CREATE TABLE Actor
  (Height	NUMBER(3,2),
   Birthday	DATE,
   Trademark	VARCHAR2(100),
   Nickname	VARCHAR2(30),
   Name		VARCHAR2(40),
   CONSTRAINT actor_name_pk PRIMARY KEY (Name)
);

CREATE TABLE Director
  (Height	NUMBER(3,2),
   Birthday	DATE,
   Trademark	VARCHAR2(100),
   Nickname	VARCHAR2(30),
   Name		VARCHAR2(40),
   CONSTRAINT director_name_pk PRIMARY KEY (Name)
);


CREATE TABLE TV_show
  (Id		CHAR(9),
   Title	VARCHAR2(50),
   Age_Rating	VARCHAR2(5),
   Seasons	NUMBER(2),
   Year		NUMBER(4),
   Storyline	VARCHAR2(200),
   CONSTRAINT tv_show_id_pk PRIMARY KEY (Id)
);

CREATE TABLE Movie
  (Id		CHAR(9),
   Title	VARCHAR2(50),
   Age_Rating	VARCHAR2(5),
   Runtime	NUMBER(3),
   Year		NUMBER(4),
   Storyline	VARCHAR2(200),
   Description  VARCHAR2(150),
   Metascore	CHAR(3),
   CONSTRAINT movie_id_pk PRIMARY KEY (Id)
);

CREATE TABLE TV_write
  (Name		VARCHAR2(40),
   Id		CHAR(9),
   CONSTRAINT 	tv_write_nameid_pk PRIMARY KEY (Name, Id)
);

CREATE TABLE TV_act
  (Name		VARCHAR2(40),
   Id		CHAR(9),
   CONSTRAINT 	tv_act_nameid_pk PRIMARY KEY (Name, Id)
);

CREATE TABLE TV_direct
  (Name		VARCHAR2(40),
   Id		CHAR(9),
   CONSTRAINT 	tv_direct_nameid_pk PRIMARY KEY (Name, Id)
);     

CREATE TABLE MV_write
  (Name		VARCHAR2(40),
   Id		CHAR(9),
   CONSTRAINT 	mv_write_nameid_pk PRIMARY KEY (Name, Id)
);

CREATE TABLE MV_act
  (Name		VARCHAR2(40),
   Id		CHAR(9),
   CONSTRAINT 	mv_act_nameid_pk PRIMARY KEY (Name, Id)
);

CREATE TABLE MV_direct
  (Name		VARCHAR2(40),
   Id		CHAR(9),
   CONSTRAINT 	mv_direct_nameid_pk PRIMARY KEY (Name, Id)
);

CREATE TABLE Movie_awards
  (Id		CHAR(9),
   Mv_awards	VARCHAR2(50),
   CONSTRAINT	mv_awards_idawards_pk PRIMARY KEY (Id, Mv_awards)
);

CREATE TABLE Tv_show_awards
  (Id		CHAR(9),
   Tv_awards	VARCHAR2(50),
   CONSTRAINT	tv_awards_idawards_pk PRIMARY KEY (Id, Tv_awards)
);

CREATE TABLE Mv_genres
  (Id		CHAR(9),
   Mv_genre	VARCHAR2(20),
   CONSTRAINT	mv_genres_idgenres_pk PRIMARY KEY (Id, Mv_genre)
);

CREATE TABLE Production_company
  (Id		CHAR(9),
   Company	VARCHAR2(50),
   CONSTRAINT	production_idcompany_pk PRIMARY KEY (Id, Company)
);

CREATE TABLE TV_Reviews
  (Id		CHAR(9),
   Username	VARCHAR2(25),
   Title	VARCHAR2(25),
   Date		DATE,
   Critics	VARCHAR(1),
   Account_date	DATE,
   CONSTRAINT tv_reviews_iduser_pk PRIMARY KEY (Id, Username)
);

CREATE TABLE MV_Reviews
  (Id		CHAR(9),
   Username	VARCHAR2(25),
   Title	VARCHAR2(25),
   Date		DATE,
   Critics	VARCHAR2(1),
   Metacritic	VARCHAR2(1),
   Account_date	DATE,
   CONSTRAINT mv_reviews_iduser_pk PRIMARY KEY (Id, Username)
);





     